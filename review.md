---
layout: default
---

<div class = "uk-container uk-container-small">
  
<br><br>

# Review Sessions 

Live review sessions will be held each week in order to: 

* Discuss solutions to labs from the previous week 
* Introduce new topics 
* Answer questions on the the current week's lab 


<br> 
<hr>
<br>


> **Wednesdays**    
> **4pm AZ time** 

<a href='https://asu.zoom.us/j/93504639301' target=""> <button class="zoom">JOIN ZOOM MEETING</button></a>

<br>

> **Add to your calendar:** <a target="_blank" href="https://calendar.google.com/event?action=TEMPLATE&amp;tmeid=N2RmZWkwYzg3MWJ1YW5hYjdvZHBndTVwdDJfMjAyMDA4MjZUMjMwMDAwWiBqZGxlY3lAbQ&amp;tmsrc=jdlecy%40gmail.com&amp;scp=ALL"><img border="0" src="https://www.google.com/calendar/images/ext/gc_button1_en.gif"></a>


<br> 
<hr>
<br>


To make the best use of sessions I recommend starting labs ahead of time so that you can come with questions. 

For those that cannot attend recordings of each session will be posted below. 

Feel free to schedule virtual office hours as well.   

<br> 
<hr>
<br>
<br>



## Week 1 - Wed Aug 26
  
<p align="center">
  <a href="https://asu.zoom.us/rec/share/1Z1FMbXCyXxLfYnCwUePVZUMEIToaaa813QX8vNbmUyHem5oOERd-dJXXY93Ahd8">
  <img width="300" src="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/assets/img/play-video-icon2.png">
  <a>
  <br> Passcode: <b>?wsk2Xx1</b>
    
  <br>

  <a class="uk-button uk-button-default" href="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/review-sessions/week-01-control-structures.R" target="_blank">SAMPLE CODE</a>

  <br>

  <a class="uk-button uk-button-default" href="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/review-sessions/week-01-control-structures.Rhistory" target="_blank">SESSION CODE</a>

</p>


<br>
<br>
<hr>
<br>
<br>


## Week 2 - Wed Sept 2
  
<p align="center">
  <a href="https://asu.zoom.us/rec/play/-CY8RvMAX2o0b3QC8-3auhBWGtvew9ITG-ygr8sSMDu1fZttzcu498CS6272geMX0wmElJgYDtg20Srr.nvqAQY5_OmBqFsaN?continueMode=true">
  <img width="300" src="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/assets/img/play-video-icon2.png">
  <a>
  <br> Passcode: <b>?#7z@Hwq</b>
    

  <br>

  <a class="uk-button uk-button-default" href="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/review-sessions/week-02-loops.R" target="_blank">SAMPLE CODE</a>

  <br>

  <a class="uk-button uk-button-default" href="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/review-sessions/week-02-loops.Rhistory" target="_blank">SESSION CODE</a>
</p>


<br>
![](../assets/img/scenarios/png)
<br>
<br>
![](https://raw.githubusercontent.com/lecy/regression-simulations/master/GIFS/confidence-interval-of-slope.gif)
<br>

```r  

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


slopes <- NULL  # collector vector 

for( i in 1:1000 )  # iterator i
{

  b1 <- get_sample_slope( d, n=10 )
  slopes[ i ] <- b1   
 
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

``` 





<br>
<br>
<hr>
<br>
<br>





## Week 3
  
<p align="center">
  <a href="https://asu.zoom.us/rec/play/-S4BOG1ifULrvawLY-5NNi7Ri58kZM9M6j1h95jJJzdCg-6idY0TZRkWAkmegIEB8HtO8e7lwA6Y8Zk.jBrxYuoVUBZ046Ql?continueMode=true">
  <img width="300" src="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/assets/img/play-video-icon2.png">
  <a>
  <br> Passcode: <b>aAtw83!V</b>
    
  <br>

  <a class="uk-button uk-button-default" href="https://www.dropbox.com/s/2jvyun5kunryinj/Examples.R?dl=0">SAMPLE CODE</a>

  <br>

  <a class="uk-button uk-button-default" href="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/review-sessions/week-03-regular-expressions.Rhistory">SESSION CODE</a>

</p>


<br>
<br>
<hr>
<br>
<br>


## Week 4
  
<p align="center">
  <a href="">
  <img width="300" src="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/assets/img/play-video-icon2.png">
  <a>
  <br> Passcode: <b></b>
    
  <br>

  <a class="uk-button uk-button-default" href="">SAMPLE CODE</a>

  <br>

  <a class="uk-button uk-button-default" href="">SESSION CODE</a>

</p>


<br>
<br>
<hr>
<br>
<br>


## Week 5
  
<p align="center">
  <a href="">
  <img width="300" src="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/assets/img/play-video-icon2.png">
  <a>
  <br> Passcode: <b></b>
    
  <br>

  <a class="uk-button uk-button-default" href="">SAMPLE CODE</a>

  <br>

  <a class="uk-button uk-button-default" href="">SESSION CODE</a>

</p>


<br>
<br>
<hr>
<br>
<br>



## Week 6
  
<p align="center">
  <a href="">
  <img width="300" src="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/assets/img/play-video-icon2.png">
  <a>
  <br> Passcode: <b></b>
    
  <br>

  <a class="uk-button uk-button-default" href="">SAMPLE CODE</a>

  <br>

  <a class="uk-button uk-button-default" href="">SESSION CODE</a>

</p>


<br>
<br>
<hr>
<br>
<br>





## Week 7
  
<p align="center">
  <a href="">
  <img width="300" src="https://raw.githubusercontent.com/DS4PS/cpp-527-fall-2020/master/assets/img/play-video-icon2.png">
  <a>
  <br> Passcode: <b></b>
    
  <br>

  <a class="uk-button uk-button-default" href="">SAMPLE CODE</a>

  <br>

  <a class="uk-button uk-button-default" href="">SESSION CODE</a>

</p>


<br>
<br>
<hr>
<br>
<br>


</div>

<br> 
<br> 




<style>
.zoom {
  background-color: #008CBA; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 4px;
}
</style>

