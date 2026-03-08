
cd "C:\Users\user\Desktop\MA Fall 2022\Applied Econ I\Term Paper, Farah Younes & Rawan Al Gharib"

*Log File:
log using "Log File.txt" , text replace 


dir


*********************
*Cleaning the data*
*********************

*Migration:
drop if Q104 == 98 | Q104 == 99 | Q104 == .

*Residence:
drop if Q13 ==. | Q13 ==3

*Age:
drop if Q1001 == 99999

*First environmental challenge:
drop if Q540_1 == 98 | Q540_1 == 99 | Q540_1 == 97 | Q540_1 == 96 | Q540_1 == .

*Second environmental challenge:
drop if Q540_2 == 98 | Q540_2 == 99 | Q540_2 == 97 | Q540_2 == 96 | Q540_2 == .

*Education:
drop if Q1003 == 98 | Q1003 == 99 | Q1003 == .

*Social status:
drop if Q1010 == 99 | Q1010 == .

*Employment:
drop if Q1005==98 | Q1005==99

*Income:
drop if Q1015== 999999998 |  Q1015== 999999999 | Q1015== .

*Government intervention to control climate change:
drop if Q546== 98 | Q546== 99 | Q546== .





***************************************
*******Variables definition*******
***************************************


******************************
*Dependent variable: Migration
******************************
gen migration=0
replace migration=1 if Q104==1
 
*************************
*Independent variables
*************************

*Countries:

gen Algeria=0
replace Algeria=1 if COUNTRY==1

gen Egypt=0
replace Egypt=1 if COUNTRY==5

gen Iraq=0
replace Iraq=1 if COUNTRY==7

gen Jordan=0
replace Jordan=1 if COUNTRY==8

gen Lebanon=0
replace Lebanon=1 if COUNTRY==10

gen Mauritania=0
replace Mauritania=1 if COUNTRY==12

gen Morocco=0
replace Morocco=1 if COUNTRY==13

gen Sudan=0
replace Sudan=1 if COUNTRY==19

gen Tunisia=0
replace Tunisia=1 if COUNTRY==21

***Environmental Variables**

*Climate change:
gen climatechange=0
replace climatechange=1 if Q540_1==9 | Q540_2==9

*Pollution of water:
gen waterpollution=0
replace waterpollution=1 if Q540_1==2 | Q540_1==3 | Q540_2==2 | Q540_2==3

*Trash:
gen trash=0
replace trash=1 if Q540_1==5 | Q540_2==5

*No water:
gen nowater=0
replace nowater=1 if Q540_1==4 | Q540_2==5

*Lack of government intervention:
gen government=0
replace government=1 if Q546==1


**********************************
*Socio-demographic variables
**********************************

*Residence:
gen rural=0
replace rural=1 if Q13==2


*Gender:
gen male=0
replace male=1 if Q1002==1


*Age:
generate youth=0
replace youth=1 if Q1001>=18 & Q1001<=24
generate adults=0
replace adults=1 if Q1001>=25 & Q1001<=64
generate seniors=0
replace seniors=1 if Q1001>=65


*Education:
gen ileduc=0
replace ileduc=1 if Q1003==1 | Q1003==3

gen school=0
replace school=1 if Q1003==2 | Q1003==4 | Q1003==5

gen uni=0
replace uni=1 if Q1003==6 | Q1003==7 

*Social status:
gen inrel=0
replace inrel=1 if Q1010==3 | Q1010==4

gen single=0
replace single=1 if Q1010==1 | Q1010==2 |Q1010==5 |Q1010==6 | Q1010==7

*Employment:
gen employment=0
replace employment=1 if Q1005==1 | Q1005==2

gen unemployment=0
replace unemployment=1 if Q1005==3| Q1005==4| Q1005==5| Q1005==6| Q1005==7



* Exchange rate to USD in 2021
* ALgeria = 135.0112
* Egypt = 15.6971
*Iraq = 1460.133
*Jordan = 0.709
*Kuwait = 0.3017
* Lebanon = 1507.5
* Mauritania = 0.0028011
* Morocco = 8.9908
* Sudan =  575.5 
* Tunisia = 2.7781

gen Q1015_a= Q1015
replace Q1015_a=0 if COUNTRY==5 | COUNTRY==7 | COUNTRY==8 | COUNTRY==9 | COUNTRY==10| COUNTRY==12| COUNTRY==13| COUNTRY==19| COUNTRY==21


gen Q1015_e= Q1015
replace Q1015_e=0 if COUNTRY==1 | COUNTRY==7 | COUNTRY==8 | COUNTRY==9 | COUNTRY==10| COUNTRY==12| COUNTRY==13| COUNTRY==19| COUNTRY==21

gen Q1015_i= Q1015
replace Q1015_i=0 if COUNTRY==5 | COUNTRY==1 | COUNTRY==8 | COUNTRY==9 | COUNTRY==10| COUNTRY==12| COUNTRY==13| COUNTRY==19| COUNTRY==21

gen Q1015_j= Q1015
replace Q1015_j=0 if COUNTRY==5 | COUNTRY==7 | COUNTRY==1 | COUNTRY==9 | COUNTRY==10| COUNTRY==12| COUNTRY==13| COUNTRY==19| COUNTRY==21

