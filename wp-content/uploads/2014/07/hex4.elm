import Mouse
import Maybe
import Dict 
import Random
import Graphics.Input (Input, input, button)

numbers : Input Int
numbers = input 42

hexside = 60
intersectRadius = 13
centerDist = 1.732*hexside
roadWidth = hexside*0.7
roadHeight = 10

type LocalPoint = (Float, Float)
type HexCoord = (Int, Int, Int)
data Resource = Wheat | Stone | Brick | Wood | Sheep | Wasteland | Water
type Land = {resource : Resource, number : Maybe Int}
type City = {player : Maybe Color}
type Road = {player : Maybe Color}
data Graphical = Hex HexCoord | Intersect (HexCoord, HexCoord, HexCoord) | Edge (HexCoord,HexCoord)
data GameState = Initializing | StartPosCity Int | StartPosRoad Int

hexAdd : HexCoord -> HexCoord -> HexCoord
hexAdd (a,b,c) (a2,b2,c2) = (a+a2,b+b2,c+c2)

canonHex : HexCoord -> Graphical
canonHex hex = Hex hex

canonIntersect : (HexCoord, HexCoord, HexCoord) -> Graphical
canonIntersect (a,b,c) =
    let unsortedList = [a,b,c]
        list = sort unsortedList
    in Intersect (head list,head (tail list), last list) 

canonEdge : (HexCoord,HexCoord) -> Graphical
canonEdge (a,b) =
    if b > a then Edge (a,b) else Edge (b,a)

toColor resource = case resource of
                     Wheat -> yellow
                     Stone -> gray
                     Brick -> red
                     Wood -> brown
                     Sheep -> green
                     Wasteland -> black
                     Water -> blue

toLocal : HexCoord -> LocalPoint
toLocal (x,y,z) =
    let hstep = (6/4)*hexside
        vstep = centerDist/2
    in ((toFloat x)*hstep, (toFloat y)*vstep - (toFloat z)*vstep)

toLocalIntersect : (HexCoord, HexCoord, HexCoord) -> LocalPoint
toLocalIntersect (a,b,c) =
    let (x1, y1) = toLocal a
        (x2, y2) = toLocal b
        (x3, y3) = toLocal c
    in ((x1+x2+x3)/3, (y1 + y2 + y3)/3)

toLocalEdge : (HexCoord, HexCoord) -> LocalPoint
toLocalEdge (a,b) =
    let (x1, y1) = toLocal a
        (x2, y2) = toLocal b
    in ((x1+x2)/2,(y1+y2)/2)

edgeRotation : (HexCoord, HexCoord) -> Float
edgeRotation (a,b) =
    let (x1, y1) = toLocal a
        (x2, y2) = toLocal b
    in (atan2 (y2 - y1) (x2 - x1)) + pi/2


--arctan y/x
toFormGraphical : Model -> Graphical -> [Form]
toFormGraphical model graph = 
    case graph of
      Hex coord -> map (move (toLocal coord)) [(filled (toColor (hexGet coord model).resource) (ngon 6 hexside)), toForm (maybe (centered (toText "")) asText (hexGet coord model).number)]
      Intersect coord  -> maybe [] (\color -> [move (toLocalIntersect coord) (filled color (circle intersectRadius))]) (intersectGet coord model).player
      Edge coord -> maybe [] (\color -> [move (toLocalEdge coord) (rotate (edgeRotation coord) (filled color (rect roadWidth roadHeight)))]) (edgeGet coord model).player

mouseToXY : (Int, Int) -> LocalPoint
mouseToXY (mouseX, mouseY) = (toFloat mouseX - 500.0, 500.0 - toFloat mouseY)

intersectsCentralHex (x, y) = 
    let edgeLine = -(abs x)*1.732 + centerDist
        belowEdgeline = (abs y) < edgeLine
        belowTop = (abs y) < (centerDist/2)
    in belowEdgeline && belowTop

dist : LocalPoint -> LocalPoint -> Float
dist (x1, y1) (x2, y2) = sqrt ((x1-x2)^2 + (y1-y2)^2)

