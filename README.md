# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

<img src='https://github.com/juliomeza/MechaCar_Statistical_Analysis/blob/main/Screenshots/1-LinearRegression.png'>

The vehicle length and the ground clearance as well as the intercept, are statistically unlikely to provide random amounts of variance to the linear model. In addition, the linear model predicts MPG of MechaCar effectively because the p-value is less thn 0.05 (5.35e-11) and the adjusted R-squared is close to 0.7 (0.6825)


## Summary Statistics on Suspension Coils

<img src='https://github.com/juliomeza/MechaCar_Statistical_Analysis/blob/main/Screenshots/2-Chart.png'>


<img src='https://github.com/juliomeza/MechaCar_Statistical_Analysis/blob/main/Screenshots/2-TotalSummary.png'>

The mean and the median are very close to each other, means the data set has a symmetrical distribution. The distribution chart also confirms this. The variance and the standard deviation for the whole population are high. Means the data points are very spread out from the mean and from one another, but meets the design specification for all manufacturing lots in total.

<img src='https://github.com/juliomeza/MechaCar_Statistical_Analysis/blob/main/Screenshots/2-LotSummary.png'>

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

As a whole, all lotes together metts this criteria, with a variance of 62.29, but as an individual lots, only Lot1 and Lot2 meet the criteria, with variances of 0.98 and 7.47 respectively. Lot3 surpass the minimun requirement with a variance of 170.29, 70 PSI above the manufacturing specifictions.


## T-Tests on Suspension Coils

<img src='https://github.com/juliomeza/MechaCar_Statistical_Analysis/blob/main/Screenshots/3-T-Test-All-Lots.png'>

Using the T-Test we can conlucde that the PSI accross all manufacturing lots is 'Statistically Different' from the population mean of 1,500 pounds per square inch because the p-value is greater than 0.5 (0.6036).

<p float="left">
<img src='https://github.com/juliomeza/MechaCar_Statistical_Analysis/blob/main/Screenshots/3-Lot1.png' width=400>
<img src='https://github.com/juliomeza/MechaCar_Statistical_Analysis/blob/main/Screenshots/3-Lot2.png' width=400>
<img src='https://github.com/juliomeza/MechaCar_Statistical_Analysis/blob/main/Screenshots/3-Lot3.png' width=400>
</p>

Comparing each manufacturing lot agains the mean PSI of the population, I can conclude that each lot is NOT statistically different from the population mean of 1,500 pounds per square inch because each lot has a p-value lower than 0.5.


## Study Design: MechaCar vs Competition

Does a high horse power over other manufacturer positively affect the sales of cars?

* Hypothesis: Having a higer horse power performance than other manufacurers will increse the sales of the model X.
* Null Hypothesis: Having a higer horse power performance than other manufacurers will show no improvments on the sales of the model X.

The data needed is the sales of hour model X and the other manufacturer cars in the same car rabge type before and after the increse of the model X hourse power.
We can also analyze the changes of the horse power over the past 10 years with similar cars and see if any change on the horse power affects the sales of our cars or the competition cars.