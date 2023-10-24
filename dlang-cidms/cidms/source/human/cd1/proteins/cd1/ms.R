#!/usr/bin/r

# /********************************************************************************************************************
# Although chemically unnamed, features are reliably tracked based on mass values and represent countable data points 
# that can answer overarching questions. Do CD1 proteins capture few or many distinct lipids? Do the four CD1 protein 
# types capture overlapping or distinct lipid profiles? Answering other questions required chemical naming, so collision-induced 
# dissociation (CID)-MS (Figure S2) identified lipids in the second stage of analysis (Figure 2).
# ************************************************************************************************************************/
x <- 1:512
n <- 1:512
z <- 1:512

details <- formalArgs(call)
cidmsProtein <- abs(x)
cd1Protein <- cos(x)
among <- sin(x)
dlist <- args(name = "matrix")
dlist.back <- rnorm(n, mean = 0, sd = 1)
dlist.clear <- 0:512
dlist.empty <- " "
dlist.front <- end(x)
dlist.insertAfter <- sort(x, decreasing = FALSE)
dlist.insertBack <- sort(x, decreasing = FALSE)
dlist.insertBefore <- sort(x, decreasing = FALSE)
dlist.insertFront <- sort(x, decreasing = FALSE)
dlist.linearRemove <- 0:512
dlist.linearRemoveElement <- 0:512
dlist.opBinary <- 0:11
dlist.opEquals <- 0:1
dlist.opAssign <- readline(prompt = "ms:>")
dlist.opSlice <- line(x, y = NULL, iter = 0) 
dlist.popFirstOf <- polyroot(z)
dlist.stuff <- 1:512
dlist.values <- 1:2325
dlist.range <- 0:512
dlist.t <- 0:512

