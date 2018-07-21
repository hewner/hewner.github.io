---
author: phewner
comments: true
date: 2009-12-14 22:48:04+00:00
layout: post
permalink: /2009/12/14/attaching-files-to-your-pdfs/
slug: attaching-files-to-your-pdfs
title: Attaching files to your PDFs
wordpress_id: 108
categories:
- Programming Stuff
---

One of the things that I don't like about LaTeX is that the thing you distribute - usually a PDF - is not the same thing you edit.  This means that if you ever lose the source files, you can't rely on just redownloading the version you posted on your website or emailed to your friend or whatever.  I keep my LaTeX files in a backed-up source control system, but still I worry.

But I was pleased to discover that PDF files actually supports attachments, so there's really no reason for me to ever distribute PDFs without the accompanying source ever again.  With [pdftk](http://www.accesspdf.com/pdftk/), attaching a files is as simple as:

`
pdftk source.pdf attach_files source.tex source.bbl  output output.pdf
`

I really wish that pdflatex had a flag to do this for me, especially since that way all my weird styles and other auxiliary files could come along for the ride easily.  But a quick shell script should suffice for my use case easily enough.
