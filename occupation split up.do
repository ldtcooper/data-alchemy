*for business/mgmt/finance
generate business=1 if inrange(occp, 0010, 0950) 
replace business=0 if missing(business)

* STEM and medicine
generate stem =1 if inrange(occp,1005, 1965)
replace stem = 1 if inrange(occp, 3000, 3540)
replace stem=0 if missing(stem)

* Construction/repair/manufacturing
generate construction=1 if inrange(occp,6200, 6765)
replace construction = 1 if inrange(occp,7000,8965)
replace construction=0 if missing(construction)

* primary sector (agriculture, resource extraction)
gen primary=1 if inrange(occp, 6005, 6130)
replace primary=1 if inrange(occp, 6800, 6940)
replace primary=0 if missing(primary)

* clerical/educational
gen clerical=1 if inrange(occp, 2000, 2550)
replace clerical=1 if inrange(occp, 5000, 5940)
replace clerical=0 if missing(clerical)

*other (including law enforcement, military, entertainment, transport, and food prep)
gen other_job=1 if inrange(occp, 2600, 2920)
replace other_job=1 if inrange(occp, 3600, 4965)
replace other_job=1 if inrange(occp, 9000, 9830)
replace other=0 if missing(other)

* nonworking
generate nonworking = 1 if occp==9920
replace nonworking=0 if missing(nonworking)
