# A set of R functions I frequently use

get_kelly_colors = function(n=20, rand=F, seed=10) {
  MAX = 20  # there are 20 colors here
  
  colors = c(rgb(255,179,0,max=255),
             rgb(128,62,117,max=255),
             rgb(255,104,0,max=255),
             rgb(166,189,215,max=255),
             rgb(193,0,32,max=255),
             rgb(206,162,98,max=255),
             rgb(129,112,102,max=255),
             rgb(0,125,52,max=255),
             rgb(246,118,142,max=255),
             rgb(0,83,138,max=255),
             rgb(225,122,92,max=255),
             rgb(83,55,122,max=255),
             rgb(255,142,0,max=255),
             rgb(179,40,81,max=255),
             rgb(244,200,0,max=255),
             rgb(127,24,13,max=255),
             rgb(147,170,0,max=255),
             rgb(89,51,21,max=255),
             rgb(241,58,19,max=255),
             rgb(35,44,22,max=255)
  )
  
  if ( rand == T) {
    set.seed(seed)
    to_keep = sample(1:MAX, n)
  }
  else {
    to_keep = 1:n
  }
  
  return(colors[to_keep])
}


get_primary_colors = function(n=26) {
  require(colorRamps)
  # there are 26 optional colors here
  
  MAX = 26  # the number of primary.colors
  if ( n > MAX) {
    stop("Trying to get more than 26 colors.  n must be < 26")
  }
  
  return(primary.colors()[1:n])
}

