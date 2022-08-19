# MechaCar_Statistical_Analysis
# Overview
For this project, we used R programming language to perform statistical and visualizations to analyze a series of datasets from the automotive industry. Also, this analyis included the use of statistics and hypothesis testing. 

# Linear Regression to Predict MPG
<img width="481" alt="Linear Regression Predict MPG" src="https://user-images.githubusercontent.com/105119376/185660612-8742c444-1da4-4fda-8ddd-0761408d945a.png">

- Based on our Pr(>|t|) values for each variable, vehicle length and ground clearance are statistically unlikely to provide random amounts of variance to our model since they are close to 0.
- The slope of the linear model is not considered to be zero since there is a significant linear relationship between the variables and mpg, and the coefficients are not 0.
- R-square is 0.71, so we can consider this linear model as fairly efficient to predict mpg of MechaCar prototypes.

# Summary Statistics on Suspension Coils
<img width="280" alt="Total Summary" src="https://user-images.githubusercontent.com/105119376/185663824-9f3ac78b-e41a-4d73-aa90-508ce91a0ce1.png">
<img width="385" alt="Lot Summary" src="https://user-images.githubusercontent.com/105119376/185663924-fdb3344c-9728-4bbd-a31c-b3d4e762ca9b.png">

- Because the variance of the suspension coils had a limit of 100 PSI, the overall variance in PSI was 62.29 PSI which which did not exceed the limit. Looking at each lot inidividually, both Lots 1 an 2 are definitely within the limits at 0.98 and 7.47 PSI. However, Lot 3 exceeded the limit with a variance of 170.29 PSI. 

# T-Tests on Suspension Coils
<img width="329" alt="All Lots" src="https://user-images.githubusercontent.com/105119376/185664179-acf8f47b-7fe9-417c-a2b2-b4e897fedaf4.png">
<img width="328" alt="Lot 1" src="https://user-images.githubusercontent.com/105119376/185664188-ad91d789-7f3c-4013-807a-435fe144b530.png">
<img width="328" alt="Lot 2" src="https://user-images.githubusercontent.com/105119376/185664229-8565afe2-93dd-4f0f-b03f-520855c31b3e.png">
<img width="328" alt="Lot 3" src="https://user-images.githubusercontent.com/105119376/185664240-50b1efc6-4127-4a66-878a-c3f20802b23f.png">

- Base on the common significance level at 0.05 percent, the p-value is of 0.069 is above the significance level. This means that there isn't enough evidence to reject the null hypothesis and the PSI across all lots is statiscally similar to the population mean
- For Lot 1, the p-value is below the significance level of 0.05 percent. Therefore, we can reject the null hypothesis and the PSI acoss Lot 1 is statiscally different than the polation mean. 
- For Lot 2, the p-value is above the significance level. We can't reject the null hypothesis and the PSI is statistically similar to the population mean. 
- For Lot 3, again, the p-value is above the significance level, so we can't reject the null hypothesis and the PSI is statistically similar to the poulation mean. 

# Study Design: MechaCar vs Competition
Collecting data for comparable models across all major manufacturers for past 3 years. We will use the following metrics:

- Safety Feature Rating
- Current Selling Pricce
- Horsepower
- Type of Engine (Electric, Hybrid, Gasoline)
- Resale Value
- Average Annual Cost of ownership
- Gasoline MPG

After determining which metrics are vital for the MechaCar's vehicles, we form a null and alternative hypothesis:
- Null Hypothesis: MechaCar is priced correctly based on its performance of key metrics for its class.
- Alternative Hypothesis: MechaCar is Not priced correctly based on its performance of key metrics for its class.

To test our hypothesis, we can use a multiple linear regression to determine the metrics that have the highest correlation/predictability with the list selling price and which combination has the greatest impact on price.
