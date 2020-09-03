# BOOTSTRAPPING TYPE II ERRORS
# Examine Type II Errors
# as a function of sample size

# load data and helper functions
source( "https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/lectures/loop-example.R" )
head( d )                       # data frame with X and Y 
get_sample_slope( d, n=10 )     # returns a single value
test_for_null_slope( d, n=10 )  # returns a one-row data frame

## EXAMINE SLOPES
## sample size = 10


### CONSTRUCTOR EXAMPLES

# always define constructors outside the loop 

slopes <- NULL  # collector vector



## BOOKSHELF CONSTRUCTOR
# [ 1 ] <- "a"
# [ 2 ] <- "b"
# [ 3 ] <- "c"

slopes[ i ] <- b1 


slopes <- NULL  # collector vector 

for( i in 1:1000 )  # iterator i
{

  b1 <- get_sample_slope( d, n=10 )
  slopes[ i ] <- b1   
 
}






# APPEND CONSTRUCTOR
# append adds something to the end of a vector

x <- 1:10
c( x, 44 )

slopes <- c( slopes, b1 )




### ANALYSIS OF SALES BY ZIP CODE
# d database of sales
# type = books, gardening, tech
# id
# zip
# product.id
# cost

ave.cost.per.zip <- NULL  # collector vector

all.zips <- c( 55246, 23652, 77392, 55246 )
# only want to analyze each zip code once
unique.zips <- unique( all.zips )

loop.count <- 1

for( i in unique.zips )  # iterator i
{
  d.sub <- filter( type="books", zip == i  )
  ave.cost <- mean( d.sub$cost ) 

  ave.cost.per.zip[ loop.count  ] <-   ave.cost 
  ave.cost.per.zip <- c( ave.cost.per.zip, ave.cost )

  loop.count <- loop.count + 1
 
}









### DOUBLE ITERATOR EXAMPLE

# edge scenario analysis for monty hall
#
# how many times will the sample function
# break in the game because we try to take
# a random draw from a single value:
#
# sample( 3, size=1 )
#
# instead of from a vector of values:
#
# sample( c(1,3), size=1 )

# This can only occur when:
# (1) We select a goat in the first round 
# (2) The remaining door must be door 2 or 3
#
# if the last door is one sample( 1, size=1 ) still works


# Outer loop represents the state of the game
# Inner loop represents the player draw
# Each scenario is some combination of i and j


for( i in 1:3 )
{
  for( j in 1:3 )
  {
     # pseudocode to examine if sample will break
     game.i.j <- scenario[ i , j ] 
     condition.01 <- length( doors ) < 2
     condition.02 <- door != 1
     sample.breaks <- condition.01 & condition.02
  }
}








### LIST CONSTRUCTORS
# double bookshelf
# [[ 1 ]] <- "a"
# [[ 2 ]] <- "b"
# [[ 3 ]] <- "c"


models <- list() # collector vector 



for( k in c("A","B","Z") )  # iterator i
{

  m <- lm( y ~ x, data=d )
  models[[ i ]] <- m  
 
}












# descriptives from 10,000 random draws, sample size 10

head( slopes )
[1] 2.246041 3.979462 1.714822 4.689032 1.763237 3.107451

summary( slopes )  
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  -2.194   1.596   2.176   2.088   2.600   4.868


summary( slopes )  
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  -2.194   1.596   2.176   2.088   2.600   4.868

hist( slopes, breaks=25, col="gray20", border="white" )

## EXAMINE CONFIDENCE INTERVALS
## sample size = 10

# build the
# results data frame 
# using row binding


results <- NULL

for( i in 1:50 )
{

  null.slope.test <- test_for_null_slope( d, n=10 )
  results <- rbind( results, null.slope.test )

}


head( results )

# confidence intervals from 50 draws, sample size 10

#            b1 ci.b1.lower ci.b1.upper null.slope
# x  -0.9783359  -4.5757086    2.619037       TRUE
# x1  2.3897431   0.4295063    4.349980      FALSE
# x2  2.0781628  -0.6677106    4.824036       TRUE
# x3  2.9178206   0.7080918    5.127549      FALSE
# x4  2.3702949   0.5238930    4.216697      FALSE
# x5  1.9701996   0.5513491    3.389050      FALSE

plot_ci( df=results )





feed_pig <- function( weight )
{  weight + 1 }


pig.weight <- 100
old.weight <- pig.weight

loop.count <- 1

while( pig.weight < 110 )
{

  new.weight <- feed_pig( pig.weight )
  old.weight <- c( old.weight, new.weight )
  pig.weight <- new.weight
  print( pig.weight )

}



loop.count <- 1

while( ! at.center(tootsie.loop) )
{

  tootsie.pop <- lick( tootsie.pop )
  loop.count <- loop.count + 1

}




sell_pig()




cash <- 10  
results <- NULL
count <- 1  

while( cash > 0 )
{
  cash <- cash +   
    sample( c(-1,0,1), size=1 )  
  results[ count ] <- cash  
  count <- count + 1  

  if( count > 100000 )
  { break } 
}

results











