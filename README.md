# Pediatric-Mental-Health-2020-SAMHSA-Client-Level-Data

The final deliverable can be found here: https://public.tableau.com/app/profile/catherine2385/viz/PediatricMentalHealth-2020SAMHSAClient-LevelData/PediatricMentalHealth2020-SAMHSAClient-LevelData

Project Objectives:
- Understand the use of treatment services, demographics, and characteristics of minors (children under 18 years of age) serviced through state mental health agencies
- Assess the comorbidity of mental health diagnoses for this population
- Provide state agencies with more information on the pediatric populations they are serving by understanding mental health needs in their state(s)

The Data:
- Provided by Substance Abuse and Mental Health Services Administration (SAMHSA)
- Looks at Mental Health Client-Level Data (MH-CLD) system which provides information on mental health diagnoses and the mental health treatment services, outcomes, and demographic and substance use characteristics of individuals in mental health treatment facilities. 

Time Frame:
-  Data collected by SAMHSA for 2020 fiscal year
 - Most states have a July 1  through June 30 fiscal year, but FY2020 may also be defined on an October through September fiscal year, a lagged fiscal year, or both  for some states.

Limitations Of The Data
- Dataset does not represent all national demand for mental health services
- Only includes data from facilities that operate under the authority of their state mental health administration 
- Some values populated as Missing/Unknown/Not collected/invalid across most columns; These were labeled as "Undefined" throughout the analysis. 

Methodology:
- Data for this report was accessed through the SAMHSA website (www.samhsa.gov/data) and downloaded locally in CSV format. This data was then accessed and transformed via Jupyter Notebook and Big Query. Some data was processed via Excel (see: Comorbidity dashboards). 
- The python libraries used included: pandas, numpy, dask.dataframe, statistics, pandas_gbq, os, google-cloud-storage, google-cloud-bigquery[pandas], google-cloud.

Data was downloaded from https://www.samhsa.gov/data/data-we-collect/mh-cld-mental-health-client-level-data 

The data comes with a codebook, which was used to decipher the variables in the data: https://www.datafiles.samhsa.gov/sites/default/files/field-uploads-protected/studies/MH-CLD-2020/MH-CLD-2020-datasets/MH-CLD-2020-DS0001/MH-CLD-2020-DS0001-info/MH-CLD-2020-DS0001-info-codebook.pdf 

One section of the analysis also looks at population information, and thus includes data from https://cwoutcomes.acf.hhs.gov/cwodatasite/population/index 

This project was completed as the capstone for Virginia Tech's Data Analytics Bootcamp (2023). 
