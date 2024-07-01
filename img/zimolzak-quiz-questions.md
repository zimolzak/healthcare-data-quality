% Inquiry/FASTR Questions
% Andrew Zimolzak, MD, MMSc
% 2024




# Question 1

Data "cleaning" is (choose **all** that apply):

A. usually not appropriate to pursue, because the "raw" data is the most faithful to the true clincal situation.

B. straightforward, because it can always be compared to an external, gold standard source of truth.

C. mostly complete after we have excluded outliers that are not compatible with physiology, *e.g.,* weight 950 kg, or diastolic blood pressure 800 mmHg.

D. not practical for electronic health record data, because perfect accuracy cannot be assured in the limited time available.


## Solution

**None of the choices should be selected.**

A. Incorrect because data cleaning usually *should* be performed. Some analyses are not possible at all without some form of data cleaning. The process should not introduce any inaccuracy but aims to transform the data from a format used for patient care to a format useful for analysis.

B. Incorrect because an external source is *sometimes* but not *usually* available to corroborate data elements. Usually we have only one set of measurements per patient at a time point, and we don't know for certain whether they are correct.

C. Incorrect because this addresses only *plausibility.* Other key domains of data quality include *completeness* (what if data are missing or never collected) and *conformance* (data all using the same "language" to describe the same things).

D. Incorrect because adequate data cleaning can be accomplished with some effort, but it is not impractical or impossible.




# Question 2

BCM Information Technology has the **most** direct access to electronic health record data from which of the following? (Choose the one best answer.)

A. Baylor St.\ Luke's Medical Center (inpatient hospital)

B. Veterans Affairs (VA)

C. Memorial Hermann-Texas Medical Center

D. Baylor Medicine (outpatient, Baylor Clinic)


## Solution

**The correct answer is D, Baylor Medicine.**

A. BSLMC data are handled by BCM IT, but they do not directly control or retrieve these data, so this is not the best response.

B. VA is a BCM affiliate, but the data are external to BCM and governed by an entirely different data access process. BCM IT is not involved.

C. Memorial Hermann is not a BCM affiliate.

D. Baylor Medicine data are handled by BCM IT, who have direct access to these data. This is the best response.




# Question 3

Which of the following is **NOT** a problem with data completeness? (Choose the one best answer.)

A. A patient moves from Houston to New Orleans for a year, and when she moves back, her clinical lab tests from New Orleans do not appear in the BCM database.

B. A researcher wants to know if asthma control is associated with difficulty in traveling to medical appointments, but no data about patients' transportation is ever collected in structured data or clinical notes.

C. Serum sodium values are all stored in a database from 3 different VA hospitals, but they are named "Sodium," "Serum sodium," and "Serum Na," with no automated way to merge them.

D. The number of sodium labs in the database per year appears to drop by 30% because one of 3 hospitals becomes part of a different regional network.


## Solution

**The correct answer is C (inconsistent lab naming).**

A. The lab data from New Orleans were collected but are missing from the point of view of a researcher or clinician at BCM. They cannot easily determine what was/wasn't measured. This is a problem with completeness.

B. This social determinant of health is unfortunately not in the EHR in this example. The researcher will have to find another source for this data or investigate a different associateion. This is another form of data (in)completeness.

C. This is not a problem with data completeness, but with conformance. The data are all present, and the problem is not missing values, but inconsistent naming. This is the best response.

D. This is again a problem with data completeness. The data seem to become missing suddenly, which is similar to the patient changing health systems in option A, but at a larger scale.




# Question 4

Which of the following is **NOT** a commonly described domain of data
quality? (Choose the one best answer.)

A. Plausibility

B. Completeness

C. Conciseness

D. Conformance

E. Correctness


## Solution

**The correct answer is C, Conciseness.**

A. Plausibility is a commonly described domain, which has been defined as "the extent to which EHR data make
sense in a larger medical context." (Lewis *et al., JAMIA* 30:1730, PMID 37390812)

B. Completeness is defined simply as "the presence of data in the
EHR." It is probably the most commonly assessed dimension of data quality.

C. Conciseness is **not** mentioned in any of the lecture materials or papers cited. It is not a commonly assessed dimension of data quality, so this is the best response.

D. Conformance means "agreement with predefined formatting constraints," such as standardizing lab tests to the same units, or having only a short list of allowed units.

E. Correctness is "the truthfulness of data in the EHR."
