* Load up the dataset from SAS 
* "C:\Users\clj585\OneDrive - Northwestern University\Attachments\gd_rr_final2.dta"

clear
use "C:\Users\clj585\OneDrive - Northwestern University\Attachments\gd_rr_final2.dta"

* Finagle around with gvkey (cannot be string)
encode gvkey, gen(gvkey1)
drop gvkey
rename gvkey1 gvkey

xtset gvkey YQtr_date

xtreg AvgRate neg_esg_event roa mtb lev ln_actq bhr, fe vce(cluster gvkey)
estimates store fixed
estimates table fixed , star stats(N r2 r2_a)
outreg2 using blah.xls, nolabel stats (coef tstat) bdec(6)  bracket adjr2

reg AvgRate neg_esg_event roa mtb lev ln_actq bhr i.YQtr_date i.gvkey
estimates store ols
estimates table ols , star stats(N r2 r2_a)

reghdfe AvgRate neg_esg_event roa mtb lev ln_actq bhr, absorb(gvkey YQtr_date) vce(cluster gvkey)
estimates store newmodel
estimates table newmodel , star stats(N r2 r2_a)

reghdfe AvgRate neg_esg_event roa mtb lev ln_actq bhr, absorb(gvkey YQtr_date)
estimates store newmodel2
estimates table newmodel2 , star stats(N r2 r2_a)


* clearing workspace!  
clear


* Load up the dataset from SAS 
* "C:\Users\clj585\OneDrive - Northwestern University\Attachments\gd_rr_final2.dta"
clear matrix
clear mata
clear
set maxvar 120000 
use "C:\Users\clj585\OneDrive - Northwestern University\Attachments\gd_rr_final2.dta"

* Finagle around with gvkey (cannot be string)
encode gvkey, gen(gvkey1)
drop gvkey
rename gvkey1 gvkey

xi: regress AvgRate neg_esg_event roa mtb lev ln_actq bhr i.YQtr_date i.gvkey
estimates store ximod
estimates table ximod , star stats(N r2 r2_a)



* More code 
clear
use "C:\Users\clj585\OneDrive - Northwestern University\Attachments\gd_rr_final2.dta", replace

reg AvgRate neg_esg_event roa mtb lev ln_actq bhr
estimates store ols
estimates table ols, star stats(N r2 r2_a)

reghdfe AvgRate neg_esg_event roa mtb lev ln_actq bhr, absorb(gvkey YQtr_date) vce(cluster gvkey) keepsing
estimates store newmodel2
estimates table newmodel2 , star stats(N r2 r2_a)
outreg2 using results_7_27.xlsx, nolabel stats (coef tstat) bdec(6)  bracket adjr2
