SELECT 
    job_title_short AS Title,
    job_location AS Location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS Date_time,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM
    job_postings_fact    
LIMIT 5;    