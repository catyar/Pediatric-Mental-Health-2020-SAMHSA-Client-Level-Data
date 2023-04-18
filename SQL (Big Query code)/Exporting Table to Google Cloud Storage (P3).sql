-- this was attempted before deciding to connect to Jupyter Notebook instead of going through Google Cloud Storage

EXPORT DATA
OPTIONS (
  uri='gs://mh-analysis/mh_analysis_exports/*.csv',
  format='CSV',
  overwrite=true,
  header=true,
  field_delimiter=';' 
) AS SELECT * FROM mh_analysis_updated.mh_under18_labeled_fulldata ORDER BY CASEID;