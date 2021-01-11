# Improving New Vehicle Development through Statistical Analysis

## Project Overview
The development of a new vehicle model at a fictional manufacturer is suffering from production troubles that are blocking the manufacturing team’s progress. The goal of this work is to review the production data for insights that may help the manufacturing team.

This Includes:

1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population

4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Results

1. Multiple Linear Regression Analysis

A multiple linear regression analysis was used to determine which if any of 5 different parameters had a significant effect on fuel consumption (mpg). The variables included were vehicle length, vehicle weight, spoiler angle, ground clearance, and drivetrain (presence of All-Wheel-Drive). P-value cutoff of 0.05 was used to determine significance. 

![mpg_lmSummary.png](https://github.com/andrej-arsovski/MechaCar_Statistical_Analysis_m15/blob/main/Screenshots/mpg_lmSummary.png)

The results show that vehicle length and ground clearance had a statistically significant effect on fuel consumption with p-values of 2.60e-12 and 5.21e-08, respectively. Vehicle weight, spoiler angle and the presence of All-Wheel-Drive did not have a significant effect on fuel consumption. Notably, the intercept also had a p-value of less than 0.05 suggesting that there exist other factors that influence fuel consumption but are not accounted for in our model. These could be things like engine displacement, aerodynamics, or vehicle body type.

The slope of the linear model in this case is not considered to be zero because the model does provide some predictive ability. The R-squared value is 0.7149 which means that our model can correctly predict 71.5% of fuel consumption predictions. In addition, the p-value is 5.35e-11. Together these suggest that the slope of our linear model is not zero.

This model can correctly predict 71.5% of fuel consumption for prototype vehicles. While this is better than a coin-flip it can still be improved. The significant p-value of the intercept suggests that there are other importnat factors that can influence fuel consuption but are not included in our model. The linear model can be improved by including additional measures such as engine displacement, aerodynamics, or vehicle body-type.

2. Summary Statistics on Suspension

The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

Together the mean PSI of the entire production run of coils was 1498.78, with a median of 1500 and a Variance and standard deviation of 62.3 and 7.89, respectively.

![coil_summary.png](https://github.com/andrej-arsovski/MechaCar_Statistical_Analysis_m15/blob/main/Screenshots/coil_summary.png)

Analyzing the data for the 3 separate lots shows that lot 1 and 2 performed similarly while lot 3 performance was more variable.

![lot_summary.png](https://github.com/andrej-arsovski/MechaCar_Statistical_Analysis_m15/blob/main/Screenshots/Lot_summary.png)

The design specifications for the new model suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  The variance in Lot 1 and Lot 2 meets this requirement. The Lot 1 variance is 0.98, while the variance of lot 2 is 7.47. Lot 3 however has a much larger variance of 170.29 which is above the allowed limit. Therefore Lot 3 is not suitable for use in prediction.  

3. T-Tests on Suspension Coils

t-tests were used to determine if all manufacturing lots and each lot individually were statistically different from the population mean of 1,500 pounds per square inch.

All lots together were not significantly different than the population mean of 1500 PSI, P-value = 0.06. This p-value was greater than the 0.05 cutoff therefore the null hypothesis that the mean is EQUAL to 1500 could not be rejected.

![ttest_all.png](https://github.com/andrej-arsovski/MechaCar_Statistical_Analysis_m15/blob/main/Screenshots/ttest_All.png)

Lot 1 was also not significantly different than the population mean of 1500 PSI, P-value = 1. This p-value was greater than the 0.05 cutoff therefore the null hypothesis that the mean is EQUAL to 1500 could not be rejected.

![ttest_lot1.png](https://github.com/andrej-arsovski/MechaCar_Statistical_Analysis_m15/blob/main/Screenshots/ttest_lot1.png)

Lot 2 was similarly not significantly different than the population mean of 1500 PSI, P-value = 0.61. This p-value was greater than the 0.05 cutoff therefore the null hypothesis that the mean is EQUAL to 1500 could not be rejected.

![ttest_lot2.png](https://github.com/andrej-arsovski/MechaCar_Statistical_Analysis_m15/blob/main/Screenshots/ttest_lot2.png)

Lot 3 however WAS significantly different than the population mean of 1500 PSI, P-value = 0.04. This p-value was lower than the 0.05 cutoff therefore the null hypothesis that the mean is EQUAL to 1500 could be rejected.

![ttest_lot3.png](https://github.com/andrej-arsovski/MechaCar_Statistical_Analysis_m15/blob/main/Screenshots/ttest_lot3.png)

4. Study Design: MechaCar vs Competition

For this hypothetical study I will assume the MechaCar has been in production and available to the public for 3 years. This is a long enough time for the first model year to have a robust enough data set. I would then collect information from a large sample number of vehicles for both the MechaCar, (n>=500) as well as vehicles from the same segment from different manufacturers.

I would ideally collect as much information and categories as possible but will a metric I would find informative as a consumer. First, I would collect the total maintenance cost per vehicle over that period. 

Data: Cost of repairs and maintence totalled over 3 year period in dollars. Collected for at least 500 vehicles from each competitor. I would compare the average cost for the MechaCar over that period to each of the other competition vehicles, assuming a difference in means of 0 dollars. 

In other words H0: the difference in the average maintenance cost per vehicle is 0

H1: the the difference in the average maintenance cost per vehicle is not 0

Statistical test: Using paiwise two-tailed t-tests analysis would tell us whether the costs of maintenance would be higher or lower for the MechaCar compared to the competition. 



