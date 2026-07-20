-- -- January
-- CREATE TABLE january_jobs AS
-- SELECT *
-- FROM job_postings_fact
-- WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

-- -- February
-- CREATE TABLE february_jobs AS
-- SELECT *
-- FROM job_postings_fact
-- WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

-- -- March
-- CREATE TABLE march_jobs AS
-- SELECT *
-- FROM job_postings_fact
-- WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

-- SELECT job_posted_date
-- FROM february_jobs;



-- SELECT
--     job_title_short,
--     job_location,
--     CASE
--         WHEN job_location = 'Anywhere' THEN 'Remote'
--         WHEN job_location = 'New York' THEN 'Local'
--         ELSE 'ONSITE'
--         END AS location_category
-- FROM
--     job_postings_fact;


-- SELECT
--     COUNT(job_id) AS total_jobs,
--     CASE
--         WHEN job_location = 'Anywhere' THEN 'Remote'
--         WHEN job_location = 'New York' THEN 'Local'
--         ELSE 'ONSITE'
--         END AS location_category
-- FROM
--     job_postings_fact
-- WHERE
--     job_title_short = 'Data Analyst'    
-- GROUP BY
--     location_category;




-- SELECT
--     AVG(salary_year_avg) AS avg_salary,
--     CASE
--         WHEN AVG(salary_year_avg) >= 100000 THEN 'HIGH'
--         WHEN AVG(salary_year_avg) >= 70000 THEN 'MEDIUM'
--         ELSE 'LOW'
--     END AS salary_category
-- FROM
--     job_postings_fact
-- WHERE
--     job_title_short = 'Data Analyst'AND salary_year_avg IS NOT NULL;



-- SELECT
--     job_title_short,
--     AVG(salary_year_avg) AS avg_salary,
--     CASE
--         WHEN AVG(salary_year_avg) >= 100000 THEN 'HIGH'
--         WHEN AVG(salary_year_avg) >= 70000 THEN 'MEDIUM'
--         ELSE 'LOW'
--     END AS salary_category
-- FROM
--     job_postings_fact
-- WHERE
--     salary_year_avg IS NOT NULL
-- GROUP BY
--     job_title_short
-- ORDER BY
--     avg_salary DESC;
