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

![](book.jpg){ height=75% }



## Layers of data quality (where things can go wrong)

From "little picture" to big picture:

1. Data itself (contents) is flawed
    - occasional errors, typos, *etc.*
    - low fidelity extraction
    - missing or highly missing
    - rampant errors or "near-lies"
2. Data need to be turned into *analytic dataset* (more later)
3. Data exist but are called 130 different things.
4. Data are called misleading things (names don't mean what clinicians think)
5. Data exist only in "free text"
    - Data can be auto-extracted but we must build that pipeline.
    - Data exist but need human judgment to extract.
6. Data you want aren't in here at all.


## What "data cleaning" means

If someone says "data cleaning," I recommend *having them explain* what they mean!

It's not "just filtering out obvious errors" like height = 6.1 inches.

It's not "throwing away outliers."



# When data contain errors

## Simple errors

::: columns

:::: column

![](72cm.jpg)

::::

:::: column

![](5-9inch.jpg)

::::

:::


## Statistical MVP

## Statistical mini-Sentinel

## More approaches

refs from MM et al

## Missing data

- under-recognized
- potentially massive threat to validity
- there is no one right way, but several wrong ways
- usually "not my department" and detailed methods out of scope
- "patient goes out of network" is another form of it

## Fidelity

Epic rich text issue

Matheny example of dates etc UTC



## Rampant errors

> If you don't understand the data generation process, you're gonna miss stuff.

---David Adams, PhD (Sr.\ software engineer at Verily). "Machine
Learning Isn’t Magic." HMS clinical informatics lecture series,
2018-04-24.





# Making an analytic dataset

## Definition

analytic dataset:
: insert definition here

Also known as "tidy."

## What to do with time series

many approaches.

what about derived things (BMI)



# Merging fragmented data

## Fillmore *et al.* lab data integration


# Unexpected data naming

## Example from BCM

`procedures` contains what?



# Extracting data from free text & beyond

## "Let's just do\ldots"

Notes have typos, nonstandard abbreviations, and incorrect
information, just like "structured" data.

Transcription errors. "Intrathecal DepoCyt" $\to$ "intrathecal etoposide"

## Ryu et al. auto extraction

## Harder than people think

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

- just taking the medication
- income. don't assume ZIP does it for you.




## Thank you!

### Contact me or review materials:

- zimolzak@bcm.edu

- Source for this talk--- <https://github.com/zimolzak/healthcare-data-quality>

- This work © 2024 by Andrew Zimolzak is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
