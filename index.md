---
title: "Course 9 - Week 4 Project slides"
author: "Robert Deprizio"
date: "11/11/2018"
output:
  ioslides_presentation: default
  slidy_presentation: default
---

## Introduction

This app was designed to calculate the probability that a person taking a multiple choice test could pass strictly by randomly guessing. 

The calculation that runs in the backgrouund, which uses the binomial distribution, is based on parameters that the user specifies by the 3 slider inputs and is then passed to server code script. Further details can be found in the readMe file on my git hub link below if needed:



--- .class #id 

## Parameters

The parameters used in the calculation are inputted by the user when they specify the following 3 slider values:

- Number of multiple choice questions on the test 
- Number of choices for each question 
- Passing score/percentage required 

---

## R code: Front End of App
The code below is a snippet of one of the sliders that allow the user to select the number of questions (i.e. trials) which will be used to calculate the probability for the binomial distribution. Note: for some reason the slider input does not display properly though Slidify. Please see the ***Server.R*** and ***UI.R*** files on my github page for the full code: https://github.com/BD20171998/Course-9  

```r
library(shiny)
      sliderInput("questions","Number of questions:",min = 1,max = 50,
                   value = 1)
```

<!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" for="questions">Number of questions:</label>
<input class="js-range-slider" id="questions" data-min="1" data-max="50" data-from="1" data-step="1" data-grid="true" data-grid-num="9.8" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-data-type="number"/>
</div><!--/html_preserve-->

--- 


```
## 
## Listening on http://127.0.0.1:8027
```

```
## Error in file(con, "rb"): cannot open the connection
```
