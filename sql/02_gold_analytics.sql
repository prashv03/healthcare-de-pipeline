
-- 1. Admissions by medical condition
SELECT
    medical_condition,
    COUNT(*) AS total_admissions
FROM admissions
GROUP BY medical_condition
ORDER BY total_admissions DESC;


-- 2. Average billing by admission type
SELECT
    admission_type,
    COUNT(*) AS total_admissions,
    ROUND(AVG(billing_amount), 2) AS average_billing
FROM admissions
GROUP BY admission_type
ORDER BY average_billing DESC;


-- 3. Monthly admissions
SELECT
    DATE_TRUNC('month', admission_date)::date AS admission_month,
    COUNT(*) AS total_admissions
FROM admissions
GROUP BY DATE_TRUNC('month', admission_date)
ORDER BY admission_month;
