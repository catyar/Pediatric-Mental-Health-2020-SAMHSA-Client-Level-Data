-- Exploration query of dataset, decreasing table size to only look at ages under 18, and replacing provided numerical variables with string variable equivalents

Select *
from `mh_analysis_updated.updated_headers_table`
WHERE AGE BETWEEN 1 AND 3
ORDER BY AGE desc;
--1,915,199 rows

SELECT *,
  CASE WHEN AGE = 1 THEN "0-11 years"
   WHEN AGE = 2 THEN "12-14 years"
   WHEN AGE = 3 THEN "15-17 years"
  ELSE "Undefined" END AS age_range,
  
  CASE WHEN EDUCATION = 1 THEN "Special Education"
    WHEN EDUCATION = 2 THEN "0 to 8"
    WHEN EDUCATION = 3 THEN "9 to 11"
    WHEN EDUCATION = 4 THEN "12 or GED"
    WHEN EDUCATION = 5 THEN "More than 12"
  ELSE "Undefined" END AS educ_category,

  CASE WHEN ETHNICITY = 1 THEN "Mexican"
    WHEN ETHNICITY = 2 THEN "Puerto Rican"
    WHEN ETHNICITY = 3 THEN "Other Hispanic or Latino origin"
    WHEN ETHNICITY = 4 THEN "Not of Hispanic or Latino origin"
  ELSE "Undefined" END AS ethnicity_category,

  CASE WHEN RACE = 1 THEN "American Indian/Alaska Native"
    WHEN RACE = 2 THEN "Asian"
    WHEN RACE = 3 THEN "Black or African American"
    WHEN RACE = 4 THEN "Native Hawaiian or Other Pacific Islander"
    WHEN RACE = 5 THEN "White"
    WHEN RACE = 6 THEN "Some other race alone/two or more races"
  ELSE "Undefined" END AS race_label,

  CASE WHEN GENDER = 1 THEN "Male"
    WHEN GENDER = 2 THEN "Female"
  ELSE "Undefined" END AS sex, -- SAMHSA conflates the two in their survey although documentation states the GENDER column is actually labeling sex

  CASE WHEN STATE_PSYCHHOSP_SERVICES = 1 THEN "Yes"
    WHEN STATE_PSYCHHOSP_SERVICES = 2 THEN "No"
  ELSE "Undefined" END AS state_psych_hosp,

  CASE WHEN SMHA_COMM_PROGRAM = 1 THEN "Yes"
    WHEN SMHA_COMM_PROGRAM  = 2 THEN "No"
  ELSE "Undefined" END AS SMHAfundop_COMM_PROGRAM,

  CASE WHEN OTHER_PSYCH_INPATIENT = 1 THEN "Yes"
    WHEN OTHER_PSYCH_INPATIENT = 2 THEN "No"
  ELSE "Undefined" END AS served_other_psych_inp,

  CASE WHEN RESIDENTIAL_TREATMENT_CENTER = 1 THEN "Yes"
    WHEN RESIDENTIAL_TREATMENT_CENTER = 2 THEN "No"
  ELSE "Undefined" END AS res_treat, 

  CASE WHEN CARE_PROVIDED_UNDER_JUSTICE_SYSTEM = 1 THEN "Yes"
    WHEN CARE_PROVIDED_UNDER_JUSTICE_SYSTEM = 2 THEN "No"
  ELSE "Undefined" END AS under_justice_system, 

  CASE WHEN FIRST_MH_DIAGNOSIS = 1 THEN "Trauma- and stressor-related disorders"
    WHEN FIRST_MH_DIAGNOSIS = 2 THEN "Anxiety disorders"
    WHEN FIRST_MH_DIAGNOSIS = 3 THEN "ADHD"
    WHEN FIRST_MH_DIAGNOSIS = 4 THEN "Conduct Disorder"
    WHEN FIRST_MH_DIAGNOSIS = 5 THEN "Delirium, dementia "
    WHEN FIRST_MH_DIAGNOSIS = 6 THEN "Bipolar disorders"
    WHEN FIRST_MH_DIAGNOSIS = 7 THEN "Depressive disorders"
    WHEN FIRST_MH_DIAGNOSIS = 8 THEN "Oppositional defiant disorders"
    WHEN FIRST_MH_DIAGNOSIS = 9 THEN "Pervasive developmental disorders"
    WHEN FIRST_MH_DIAGNOSIS = 10 THEN "Personality disorders"
    WHEN FIRST_MH_DIAGNOSIS = 11 THEN "Schizophrenia or other psychotic disorders"
    WHEN FIRST_MH_DIAGNOSIS = 12 THEN "Alcohol or substance use disorders"
    WHEN FIRST_MH_DIAGNOSIS = 13 THEN "Other disorders/conditions"
  ELSE "Undefined" END AS mh_diag_1, 

  CASE WHEN SECOND_MH_DIAGNOSIS = 1 THEN "Trauma- and stressor-related disorders"
    WHEN SECOND_MH_DIAGNOSIS = 2 THEN "Anxiety disorders"
    WHEN SECOND_MH_DIAGNOSIS = 3 THEN "ADHD"
    WHEN SECOND_MH_DIAGNOSIS = 4 THEN "Conduct Disorder"
    WHEN SECOND_MH_DIAGNOSIS = 5 THEN "Delirium, dementia "
    WHEN SECOND_MH_DIAGNOSIS = 6 THEN "Bipolar disorders"
    WHEN SECOND_MH_DIAGNOSIS = 7 THEN "Depressive disorders"
    WHEN SECOND_MH_DIAGNOSIS = 8 THEN "Oppositional defiant disorders"
    WHEN SECOND_MH_DIAGNOSIS = 9 THEN "Pervasive developmental disorders"
    WHEN SECOND_MH_DIAGNOSIS = 10 THEN "Personality disorders"
    WHEN SECOND_MH_DIAGNOSIS = 11 THEN "Schizophrenia or other psychotic disorders"
    WHEN SECOND_MH_DIAGNOSIS = 12 THEN "Alcohol or substance use disorders"
    WHEN SECOND_MH_DIAGNOSIS = 13 THEN "Other disorders/conditions"
  ELSE "Undefined" END AS mh_diag_2, 

  CASE WHEN THIRD_MH_DIAGNOSIS = 1 THEN "Trauma- and stressor-related disorders"
    WHEN THIRD_MH_DIAGNOSIS = 2 THEN "Anxiety disorders"
    WHEN THIRD_MH_DIAGNOSIS = 3 THEN "ADHD"
    WHEN THIRD_MH_DIAGNOSIS = 4 THEN "Conduct Disorder"
    WHEN THIRD_MH_DIAGNOSIS = 5 THEN "Delirium, dementia "
    WHEN THIRD_MH_DIAGNOSIS = 6 THEN "Bipolar disorders"
    WHEN THIRD_MH_DIAGNOSIS = 7 THEN "Depressive disorders"
    WHEN THIRD_MH_DIAGNOSIS = 8 THEN "Oppositional defiant disorders"
    WHEN THIRD_MH_DIAGNOSIS = 9 THEN "Pervasive developmental disorders"
    WHEN THIRD_MH_DIAGNOSIS = 10 THEN "Personality disorders"
    WHEN THIRD_MH_DIAGNOSIS = 11 THEN "Schizophrenia or other psychotic disorders"
    WHEN THIRD_MH_DIAGNOSIS = 12 THEN "Alcohol or substance use disorders"
    WHEN THIRD_MH_DIAGNOSIS = 13 THEN "Other disorders/conditions"
  ELSE "Undefined" END AS mh_diag_3, 

  CASE WHEN SUBSTANCE_USE = 1 THEN "Alcohol-induced disorder"
    WHEN SUBSTANCE_USE = 2 THEN "Alcohol intoxication"
    WHEN SUBSTANCE_USE = 3 THEN "Substance-induced disorder"
    WHEN SUBSTANCE_USE = 4 THEN "Alcohol dependence"
    WHEN SUBSTANCE_USE = 5 THEN "Cocaine dependence"
    WHEN SUBSTANCE_USE = 6 THEN "Cannabis dependence"
    WHEN SUBSTANCE_USE = 7 THEN "Opiod dependence"
    WHEN SUBSTANCE_USE = 8 THEN "Other substance dependence "
    WHEN SUBSTANCE_USE = 9 THEN "Alcohol abuse"
    WHEN SUBSTANCE_USE = 10 THEN "Cocaine abuse"
    WHEN SUBSTANCE_USE = 11 THEN "Cannabis abuse"
    WHEN SUBSTANCE_USE = 12 THEN "Opiod abuse"
    WHEN SUBSTANCE_USE = 13 THEN "Other substance related conditions"
  ELSE "Undefined" END AS SUD, 

  CASE WHEN MARITAL_STAT = 1 THEN "Never married"
    WHEN MARITAL_STAT = 2 THEN "Now married"
    WHEN MARITAL_STAT = 3 THEN "Seperated"
    WHEN MARITAL_STAT = 4 THEN "Divorced, widowed"
  ELSE "Undefined" END AS marital_status, 

  CASE WHEN SERIOUS_MENTAL_EMOTIONAL_DIAG = 1 THEN "SMI"
    WHEN SERIOUS_MENTAL_EMOTIONAL_DIAG = 2 THEN "SED or at risk"
    WHEN SERIOUS_MENTAL_EMOTIONAL_DIAG = 3 THEN "Not SMI/SED"
  ELSE "Undefined" END AS SMI_SED, 

  CASE WHEN SUBSTANCE_USE_PROB = 1 THEN "Yes"
    WHEN SUBSTANCE_USE_PROB = 2 THEN "No"
  ELSE "Undefined" END AS SubstanceU_Prob, 

  CASE WHEN EMPLOYMENT = 1 THEN "Full-time"
    WHEN EMPLOYMENT = 2 THEN "Part-time"
    WHEN EMPLOYMENT = 3 THEN "Employed FT/PT"
    WHEN EMPLOYMENT = 4 THEN "Unemployed"
    WHEN EMPLOYMENT = 5 THEN "Not in labor force"
  ELSE "Undefined" END AS employment_status,

  CASE WHEN NOT_IN_LABOR_FORCE = 1 THEN "Retired, disabled"
    WHEN NOT_IN_LABOR_FORCE = 2 THEN "Student"
    WHEN NOT_IN_LABOR_FORCE = 3 THEN "Homemaker"
    WHEN NOT_IN_LABOR_FORCE = 4 THEN "Sheltered/non-competitive employment"
    WHEN NOT_IN_LABOR_FORCE = 5 THEN "Other"
  ELSE "Undefined" END AS not_in_labor_force_detailed,

  CASE WHEN VETERAN = 1 THEN "Yes"
    WHEN VETERAN = 2 THEN "No"
  ELSE "Undefined" END AS vet_status, 

  CASE WHEN RESIDENTIAL_STATUS = 1 THEN "Homeless"
    WHEN RESIDENTIAL_STATUS = 2 THEN "Private residence"
    WHEN RESIDENTIAL_STATUS = 3 THEN "Other"
    
  ELSE "Undefined" END AS residential_at_discharge_end,

  CASE WHEN STATE = 1 THEN "Alabama"
    WHEN STATE = 2 THEN "Alaska"
    WHEN STATE = 4 THEN "Arizona"
    WHEN STATE = 5 THEN "Arkansas"
    WHEN STATE = 6 THEN "California"
    WHEN STATE = 8 THEN "Colorado"
    WHEN STATE = 9 THEN "Connecticut"
    WHEN STATE = 10 THEN "Delaware"
    WHEN STATE = 11 THEN "D.C."
    WHEN STATE = 12 THEN "Florida"
    WHEN STATE = 13 THEN "Georgia"
    WHEN STATE = 15 THEN "Hawaii"
    WHEN STATE = 16 THEN "Idaho"
    WHEN STATE = 17 THEN "Illinois"
    WHEN STATE = 18 THEN "Indiana"
    WHEN STATE = 19 THEN "Iowa"
    WHEN STATE = 20 THEN "Kansas"
    WHEN STATE = 21 THEN "Kentucky"
    WHEN STATE = 22 THEN "Louisiana"
    WHEN STATE = 25 THEN "Massachusetts"
    WHEN STATE = 26 THEN "Michigan"
    WHEN STATE = 27 THEN "Minnesota"
    WHEN STATE = 28 THEN "Mississippi"
    WHEN STATE = 29 THEN "Missouri"
    WHEN STATE = 30 THEN "Montana"
    WHEN STATE = 31 THEN "Nebraska"
    WHEN STATE = 32 THEN "Nevada"
    WHEN STATE = 35 THEN "New Jersey"
    WHEN STATE = 35 THEN "New Mexico"
    WHEN STATE = 36 THEN "New York"
    WHEN STATE = 37 THEN "North Carolina"
    WHEN STATE = 38 THEN "North Dakota"
    WHEN STATE = 39 THEN "Ohio"
    WHEN STATE = 40 THEN "Oklahoma"
    WHEN STATE = 41 THEN "Oregon"
    WHEN STATE = 42 THEN "Pennsylvania"
    WHEN STATE = 44 THEN "Rhode Island"
    WHEN STATE = 45 THEN "South Carolina"
    WHEN STATE = 46 THEN "South Dakota"
    WHEN STATE = 47 THEN "Tennessee"
    WHEN STATE = 48 THEN "Texas"
    WHEN STATE = 49 THEN "Utah"
    WHEN STATE = 50 THEN "Vermont"
    WHEN STATE = 51 THEN "Virginia"
    WHEN STATE = 53 THEN "Washington"
    WHEN STATE = 55 THEN "Wisconsin"
    WHEN STATE = 56 THEN "Wyoming"
    WHEN STATE = 72 THEN "Puerto Rico"
  ELSE "Other" END AS reporting_state,

  CASE WHEN DIVISION = 1 THEN "New England"
    WHEN DIVISION = 2 THEN "Middle Atlantic"
    WHEN DIVISION = 3 THEN "East North Central"
    WHEN DIVISION = 4 THEN "West North Central"
    WHEN DIVISION = 5 THEN "South Atlantic"
    WHEN DIVISION = 6 THEN "East South Central"
    WHEN DIVISION = 7 THEN "West South Central"
    WHEN DIVISION = 8 THEN "Mountain"
    WHEN DIVISION = 9 THEN "Pacific"
  ELSE "Other jurisdictions" END AS census_division,

  CASE WHEN REGION = 1 THEN "Northeast"
    WHEN REGION = 2 THEN "Midwest"
    WHEN REGION = 3 THEN "South"
    WHEN REGION = 4 THEN "West"
  ELSE "Other jurisdictions" END AS census_region

