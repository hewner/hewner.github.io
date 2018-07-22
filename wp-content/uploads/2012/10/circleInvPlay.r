q = (1:8)*pi/4
q2 = complex(argument=q, modulus=1) + complex(real=2, imaginary=1)
q3 = 1/Conj(q2)
plot(Re(c(q2,q3)),Im(c(q2,q3)))
