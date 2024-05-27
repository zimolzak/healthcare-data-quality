---
title: Electronic Health Record Data for Health Policy Research
author: Andrew Zimolzak, MD, MMSc
date: December 5, 2023
theme: Goettingen
fonttheme: structurebold
colortheme: whale
aspectratio: 169
---



# Intro

## About me

| Yrs | Research activities                 | Clinical activities |
|-----|-------------------------------------|------------------------------|
| 3+1 | n/a                                 |  Internal medicine residency |
| 2+1 | MMSc biomedical informatics         | Outpatient urgent care |
| 4   | VA Boston: Clinical trials           | Hospitalist |
| 5   | BCM & VA Houston: Health services research | Hospitalist |

What is *Clinical research informatics?*

- I make various clinical research studies "go," using existing data.
- "Phenotyping" using electronic health record (EHR) data


## A detailed reference about secondary use[^MIT]

[^MIT]: MIT Critical Data. *Secondary Analysis of Electronic Health Records.*
Springer Cham, 2016. [Click for free access](https://link.springer.com/book/10.1007/978-3-319-43742-2)


## How I (an informatics person) look at studies

- Database type? (EHR or something else)
- Whose data?
- "Pre" methods (how carefully did they do "phenotyping"?)
- Study type (broadly)
- ...and oh yes, the details of "real" analysis methods and results




# 1: Medicaid expansion[^pom]

[^pom]: O'Mahen PN, Petersen LA. Effects of State-level Medicaid Expansion on
Veterans Health Administration Dual Enrollment and Utilization:
Potential Implications for Future Coverage Expansions. *Med Care.*
2020;58(6):526--533. [PMID 32205790](https://pubmed.ncbi.nlm.nih.gov/32205790/)


## Methods

### Data

- EHR plus Medicaid Analytic eXtract
- VA & Medicaid, 1999--2006
- States: {NY+, PA-}, {AZ+, NM-, NV-}.
- Pre-analysis definitions of: dual enrollment, calendar days with visits, "disease burden," income(?)

### Analytic

- Difference-in-difference analysis
- Exposure: Medicaid expansion (NY and AZ in 2001)
- Endpoints: dual enrollment, hospital admissions (per capita), ED visits (per capita)


## Results: After Medicaid expansion, \ldots

- Dual enrollment *increases.*
- VA share of hospital admits *decreases* (2--5 % points), and ER visits *decrease* (5--12 % points)
- Total hospital admits increase or equal, and ER visits + or - or =.

### Bottom line

Great example of a study that measured the **effect of a policy** on
several outcome variables derived from the EHR.




# 2: Delayed opioid dispensing[^kao]

[^kao]: Chua KP, Waljee JF, Smith MA, Bahl S, Nalliah RP, Brummett CM.
Estimation of the Prevalence of Delayed Dispensing Among Opioid
Prescriptions From US Surgeons and Dentists. *JAMA Netw Open.*
2022;5(5):e2214311. [PMID 35622363](https://pubmed.ncbi.nlm.nih.gov/35622363/)


## Methods

Delayed dispensing (definition):
: Dispensing > 30 days after writing. (Notable because Rx possibly used for unintended reasons/dates.)

### Data

- Deidentified prescription writing, fill date, *etc.* (not EHR)
- IQVIA Formulary Impact Analyzer ($\approx$ 63% of US Rx), 2014--2019
- Legal databases: NABPLAW (specific to pharmacy), Westlaw Edge
- Pre-analysis: opioids defined per list ($\approx$ 21) by IQVIA,
  specialty(?), dichotomized at 30 days

### Analytic

- Descriptive statistics (of laws)
- Difference-in-difference analysis
    - Exposure: Change in Minnesota law, July 2019 (30-day limit)
    - Endpoint: % of delayed opioid dispensing


### Bottom line

Again, able to measure the **effect of a policy** on an outcome
variable. In this case, not EHR data (could be done only in certain
EHRs).




# 3: Electronic quality measure[^DRM]

[^DRM]: Murphy DR, Zimolzak AJ, Upadhyay DK, *et al.* Developing
electronic clinical quality measures to assess the cancer diagnostic
process. *J Am Med Inform Assoc.* 2023;30(9):1526--1531. [PMID
37257883](https://pubmed.ncbi.nlm.nih.gov/37257883/)


## Methods

### Data

- EHR *plus* manual chart review
- VA and Geisinger, 2019
- Pre-analysis: multiple blood tests, stool tests, imaging tests (and
  definitions of abnormalities based on lab value cutoffs). Certain follow-up actions.

### Analytic

- Largely descriptive statistics
- Of those patients with an abnormal test, how many had follow-up
  action within an appropriate time?


## Results

|                    | VA colon | VA lung | Geisinger colon |
|--------------------|----------|---------|-----------------|
| *N* abnormal       | 74,314   | 40,924  | 2461            |
| *N* with follow-up | 26,783   | 25,166  | 1009 |
| Measure (%)        | 36.0     | 61.5    | 41.0 |
| Missed opportunity (%) | 70   | 27      | 60   |

### Bottom line

Created and validated a new EHR-based measure that:

a. future policy could use to promote quality (*e.g.,* creating an
   incentive payment for higher measure numbers), or

b. could be used to monitor the effect of a policy (retrospective or
   prospective)




## Thank you!

### Contact me or review materials:

- zimolzak@bcm.edu

- Source for this talk--- FIXME url in brackets

- This work © 2024 by Andrew Zimolzak is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

- Cite using doi: FIXME doi