FROM `mh_analysis_updated.mh_under18`
LIMIT 100; -- This is labeled "mh_under18_labeled" and going to be used to check that labels properly applied 

--check that labels applied (below queries run several times for various iterations to check results)
SELECT EDUCATION, educ_category
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE EDUCATION < 0; 

SELECT ETHNICITY, ethnicity_category
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE ETHNICITY < 0; 

SELECT RACE, race_label
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE RACE < 0; 

SELECT GENDER, sex
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE GENDER = 1; 

SELECT FIRST_MH_DIAGNOSIS, mh_diag_1
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE  FIRST_MH_DIAGNOSIS = 11;

SELECT FIRST_MH_DIAGNOSIS, mh_diag_1
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE  FIRST_MH_DIAGNOSIS < 0;

SELECT SECOND_MH_DIAGNOSIS, mh_diag_2
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE  SECOND_MH_DIAGNOSIS < 0;

SELECT THIRD_MH_DIAGNOSIS, count(distinct mh_diag_3)
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE  THIRD_MH_DIAGNOSIS < 0
GROUP BY THIRD_MH_DIAGNOSIS;

SELECT STATE, reporting_state
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE STATE = 6;

SELECT DIVISION, census_division
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE DIVISION = 1;

SELECT REGION, census_region
FROM `mh_analysis_updated.mh_under18_labeled`
WHERE REGION = 3;
--checks complete


