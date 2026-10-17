
-- Total and unique admission IDs
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT admission_id) AS unique_ids
FROM admissions;


-- Records with invalid date ranges
SELECT COUNT(*) AS invalid_dates
FROM admissions
WHERE discharge_date < admission_date;


-- New records inserted by the incoming batch
SELECT COUNT(*) AS new_records
FROM admissions
WHERE admission_id LIKE 'ADMNEW%';
