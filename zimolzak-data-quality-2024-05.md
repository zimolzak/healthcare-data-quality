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
Springer Cham, 2016. [Click for **free** access!](https://link.springer.com/book/10.1007/978-3-319-43742-2)

![](book.jpg){ height=75% }


## Layers of data quality (where things can go wrong)

From "little picture" to big picture:

1. Data itself (contents) is flawed
    - occasional errors, typos, misunderstandings, *etc.*
    - low fidelity extraction
    - missing or highly missing
    - rampant errors or "practically lies"
2. Data exist but are called 130 different things.
3. Data fields called misleading things (names don't mean what clinicians think)
4. Data need to be turned into *analytic dataset* (more later)
5. Data exist only in "free text"
    - Data can be auto-extracted but we must build that pipeline.
    - Data exist but need human judgment to extract.
6. Data you want aren't in here at all.


## What "data cleaning" means

If someone says "data cleaning," I recommend *having them explain* what they mean!

It's not "just filtering out obvious errors" like height = 6.1 inches.

It's not "throwing away outliers."




# Data quality frameworks

## Simple errors (what many people think "data cleaning" is)

::: columns
:::: column
![Plausible length for 6--13 month-old, not a retired veteran](72cm.jpg)
::::
:::: column
![Are you sure you want to correct the BMI = 4484?](5-9inch.jpg)
::::
:::


## General references

Some authors[^weis] say five domains: completeness, correctness,
concordance, plausibility, and currency. Several literature
reviews,[^lit]

[^lit]: Liaw ST, Guo JGN, Ansari S, *et al.* Quality assessment of real-world data repositories across the data life cycle: A literature review. *J Am Med Inform Assoc.* 2021;28(7):1591--1599. [PMID: 33496785](https://pubmed.ncbi.nlm.nih.gov/33496785/)

[^weis]: Weiskopf NG, Weng C. Methods and dimensions of electronic health record data quality assessment: enabling reuse for clinical research. *J Am Med Inform Assoc.* 2013;20(1):141--151. [PMID: 22733976](https://pubmed.ncbi.nlm.nih.gov/22733976/)


## Most recent systematic review

the most recent of which[^seven] says 7 domains.
However, no "standard approach for assessing EHR data quality", so
"Guidelines are needed for EHR data quality assessment\ldots."

- completeness, followed by
- correctness,
- concordance,
- plausibility, and
- currency.
- conformance
- bias

[^seven]: Lewis AE, Weiskopf N, Abrams ZB, *et al.* Electronic health record data quality assessment and tools: a systematic review. *J Am Med Inform Assoc.* 2023;30(10):1730--1740. [PMID: 37390812](https://pubmed.ncbi.nlm.nih.gov/37390812/)


## More approaches

Three categories in 2016: conformance, completeness,
plausibility.[^kahn] And five from 2018: accuracy, completeness,
consistency, credibility, and timeliness.[^feder] Also straightforward list of "Approaches for quality appraisal:"

- data validation with data rules
- verification of abstraction with statistical measures
- data comparisons with manual chart review
- management of missing data using statistical methods
- data triangulation between multiple EHR databases

[^feder]: Feder SL. Data Quality in Electronic Health Records Research: Quality Domains and Assessment Methods. *West J Nurs Res.* 2018;40(5):753--766. [PMID: 28322657](https://pubmed.ncbi.nlm.nih.gov/28322657/)

[^kahn]: Kahn MG, Callahan TJ, Barnard J, *et al.* A Harmonized Data Quality Assessment Terminology and Framework for the Secondary Use of Electronic Health Record Data. *EGEMS (Wash DC).* 2016;4(1):1244. [PMID: 27713905](https://pubmed.ncbi.nlm.nih.gov/27713905/)


## Summary

Author $\to$      Lewis23    Weis13   Kahn16   Feder18         Wang21
--------          ----       ----     ----     ----            ----
**Completeness**  +          +        +        +               +
Correctness       +          +                 +
Concordance       +          +                 "consistency"
**Plausibility**  +          +        +        "credibility"   +
Currency          +          +                 +
Conformance       +                   +                        +
Bias              +




# Data quality, advanced

## Statistical MVP[^mvp]

- Prior work tries to "detect the implausible numbers using prespecified thresholds\ldots."

- domains: conformance, completeness, and plausibility

FIXME what did they find?

[^mvp]: Wang H, Belitskaya-Levy I, Wu F, *et al.* A statistical quality
assessment method for longitudinal observations in electronic health
record data with an application to the VA million veteran program.
*BMC Med Inform Decis Mak.* 2021;21(1):289. [PMID: 34670548](https://pubmed.ncbi.nlm.nih.gov/34670548/)


## Statistical mini-Sentinel[^mini]

### Harder than expected

> [S]ome data partners found LOINC associated with essentially all
> results, others had LOINC associated with some results, and others
> found no LOINC in source data.

### How they follow data quality

> Checks included assessment of variable completeness, consistency,
> content, alignment with speciﬁcations, patterns, and trends. Data
> distributions are examined over time within and between MSDD
> refreshes


[^mini]: Raebel MA, Haynes K, Woodworth TS, *et al.* Electronic clinical laboratory test results data tables: lessons from Mini-Sentinel. *Pharmacoepidemiol Drug Saf.* 2014;23(6):609--618. [PMID: 24677577](https://pubmed.ncbi.nlm.nih.gov/24677577/)


## When lab tests disappear/reappear

![](inr-down-up.jpg){ height=75% }


## A bit of a mess

![](platelet.png)


## Missing data

- under-recognized
- potentially massive threat to validity
- there is no one right way, but several wrong ways
- usually "not my department," and detailed methods are out of scope.
- "patient goes out of network" is another form of it


## Fidelity

![Image search: rich text progress note templates](richtext1.png){ height=75% }


## Rich text example 2

![](richtext2.png)


## How you receive the note

`Discharge Physician: Zzzz, MD Discharge Diagnosis: 1. Chest pain, resolved 2. Hypotension, resolved 3. ESRD on HD Patient Active Problem List Diagnosis Date Noted • Respiratory insufficiency xx/20xx • Septic shock (HCC) xx/20xx • Community acquired bacterial pneumonia xx/20xx Flowsheet Rows Flowsheet Row Most Recent Value Malnutrition Evaluation Does not meet criteria for protein-calorie malnutrition Discharge Vitals: Vitals: xx/20xx BP: Pulse: 100 Resp: 18 Temp: SpO2: 99% Discharge Labs: Lab Results Component Value Date WBC 6.0 xx/20xx HGB 8.8 (L) xx/20xx HCT 25.4 (L) xx/20xx MCV 92 xx/20xx PLT 181 xx/20xx Lab Results Component Value Date GLUCOSE 85 xx/20xx CALCIUM 9.8 xx/20xx NA 133 (L) xx/20xx K 4.0 xx/20xx CO2 23 xx/20xx CL 95 (L) xx/20xx BUN 54 (H) xx/20xx CREATININE 13.0 (H) xx/20xx Discharged Condition: fair Consults: Treatment Team: Consulting Physician: Zzzz, MD Consulting Physician: Zzzz, MD`


## Fidelity

FIXME Matheny example of dates etc UTC


## Rampant errors

> If you don't understand the data generation process, you're gonna miss stuff.

---David Adams, PhD (Sr.\ software engineer at Verily). "Machine
Learning Isn’t Magic." HMS clinical informatics lecture series,
2018-04-24.




# Merging fragmented data

## Data integration or harmonization[^nate]

![](nate.png){ height=75% }

[^nate]: Fillmore N, Do N, Brophy M, Zimolzak A. Interactive Machine Learning for Laboratory Data Integration. *Stud Health Technol Inform.* 2019;264:133--137. [PMID: 31437900](https://pubmed.ncbi.nlm.nih.gov/31437900/)


## Unexpected data naming: Real-life examples

`procedures` contains what?

`discharge` column FIXME image from GSBS talk




# Making an analytic dataset

## Definition

analytic dataset:
: FIXME insert definition here

Also known as "tidy."

Also known as "wide."


## What EHRs are really like

FIXME table names


## What to do with time series

many approaches.

what about derived things (BMI)












# Extracting data from free text & beyond

## "Let's just do\ldots"

Notes have typos, nonstandard abbreviations, and incorrect
information, just like "structured" data.

Transcription errors. "Intrathecal DepoCyt" $\to$ "intrathecal etoposide"


## Automated information extraction from text[^ryu]

Rules-based and machine learning approaches work! But the problem was selected carefully.

![](ryu.jpg){ height=60% }

[^ryu]: Ryu JH, Zimolzak AJ. Natural Language Processing of Serum Protein Electrophoresis Reports in the Veterans Affairs Health Care System. *JCO Clin Cancer Inform.* 2020;4:749--756. [PMID: 32813561](https://pubmed.ncbi.nlm.nih.gov/32813561/)


## Machine learning: harder than people think

Labeling data is *expensive!* How did Google/Verily train a convolutional neural net to interpret retinal fundus photographs?[^gulshan]

![](labeling.png)

$(3 \ldots 7) \times 128,000 + 8 \times 9963 + 7 \times 1748 =$

- 476,000 to 989,000 retinal imaging reads


## Cost of labeling data

- 476,000 to 989,000 retinal imaging reads
- A random article I found[^ijta] says 44 reads / hour
- 11k to 22k person-hours
- 5--11 *working years*
- 1.4--2.8 **million dollars!** (Before you do any computing at all)

That is *just* to score images on "referable" diabetic retinopathy. No other features of retina whatsoever.

[^ijta]: Kolomeyer *et al. International Journal of Telemedicine and Applications* 2012.

[^gulshan]: Gulshan *et al. JAMA* 2016.


## When data aren't in there

- medication fills
- just taking the medication
- income. don't assume ZIP does it for you.




# Conclusions

## Reusing EHR data is not what you may think\ldots

- Data are entered in "funny ways."
    - Well-meaning people enter the wrong number.
    - People "just click through" because they're busy.
    - It's surprisingly hard to "prove" the numbers are wrong.
    - Medical testing is *extremely* non-random!
- Just because the table is named `procedures` doesn't mean\ldots
- "Reshaping" data is a lot of work.
- The data may be "in there" but hard to get.
- The data may not be "in there" at all (system was not designed for it).

\ldots and yet, people manage to use EHR data for research!

### If you never tried swimming, don't jump in the deep end without a lifeguard.


## Thank you!

### Contact me or review materials:

- zimolzak@bcm.edu

- Source for this talk (make corrections/suggestions)--- <https://github.com/zimolzak/healthcare-data-quality>

- This work © 2024 by Andrew Zimolzak is licensed under CC BY-NC-SA 4.0, [click for license details](https://creativecommons.org/licenses/by-nc-sa/4.0/)