rotatePointAroundOrigin (x,y) th = (x * (cos th) + y * (sin th), -x * (sin th) + y * (cos th)) 
withinRectAtOrgin (x, y) = abs(x) <= roadWidth/2 && abs(y) <= roadHeight/2

intersectsGraphical : LocalPoint -> Graphical -> Bool
intersectsGraphical (x,y) graph = 
    case graph of  
      Hex coord -> let (hexx,hexy) = toLocal coord
                   in intersectsCentralHex (x - hexx, y - hexy)
      Intersect coord -> (dist (toLocalIntersect coord) (x, y)) < intersectRadius
      Edge coord -> let (centerx, centery) = toLocalEdge coord 
                        (rotx, roty) = rotatePointAroundOrigin (x - centerx,y - centery) (edgeRotation coord) 
                    in withinRectAtOrgin (rotx, roty)

hoverForGraphical : Graphical -> Form
hoverForGraphical graph = 
    let outline = {defaultLine | width <- 2, dashing <- [5,5]}
    in case graph of
         Hex coord -> move (toLocal coord) (outlined outline (ngon 6 hexside))
         Intersect coord -> move (toLocalIntersect coord) (outlined outline (circle intersectRadius))
         Edge coord -> move (toLocalEdge coord) (rotate (edgeRotation coord) (outlined outline (rect roadWidth roadHeight)))
 
colorIfIntersected : (Int, Int) -> Graphical -> Graphical
colorIfIntersected mouse graph = graph

type Model = {hexes: Dict.Dict HexCoord Land,
              intersects: Dict.Dict (HexCoord,HexCoord,HexCoord) City,
              edges: Dict.Dict (HexCoord, HexCoord) Road,
              state : GameState,
              player : Int,
              playerColors : [Color]
}

hexGet key model =
    Dict.getOrFail key model.hexes

intersectGet key model =
    Dict.getOrFail key model.intersects

edgeGet key model =
    Dict.getOrFail key model.edges


allGraphical model =
    let hexes = map canonHex (Dict.keys model.hexes)
        intersects = map canonIntersect (Dict.keys model.intersects)
        edges = map canonEdge (Dict.keys model.edges)
    in intersects ++ edges ++ hexes

generateHexes : Int -> [Resource] -> [Int] -> [(HexCoord, Land)]
generateHexes maxDistance resourceTypes resourceNums =
    let range = [-maxDistance..maxDistance]
        mag (x,y,z) = maximum (map abs [x,y,z])
        coords = concatMap (\x -> map (\y -> (x,y,-(x+y))) range) range
        filteredByDist = filter (\coord -> (mag coord) <= maxDistance) coords
        (waterCoords,nonwaterCoords) = partition (\coord -> (mag coord) == maxDistance) filteredByDist
        water = map (\coord -> (coord, {resource=Water, number=Nothing})) waterCoords
        nonwater = zip nonwaterCoords resourceTypes
        ([(wastelandCoord,wastelandR)],nonwastelandPairs) = partition (\(coord,r) -> r == Wasteland) nonwater
        nonwastelandTriples = zip nonwastelandPairs resourceNums
        nonwasteland = map ( \((coord,r),num) -> (coord, {resource=r,number=Just num})) nonwastelandTriples
    in nonwasteland ++ water ++ [(wastelandCoord, {resource=Wasteland, number=Nothing})]


adjacentOffsets = [(0,1,-1), (1,0,-1),(1,-1,0),(0,-1,1),(-1,0,1),(-1,1,0)]

generateIntersectsFor : HexCoord -> [(HexCoord,HexCoord,HexCoord)]
generateIntersectsFor center =
    let coords = map (hexAdd center) adjacentOffsets
        justCoords intersect = case intersect of Intersect coord -> coord
        intersectForCoords currentCoords =
            case currentCoords of
              first::second::rest -> (canonIntersect (first,second,center)) :: (intersectForCoords (second::rest))
              [last] -> [canonIntersect ((head coords),last,center)]
    in map justCoords (intersectForCoords coords)

generateEdgesFor : HexCoord -> [(HexCoord,HexCoord)]
generateEdgesFor center =
    let justCoords edge = case edge of Edge coord -> coord
    in map (\x -> justCoords (canonEdge (center, (hexAdd center x)))) adjacentOffsets

