## Tax avoidance and ESG 

Project sought to explore a link between whether news of tax avoidance by companies affect employee ratings or satisfaction in that company. 

## Datasets

Employee satisfaction data came from Glassdoor ratings data. The metric that proxied for satisfactioin is the management ratings. ESG-related news releases and dates are contained in a proprietary 3rd party dataset, called RepRisk. In addition to containing tax-avoidance news releases, it also contains a wealth of other news, related to political events or environmental disasters. The databases were joined on the primary key of companies' ISIN manipulations and fiscal quarters. Then for the staggered diff-in-diff dessign, treated and untreated groups are defined as 0 for all fiscal quarters before any tax avoidance news becomes released, and 1 for all ssubsequent quarters if a firm had bad news regarding tax avoidance.  

## Motivation and background
Background knowledge and papers containied in separate directory (/background_reading). The results from the SAS (the high-performance regression was used) file seem to challenge the findings presented in the two papers. 
