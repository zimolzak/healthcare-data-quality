---
title: Electronic Health Record Data Quality
author: Andrew Zimolzak, MD, MMSc
date: May, 2024
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




## Thank you!

### Contact me or review materials:

- zimolzak@bcm.edu

- Source for this talk--- FIXME url in brackets

- This work © 2024 by Andrew Zimolzak is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

- Cite using doi: FIXME doi