-- Running for full dataset (under age 18)
SELECT *,
  CASE WHEN AGE = 1 THEN "0-11 years"
   WHEN AGE = 2 THEN "12-14 years"
   WHEN AGE = 3 THEN "15-17 years"
  ELSE "Undefined" END AS age_range,
  
  CASE WHEN EDUCATION = 1 THEN "Special Education"
    WHEN EDUCATION = 2 THEN "0 to 8"
    WHEN EDUCATION = 3 THEN "9 to 11"
    WHEN EDUCATION = 4 THEN "12 or GED"
    WHEN EDUCATION = 5 THEN "More than 12"
  ELSE "Undefined" END AS educ_category,

  CASE WHEN ETHNICITY = 1 THEN "Mexican"
    WHEN ETHNICITY = 2 THEN "Puerto Rican"
    WHEN ETHNICITY = 3 THEN "Other Hispanic or Latino origin"
    WHEN ETHNICITY = 4 THEN "Not of Hispanic or Latino origin"
  ELSE "Undefined" END AS ethnicity_category,

  CASE WHEN RACE = 1 THEN "American Indian/Alaska Native"
    WHEN RACE = 2 THEN "Asian"
    WHEN RACE = 3 THEN "Black or African American"
    WHEN RACE = 4 THEN "Native Hawaiian or Other Pacific Islander"
    WHEN RACE = 5 THEN "White"
    WHEN RACE = 6 THEN "Some other race alone/two or more races"
  ELSE "Undefined" END AS race_label,

  CASE WHEN GENDER = 1 THEN "Male"
    WHEN GENDER = 2 THEN "Female"
  ELSE "Undefined" END AS sex, -- SAMHSA conflates the two in their survey although documentation states the GENDER column is actually labeling sex

  CASE WHEN STATE_PSYCHHOSP_SERVICES = 1 THEN "Yes"
    WHEN STATE_PSYCHHOSP_SERVICES = 2 THEN "No"
  ELSE "Undefined" END AS state_psych_hosp,

  CASE WHEN SMHA_COMM_PROGRAM = 1 THEN "Yes"
    WHEN SMHA_COMM_PROGRAM  = 2 THEN "No"
  ELSE "Undefined" END AS SMHAfundop_COMM_PROGRAM,

  CASE WHEN OTHER_PSYCH_INPATIENT = 1 THEN "Yes"
    WHEN OTHER_PSYCH_INPATIENT = 2 THEN "No"
  ELSE "Undefined" END AS served_other_psych_inp,

  CASE WHEN RESIDENTIAL_TREATMENT_CENTER = 1 THEN "Yes"
    WHEN RESIDENTIAL_TREATMENT_CENTER = 2 THEN "No"
  ELSE "Undefined" END AS res_treat, 

  CASE WHEN CARE_PROVIDED_UNDER_JUSTICE_SYSTEM = 1 THEN "Yes"
    WHEN CARE_PROVIDED_UNDER_JUSTICE_SYSTEM = 2 THEN "No"
  ELSE "Undefined" END AS under_justice_system, 

  CASE WHEN FIRST_MH_DIAGNOSIS = 1 THEN "Trauma- and stressor-related disorders"
    WHEN FIRST_MH_DIAGNOSIS = 2 THEN "Anxiety disorders"
    WHEN FIRST_MH_DIAGNOSIS = 3 THEN "ADHD"
    WHEN FIRST_MH_DIAGNOSIS = 4 THEN "Conduct Disorder"
    WHEN FIRST_MH_DIAGNOSIS = 5 THEN "Delirium, dementia "
    WHEN FIRST_MH_DIAGNOSIS = 6 THEN "Bipolar disorders"
    WHEN FIRST_MH_DIAGNOSIS = 7 THEN "Depressive disorders"
    WHEN FIRST_MH_DIAGNOSIS = 8 THEN "Oppositional defiant disorders"
    WHEN FIRST_MH_DIAGNOSIS = 9 THEN "Pervasive developmental disorders"
    WHEN FIRST_MH_DIAGNOSIS = 10 THEN "Personality disorders"
    WHEN FIRST_MH_DIAGNOSIS = 11 THEN "Schizophrenia or other psychotic disorders"
    WHEN FIRST_MH_DIAGNOSIS = 12 THEN "Alcohol or substance use disorders"
    WHEN FIRST_MH_DIAGNOSIS = 13 THEN "Other disorders/conditions"
  ELSE "Undefined" END AS mh_diag_1, 

  CASE WHEN SECOND_MH_DIAGNOSIS = 1 THEN "Trauma- and stressor-related disorders"
    WHEN SECOND_MH_DIAGNOSIS = 2 THEN "Anxiety disorders"
    WHEN SECOND_MH_DIAGNOSIS = 3 THEN "ADHD"
    WHEN SECOND_MH_DIAGNOSIS = 4 THEN "Conduct Disorder"
    WHEN SECOND_MH_DIAGNOSIS = 5 THEN "Delirium, dementia "
    WHEN SECOND_MH_DIAGNOSIS = 6 THEN "Bipolar disorders"
    WHEN SECOND_MH_DIAGNOSIS = 7 THEN "Depressive disorders"
    WHEN SECOND_MH_DIAGNOSIS = 8 THEN "Oppositional defiant disorders"
    WHEN SECOND_MH_DIAGNOSIS = 9 THEN "Pervasive developmental disorders"
    WHEN SECOND_MH_DIAGNOSIS = 10 THEN "Personality disorders"
    WHEN SECOND_MH_DIAGNOSIS = 11 THEN "Schizophrenia or other psychotic disorders"
    WHEN SECOND_MH_DIAGNOSIS = 12 THEN "Alcohol or substance use disorders"
    WHEN SECOND_MH_DIAGNOSIS = 13 THEN "Other disorders/conditions"
  ELSE "Undefined" END AS mh_diag_2, 

  CASE WHEN THIRD_MH_DIAGNOSIS = 1 THEN "Trauma- and stressor-related disorders"
    WHEN THIRD_MH_DIAGNOSIS = 2 THEN "Anxiety disorders"
    WHEN THIRD_MH_DIAGNOSIS = 3 THEN "ADHD"
    WHEN THIRD_MH_DIAGNOSIS = 4 THEN "Conduct Disorder"
    WHEN THIRD_MH_DIAGNOSIS = 5 THEN "Delirium, dementia "
    WHEN THIRD_MH_DIAGNOSIS = 6 THEN "Bipolar disorders"
    WHEN THIRD_MH_DIAGNOSIS = 7 THEN "Depressive disorders"
    WHEN THIRD_MH_DIAGNOSIS = 8 THEN "Oppositional defiant disorders"
    WHEN THIRD_MH_DIAGNOSIS = 9 THEN "Pervasive developmental disorders"
    WHEN THIRD_MH_DIAGNOSIS = 10 THEN "Personality disorders"
    WHEN THIRD_MH_DIAGNOSIS = 11 THEN "Schizophrenia or other psychotic disorders"
    WHEN THIRD_MH_DIAGNOSIS = 12 THEN "Alcohol or substance use disorders"
    WHEN THIRD_MH_DIAGNOSIS = 13 THEN "Other disorders/conditions"
  ELSE "Undefined" END AS mh_diag_3, 

  CASE WHEN SUBSTANCE_USE = 1 THEN "Alcohol-induced disorder"
    WHEN SUBSTANCE_USE = 2 THEN "Alcohol intoxication"
    WHEN SUBSTANCE_USE = 3 THEN "Substance-induced disorder"
    WHEN SUBSTANCE_USE = 4 THEN "Alcohol dependence"
    WHEN SUBSTANCE_USE = 5 THEN "Cocaine dependence"
    WHEN SUBSTANCE_USE = 6 THEN "Cannabis dependence"
    WHEN SUBSTANCE_USE = 7 THEN "Opiod dependence"
    WHEN SUBSTANCE_USE = 8 THEN "Other substance dependence "
    WHEN SUBSTANCE_USE = 9 THEN "Alcohol abuse"
    WHEN SUBSTANCE_USE = 10 THEN "Cocaine abuse"
    WHEN SUBSTANCE_USE = 11 THEN "Cannabis abuse"
    WHEN SUBSTANCE_USE = 12 THEN "Opiod abuse"
    WHEN SUBSTANCE_USE = 13 THEN "Other substance related conditions"
  ELSE "Undefined" END AS SUD, 

  CASE WHEN MARITAL_STAT = 1 THEN "Never married"
    WHEN MARITAL_STAT = 2 THEN "Now married"
    WHEN MARITAL_STAT = 3 THEN "Seperated"
    WHEN MARITAL_STAT = 4 THEN "Divorced, widowed"
  ELSE "Undefined" END AS marital_status, 

  CASE WHEN SERIOUS_MENTAL_EMOTIONAL_DIAG = 1 THEN "SMI"
    WHEN SERIOUS_MENTAL_EMOTIONAL_DIAG = 2 THEN "SED or at risk"
    WHEN SERIOUS_MENTAL_EMOTIONAL_DIAG = 3 THEN "Not SMI/SED"
  ELSE "Undefined" END AS SMI_SED, 

  CASE WHEN SUBSTANCE_USE_PROB = 1 THEN "Yes"
    WHEN SUBSTANCE_USE_PROB = 2 THEN "No"
  ELSE "Undefined" END AS SubstanceU_Prob, 

  CASE WHEN EMPLOYMENT = 1 THEN "Full-time"
    WHEN EMPLOYMENT = 2 THEN "Part-time"
    WHEN EMPLOYMENT = 3 THEN "Employed FT/PT"
    WHEN EMPLOYMENT = 4 THEN "Unemployed"
    WHEN EMPLOYMENT = 5 THEN "Not in labor force"
  ELSE "Undefined" END AS employment_status,

  CASE WHEN NOT_IN_LABOR_FORCE = 1 THEN "Retired, disabled"
    WHEN NOT_IN_LABOR_FORCE = 2 THEN "Student"
    WHEN NOT_IN_LABOR_FORCE = 3 THEN "Homemaker"
    WHEN NOT_IN_LABOR_FORCE = 4 THEN "Sheltered/non-competitive employment"
    WHEN NOT_IN_LABOR_FORCE = 5 THEN "Other"
  ELSE "Undefined" END AS not_in_labor_force_detailed,

  CASE WHEN VETERAN = 1 THEN "Yes"
    WHEN VETERAN = 2 THEN "No"
  ELSE "Undefined" END AS vet_status, 

  CASE WHEN RESIDENTIAL_STATUS = 1 THEN "Homeless"
    WHEN RESIDENTIAL_STATUS = 2 THEN "Private residence"
    WHEN RESIDENTIAL_STATUS = 3 THEN "Other"
  ELSE "Undefined" END AS residential_at_discharge_end,

  CASE WHEN STATE = 1 THEN "Alabama"
    WHEN STATE = 2 THEN "Alaska"
    WHEN STATE = 4 THEN "Arizona"
    WHEN STATE = 5 THEN "Arkansas"
    WHEN STATE = 6 THEN "California"
    WHEN STATE = 8 THEN "Colorado"
    WHEN STATE = 9 THEN "Connecticut"
    WHEN STATE = 10 THEN "Delaware"
    WHEN STATE = 11 THEN "D.C."
    WHEN STATE = 12 THEN "Florida"
    WHEN STATE = 13 THEN "Georgia"
    WHEN STATE = 15 THEN "Hawaii"
    WHEN STATE = 16 THEN "Idaho"
    WHEN STATE = 17 THEN "Illinois"
    WHEN STATE = 18 THEN "Indiana"
    WHEN STATE = 19 THEN "Iowa"
    WHEN STATE = 20 THEN "Kansas"
    WHEN STATE = 21 THEN "Kentucky"
    WHEN STATE = 22 THEN "Louisiana"
    WHEN STATE = 25 THEN "Massachusetts"
    WHEN STATE = 26 THEN "Michigan"
    WHEN STATE = 27 THEN "Minnesota"
    WHEN STATE = 28 THEN "Mississippi"
    WHEN STATE = 29 THEN "Missouri"
    WHEN STATE = 30 THEN "Montana"
    WHEN STATE = 31 THEN "Nebraska"
    WHEN STATE = 32 THEN "Nevada"
    WHEN STATE = 35 THEN "New Jersey"
    WHEN STATE = 35 THEN "New Mexico"
    WHEN STATE = 36 THEN "New York"
    WHEN STATE = 37 THEN "North Carolina"
    WHEN STATE = 38 THEN "North Dakota"
    WHEN STATE = 39 THEN "Ohio"
    WHEN STATE = 40 THEN "Oklahoma"
    WHEN STATE = 41 THEN "Oregon"
    WHEN STATE = 42 THEN "Pennsylvania"
    WHEN STATE = 44 THEN "Rhode Island"
    WHEN STATE = 45 THEN "South Carolina"
    WHEN STATE = 46 THEN "South Dakota"
    WHEN STATE = 47 THEN "Tennessee"
    WHEN STATE = 48 THEN "Texas"
    WHEN STATE = 49 THEN "Utah"
    WHEN STATE = 50 THEN "Vermont"
    WHEN STATE = 51 THEN "Virginia"
    WHEN STATE = 53 THEN "Washington"
    WHEN STATE = 55 THEN "Wisconsin"
    WHEN STATE = 56 THEN "Wyoming"
    WHEN STATE = 72 THEN "Puerto Rico"
  ELSE "Other" END AS reporting_state,

  CASE WHEN DIVISION = 1 THEN "New England"
    WHEN DIVISION = 2 THEN "Middle Atlantic"
    WHEN DIVISION = 3 THEN "East North Central"
    WHEN DIVISION = 4 THEN "West North Central"
    WHEN DIVISION = 5 THEN "South Atlantic"
    WHEN DIVISION = 6 THEN "East South Central"
    WHEN DIVISION = 7 THEN "West South Central"
    WHEN DIVISION = 8 THEN "Mountain"
    WHEN DIVISION = 9 THEN "Pacific"
  ELSE "Other jurisdictions" END AS census_division,

  CASE WHEN REGION = 1 THEN "Northeast"
    WHEN REGION = 2 THEN "Midwest"
    WHEN REGION = 3 THEN "South"
    WHEN REGION = 4 THEN "West"
  ELSE "Other jurisdictions" END AS census_region

FROM `mh_analysis_updated.mh_under18`;
--1,915,199 rows

/*
  UPDATE `mh_analysis_updated.mh_under18`
    SET AGE =  CASE WHEN AGE = 1 THEN "0-11 years"
      WHEN AGE = 2 THEN "12-14 years"
      WHEN AGE = 2 THEN "15-17 years"
      ELSE "Undefined" END 
  WHERE AGE IN (1,2,3) */ -- This doesn't work in BQ as does not currently allow for datatype change */