## Tax avoidance and ESG 

Project sought to explore a link between whether news of tax avoidance by companies affect employee ratings or satisfaction in that company. 

## Datasets

Employee satisfaction data came from Glassdoor ratings data. The metric that proxied for satisfactioin is the management ratings. ESG-related news releases and dates are contained in a proprietary 3rd party dataset, called RepRisk. In addition to containing tax-avoidance news releases, it also contains a wealth of other news, related to political events or environmental disasters. The databases were joined on the primary key of companies' ISIN manipulations and fiscal quarters. 

## Regression design 

The resulting dataset after the above join contains reviews with any event of tax avoidance news leaking out. Then for the staggered diff-in-diff design, the treated group is defined as all firms who had any mention of tax avoidance news in a fiscal quarter during the sample period. This treated binary variable takes a value of 0 for firms who did not have any tax avoidance news leaked out.  

To define the post binary variable, the column will take on a value of 0 for all observations (reviews) made in fiscal quarters before any tax avoidance news becomes released, and 1 for this post binary variable for all reviews made in subsequent fiscal quarters if a firm had bad news regarding tax avoidance. 

The dependent variable was employee satisfaction, while the variable of interest was the coefficient on the interaction of post and treat, the differences in differences estimator. This coefficient will show whether not the employee ratings between the firms having tax avoidance news exposed and those not exposed differs across time periods. 

(Insert equation -- placeholder) 

## Motivation and background
Background knowledge and papers containied in separate directory (/background_reading). The results from the SAS (the high-performance regression was used) file seem to challenge the findings presented in the two papers. 
