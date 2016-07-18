# FindingGoodPredictorsOfHomicideRateInDetroit

We are given the homicide rate in Detroit throughout 13 years as well as two good predictors for it (FTP, WE). We are looking for a third predictor variable for the homicide rate. All of the variables can be described as 13x1 vectors. Their values can be seen below.

![ScreenShot](https://github.com/yiannissakk/FindingGoodPredictorsOfHomicideRateInDetroit/blob/master/img1.png)

In our regression.m program we will use the linear regression formula: 

![ScreenShot](https://github.com/yiannissakk/FindingGoodPredictorsOfHomicideRateInDetroit/blob/master/img2.png)

to find the best predictor X3 out of the remaining seven variables. We set X1 and X2 as FTP and WE respectively. Then using the built-in matlab function regress(x,y) we find the corresponding values b0, b1, b2, b3 for each X3. Next for every X3 and the corresponding b0, b1, b2, b3 we compute the right hand side of the linear regression formula to get a Y. Then for each of the seven yielded Y's we find their Euclidean distance with HOM. Finally, regression.m will output the index of the column that is the best predictor (the Y that gives the smallest euclidean distance from HOM) and the value of its total distance from HOM.

Output of regression.m is [45.7, 4]
