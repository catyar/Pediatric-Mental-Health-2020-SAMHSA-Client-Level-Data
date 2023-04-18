-- Cleaning Table to remove intial columns with numeric variables, and replace them with string variable equivalent columns

ALTER TABLE
  `mh-analysis-382220.mh_analysis_updated.mh_under18_labeled_fulldata` DROP COLUMN int64_field_0,  
  DROP COLUMN AGE,
  DROP COLUMN EDUCATION,
  DROP COLUMN ETHNICITY,
  DROP COLUMN RACE,
  DROP COLUMN GENDER,
  DROP COLUMN STATE_PSYCHHOSP_SERVICES,
  DROP COLUMN SMHA_COMM_PROGRAM,
  DROP COLUMN OTHER_PSYCH_INPATIENT,
  DROP COLUMN RESIDENTIAL_TREATMENT_CENTER,
  DROP COLUMN CARE_PROVIDED_UNDER_JUSTICE_SYSTEM,
  DROP COLUMN FIRST_MH_DIAGNOSIS,
  DROP COLUMN SECOND_MH_DIAGNOSIS,
  DROP COLUMN THIRD_MH_DIAGNOSIS,
  DROP COLUMN SUBSTANCE_USE,
  DROP COLUMN MARITAL_STAT,
  DROP COLUMN SERIOUS_MENTAL_EMOTIONAL_DIAG,
  DROP COLUMN SUBSTANCE_USE_PROB,
  DROP COLUMN EMPLOYMENT,
  DROP COLUMN NOT_IN_LABOR_FORCE,
  DROP COLUMN VETERAN,
  DROP COLUMN RESIDENTIAL_STATUS,
  DROP COLUMN STATE,
  DROP COLUMN DIVISION,
  DROP COLUMN REGION;

ALTER TABLE
  `mh-analysis-382220.mh_analysis_updated.mh_under18_labeled_fulldata` DROP COLUMN int64_field_0;

select COUNT(*)
from `mh_analysis_updated.mh_under18_labeled_fulldata`;
--rows 1915199
--copy has 65 columns (fields), edited version has 40 fields, dropped 25 fields, so edit is correct

--check for duplicates
SELECT
    *, COUNT(*)
FROM
    `mh_analysis_updated.mh_under18_labeled_fulldata`
GROUP BY
    YEAR,NUMBER_OF_DIAGNOSES,TRAUMA_STRESS_DISORDER, ANXIETY_DIS, ADHD_DIS, CONDUCT_DIS,DIMENTIA_DIL_DIS, BIPOLAR_DIS, DEPRESSIVE_DIS, OPPOSITIONAL_DEFIANT_DIS, PDEVELOPMENTAL_DIS, PERSONALITY_DIS, SCHIZOPHRENIA_or_PSYCHOTIC_DIS, ALC_SUB_DIS, OTHER_DIS, CASEID, age_range, educ_category, ethnicity_category, race_label, sex, state_psych_hosp, SMHAfundop_COMM_PROGRAM, served_other_psych_inp, res_treat, under_justice_system, mh_diag_1, mh_diag_2, mh_diag_3, SUD, marital_status, SMI_SED, SubstanceU_Prob, employment_status, not_in_labor_force_detailed, vet_status, residential_at_discharge_end, reporting_state, census_division, census_region
HAVING 
    COUNT(*) > 1;
--no duplicates