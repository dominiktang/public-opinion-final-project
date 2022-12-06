*for map*

sum export if region == 1301 & year == 2021
sum perexport if region == 1301 & year == 2021
**tarapca** 

sum export if region == 1302 & year == 2021
sum perexport if region == 1302 & year == 2021
**antofagasta**

sum export if region == 1303 & year == 2021
sum perexport if region == 1303 & year == 2021
**atacama**

sum export if region == 1304 & year == 2021
sum perexport if region == 1304 & year == 2021
**coquimbo**

sum export if region == 1305 & year == 2021
sum perexport if region == 1305 & year == 2021
**valparaiso**

sum export if region == 1306 & year == 2021
sum perexport if region == 1306 & year == 2021
**ohiggins**

sum export if region == 1307 & year == 2021
sum perexport if region == 1307 & year == 2021
**maule**

sum export if region == 1308 & year == 2021
sum perexport if region == 1308 & year == 2021
**biobio**

sum export if region == 1309 & year == 2021
sum perexport if region == 1309 & year == 2021
**araucania**

sum export if region == 1310 & year == 2021
sum perexport if region == 1310 & year == 2021
**los lagos**

sum export if region == 1311 & year == 2021
sum perexport if region == 1311 & year == 2021
**aysen**

sum export if region == 1312 & year == 2021
sum perexport if region == 1312 & year == 2021
**magallanes**

sum export if region == 1313 & year == 2021
sum perexport if region == 1313 & year == 2021
**los rios**

sum export if region == 1314 & year == 2021
sum perexport if region == 1314 & year == 2021
**santiago**

sum export if region == 1315 & year == 2021
sum perexport if region == 1315 & year == 2021
**arica y prinacota**

sum export if region == 1316 & year == 2021
sum perexport if region == 1316 & year == 2021
**nuble**


sum china if region == 1301 & year == 2021
sum china if region == 1302 & year == 2021
sum china if region == 1303 & year == 2021
sum china if region == 1304 & year == 2021
sum china if region == 1305 & year == 2021
sum china if region == 1306 & year == 2021
sum china if region == 1307 & year == 2021
sum china if region == 1308 & year == 2021
sum china if region == 1309 & year == 2021
sum china if region == 1310 & year == 2021
sum china if region == 1311 & year == 2021
sum china if region == 1312 & year == 2021
sum china if region == 1313 & year == 2021
sum china if region == 1314 & year == 2021
sum china if region == 1315 & year == 2021
sum china if region == 1316 & year == 2021


sum usa if region == 1301 & year == 2021
sum usa if region == 1302 & year == 2021
sum usa if region == 1303 & year == 2021
sum usa if region == 1304 & year == 2021
sum usa if region == 1305 & year == 2021
sum usa if region == 1306 & year == 2021
sum usa if region == 1307 & year == 2021
sum usa if region == 1308 & year == 2021
sum usa if region == 1309 & year == 2021
sum usa if region == 1310 & year == 2021
sum usa if region == 1311 & year == 2021
sum usa if region == 1312 & year == 2021
sum usa if region == 1313 & year == 2021
sum usa if region == 1314 & year == 2021
sum usa if region == 1315 & year == 2021
sum usa if region == 1316 & year == 2021




*for EDA*
sum china if edu==1
sum china if edu==2
sum china if edu==3
sum china if edu==4

sum usa if edu==1
sum usa if edu==2
sum usa if edu==3
sum usa if edu==4

sum china if income==1
sum china if income==2
sum china if income==3
sum china if income==4

sum usa if income==1
sum usa if income==2
sum usa if income==3
sum usa if income==4

/*
sum china if projcomm == 1
sum china if projcomm == 0
sum usa if projcomm == 1
sum usa if projcomm == 0
sum china if projregion == 1
sum china if projregion == 0
sum usa if projregion == 1
sum usa if projregion == 0
*/


*for h1&h2*

*****test Stolper-Samuelson Theorem*****
oprobit china perexport edu exportedu age sex party poli, nolog cluster (region)
margins, dydx(*) post

oprobit usa perexport edu exportedu age sex party poli, nolog cluster (region)
margins, dydx(*) post

*****china infrastructure aid projects*****

/* 
oprobit china perexport edu projcomm age sex party poli, nolog cluster (region)
margins, dydx(*) post

oprobit china perexport edu projregion age sex party poli, nolog cluster (region)*
*margins, dydx(*) post 
*/

oprobit china perexport edu i.projcomm age sex party poli if year>=2018, nolog cluster (region)
margins, dydx(*) post

oprobit china perexport edu i.projregion age sex party poli if year>=2018, nolog cluster (region)
margins, dydx(*) post

oprobit china perexport edu i.projcomm i.projregion i.projcomm#i.projregion age sex party poli if year>=2018, nolog cluster (region)
margins, dydx(*) post


******************
******************
/*
oprobit china projcomm edu age sex road school health projroad1 projschool1 projhealth1, robust cluster (region)
margins, dydx(*) post

oprobit china projregion edu age sex road school health projroad2 projschool2 projhealth2, robust cluster (region)
margins, dydx(*) post

oprobit china projcomm edu projedu1 age sex road school health projroad1 projschool1 projhealth1, robust cluster (region)
margins, dydx(*) post

oprobit china projregion edu projedu2 age sex road school health projroad2 projschool2 projhealth2,robust cluster (region)
margins, dydx(*) post 
*/