gen Q1015_k= Q1015
replace Q1015_k=0 if COUNTRY==5 | COUNTRY==7 | COUNTRY==8 | COUNTRY==1 | COUNTRY==10| COUNTRY==12| COUNTRY==13| COUNTRY==19| COUNTRY==21

gen Q1015_l= Q1015
replace Q1015_l=0 if COUNTRY==5 | COUNTRY==7 | COUNTRY==8 | COUNTRY==9 | COUNTRY==1| COUNTRY==12| COUNTRY==13| COUNTRY==19| COUNTRY==21

gen Q1015_ma = Q1015
replace Q1015_ma=0 if COUNTRY==5 | COUNTRY==7 | COUNTRY==8 | COUNTRY==9 | COUNTRY==10| COUNTRY==1| COUNTRY==13| COUNTRY==19| COUNTRY==21


gen Q1015_mo = Q1015
replace Q1015_mo=0 if COUNTRY==5 | COUNTRY==7 | COUNTRY==8 | COUNTRY==9 | COUNTRY==10| COUNTRY==12|COUNTRY==1| COUNTRY==19| COUNTRY==21

gen Q1015_s = Q1015
replace Q1015_s=0 if COUNTRY==5 | COUNTRY==7 | COUNTRY==8 | COUNTRY==9 | COUNTRY==10| COUNTRY==12| COUNTRY==13| COUNTRY==1| COUNTRY==21


gen Q1015_t = Q1015
replace Q1015_t=0 if COUNTRY==5 | COUNTRY==7 | COUNTRY==8 | COUNTRY==9 | COUNTRY==10| COUNTRY==12 | COUNTRY==13| COUNTRY==19| COUNTRY==1




gen income_usd_a = Q1015_a/135.0112
gen income_usd_e = Q1015_e/15.6971
gen income_usd_i = Q1015_i/1460.133
gen income_usd_j = Q1015_j/0.709
gen income_usd_k = Q1015_k/0.3017
gen income_usd_l = Q1015_l/1507.5
gen income_usd_ma= Q1015_ma/0.0028011
gen income_usd_mo =Q1015_mo/8.9908
gen income_usd_s = Q1015_s/575.5 
gen income_usd_t = Q1015_t/2.7781


egen income = rowtotal(income_usd_a income_usd_e income_usd_i income_usd_j income_usd_k income_usd_l income_usd_ma  income_usd_mo income_usd_s  income_usd_t)  

*Interaction Variables:
gen climatecres = (climatechange)*(rural)
gen climatecinc = (climatechange)*(income)           



***********************************
**Table 1: Descriptive Statistics
***********************************

asdoc sum migration climatechange waterpollution nowater trash government male youth adults income rural school uni inrel employment climatecinc climatecres 

**********************************
**Table 2: Collinearity Test:
**********************************

collin climatechange waterpollution nowater trash government male youth adults income rural school uni inrel employment climatecinc climatecres  

**********************************************
**************Regression Analysis**************
***********************************************
                              
*Model 1: Climate change
probit migration climatechange , robust 
estimates store t11, title(Model 1)

*Model 2: Environmental factors
probit migration climatechange waterpollution nowater trash  , robust
estimates store t12, title(Model 2)

*Model 3: Environmental factors and some socio-demographics
probit migration climatechange waterpollution nowater trash government male school uni inrel employment youth adults, robust
estimates store t13, title(Model 3)

*Model 4: Environmental factors and all socio-demographics
probit migration climatechange waterpollution nowater trash government male youth adults income rural school uni inrel employment  , robust
estimates store t14, title(Model 4)

*Model 5: Model 4 plus add interaction variables
probit migration climatechange waterpollution nowater trash government male youth adults income rural school uni inrel employment climatecinc climatecres , robust
estimates store t15, title(Model 5)


esttab t11 t12 t13 t14 t15, cells(b(star fmt(3)) se(par fmt(3))) ///
starlevels(* 0.100 ** 0.050 *** 0.010) margin legend stats(N r2_p ll), using TABLE1.rtf



****************************
**Regression by region**
****************************


probit migration climatechange nowater waterpollution trash government male youth adults income school uni inrel employment if rural==1
estimates store t16, title(Rural) 

probit migration climatechange nowater waterpollution trash government male youth adults income school uni inrel employment if rural==0
estimates store t17, title(Urban)

esttab t16 t17, cells(b(star fmt(3)) se(par fmt(3))) ///
starlevels(* 0.100 ** 0.050 *** 0.010) margin legend stats(N r2_p ll ), using TABLE2.rtf



********************************************
**Regression by gender based on residence**
********************************************
probit migration climatechange nowater waterpollution trash government youth adults income school uni inrel employment if male==0 & rural==1
estimates store t18, title(Female living in rural)

probit migration climatechange nowater waterpollution trash government youth adults income school uni inrel employment if male==0 & rural==0
estimates store t19, title(Female living in urban)  

probit migration climatechange nowater waterpollution trash government youth adults income school uni inrel employment if male==1 & rural==1
estimates store t20, title(Male living in rural)

probit migration climatechange nowater waterpollution trash government youth adults income school uni inrel employment if male==1 & rural==0
estimates store t21, title(Male living in urban)

esttab t18 t19 t20 t21, cells(b(star fmt(3)) se(par fmt(3))) ///
starlevels(* 0.100 ** 0.050 *** 0.010) margin legend stats(N r2_p ll ), using TABLE3.rtf

log close