startingModel randomNums = 
    let resourceTypes = [Wasteland, Brick, Stone, Sheep, Wood, Wheat, Brick, Stone, Sheep, Wood, Wheat, Brick, Stone, Sheep, Wood, Wheat, Wood, Sheep, Brick]
        numbers = [2,3,3,4,4,5,5,6,6,8,8,9,9,10,10,11,11,12]
        hexMap = Dict.fromList (generateHexes 3 (randomizeList (take 19 randomNums) resourceTypes) (randomizeList (drop 19 randomNums) numbers))
        nonWaterCoords = filter (\hex -> not ((Dict.getOrFail hex hexMap).resource == Water)) (Dict.keys hexMap)
        intersectsWithDups = concatMap generateIntersectsFor nonWaterCoords 
        intersectMap = Dict.fromList (map (\i -> (i,{player=Nothing})) intersectsWithDups)
        edges = concatMap generateEdgesFor nonWaterCoords
        edgeMap = Dict.fromList (map (\e -> (e,{player=Nothing})) edges)
        colors = [red,green,blue,white]
    in {hexes = hexMap, intersects = intersectMap, edges = edgeMap, state = StartPosCity 1, playerColors = colors, player = 0}

findHover : Model -> (Int, Int) -> Maybe Graphical
findHover model mouse = 
    let localMouse = mouseToXY mouse
        hoveredItems = filter (intersectsGraphical localMouse) (allGraphical model)
    in if isEmpty hoveredItems then Nothing 
       else Just (head hoveredItems)

updateIntersect : (HexCoord,HexCoord,HexCoord) -> Model -> (City -> City) -> Model
updateIntersect coord model update =
    let newDict = Dict.update coord (\maybeCity -> case maybeCity of
                                                     Nothing -> Nothing
                                                     Just city -> Just (update city)) model.intersects
    in {model | intersects <- newDict}

updateEdge : (HexCoord,HexCoord) -> Model -> (Road -> Road) -> Model
updateEdge coord model update =
    let newDict = Dict.update coord (\maybeRoad -> case maybeRoad of
                                                     Nothing -> Nothing
                                                     Just road -> Just (update road)) model.edges
    in {model | edges <- newDict}


randomizeList: [Float] -> [a] -> [a]
randomizeList randomizer list =
    let tuples = zip randomizer list
        shuffled = sortBy (\(a,b) -> a) tuples
    in map (\(a,b) -> b) shuffled

type ModelInput = {initialRandom:[Float], clickXY:(Int,Int)}

playerNumber : Input Int
playerNumber = input 0

initialRandomSignal = Random.floatList (constant 37)
clickXYSignal = sampleOn Mouse.clicks Mouse.position

makeModelInput:[Float] -> (Int,Int) -> ModelInput
makeModelInput ir xy = {initialRandom=ir,clickXY=xy} 

modelInputSignal : Signal ModelInput
modelInputSignal = lift2 makeModelInput initialRandomSignal clickXYSignal



update : ModelInput -> Model -> Model
update input model =
    case model.state of
      Initializing -> startingModel input.initialRandom
      StartPosCity pass -> let hover = findHover model input.clickXY 
                               graphicClick graph =
                                   case graph of
                                     Hex coord -> model
                                     Intersect coord -> updateIntersect coord model (\city -> {city | player<-Just red})
                                     Edge coord -> updateEdge coord model (\road -> {road | player <-Just red})
                           in maybe model graphicClick hover

render : Model -> (Int, Int) -> Element
render model mouse =
    case model.state of
      Initializing -> flow right [ button playerNumber.handle 2 "2 Players"
                                 , button playerNumber.handle 3 "3 Players"
                                 , button playerNumber.handle 4 "4 Players"
                                 ]
      _ -> let currentHover = maybe [] (\x -> [(hoverForGraphical x)]) (findHover model mouse) 
           in collage 1000 1000 ((concatMap (toFormGraphical model) (reverse (allGraphical model))) ++ currentHover)





modelSignal : Signal Model
modelSignal = foldp update {hexes=Dict.empty, intersects=Dict.empty, edges=Dict.empty, state=Initializing, player=0, playerColors=[]} modelInputSignal
main = lift2 render modelSignal Mouse.position