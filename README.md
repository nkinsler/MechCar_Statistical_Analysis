# MechCar_Statistical_Analysis

## Resources
[RStudio](https://github.com/nkinsler/MechCar_Statistical_Analysis/blob/main/MechCarChallenge.R)

## Linear Regression to Predict MPG

![lm](https://github.com/nkinsler/MechCar_Statistical_Analysis/blob/main/Resources/lm.png)!

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  The variables that provide a non-random amount of variance to the mpg values in the data set include: vehicle length and ground clearance as both have p-values below 0.001.

2. Is the slope of the linear model considered to be zero? Why or why not?

  The slope of the linear model is not considered to be zero due to the overall p-value being 5.35e-11.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
 
  The linear model can be used up to a certain extent to predict the mpg of MechCar prototypes with the accuracy around 68% (as seen by the Adjusted R-squared variable).  There are likely some additional factors that would also need to be considered.

## Summary Statistics on Suspension Coils

![total_summary](https://github.com/nkinsler/MechCar_Statistical_Analysis/blob/main/Resources/total_summary.png)!

![lot-summary](https://github.com/nkinsler/MechCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)!

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

  The overall total summary indicates the variance does not exceed 100 (62.29).  This would indicate the current manufacturing data meets the design specification in total.  The lot summary above shows that Lot 3 fails to meet the design specification with a variance in excess of 100 (170.29). 

## T-Tests on Suspension Coils

![t-test](https://github.com/nkinsler/MechCar_Statistical_Analysis/blob/main/Resources/t-test.png)!

### Overall

With a p-value of 0.06028, we fail to reject the null hypothesis for the overall t-test.

### Lots

Lot 1 has a p-value of 1, so we fail to reject the null hypothesis for Lot 1.
Lot 2 has a p-value of 0.6072, so we fail to reject the null hypothesis for Lot 2.
Lot 3 has a p-value of 0.04168, so we reject the null hypothesis for Lot 3.
Given the outcome MechCar was anticipating, we would investigate Lot 3 data further to determine why that lot is the only one to fail to reject the null hypothesis.

## Study Design: MechCar vs Competition

- What metric or metrics are you going to test?

  Given consumers concerns regarding price at the pump, the metric to be tested would be fuel efficiency across many different competitors on like vehicle classes.
  
- What is the null hypothesis or alternative hypothesis?

  H0: MechCar's fuel efficiency is statistically similar to their competitor's vehicles.
  Ha: MechCar's fuel efficiency is statistically different from that of their competitor's vehicles.
  
- What statistical test would you use to test the hypothesis? And why?

  I would utilize a ANOVA statistical sample.  The goal of the test is to test if there is a statistical difference between the distribution means from multiple samples.

- What data is needed to run the statistical test?

  Fuel efficiency for MechCar and as many competitors with similar vehicle classes.
