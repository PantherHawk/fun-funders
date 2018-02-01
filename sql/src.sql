-- 1) For each funding, return the funding_id and the agreement date.
SELECT funding_id, agreement_date
FROM FUNDINGS;

-- 2) Show me all attorneys that do NOT have a phone_number
SELECT *
FROM ATTORNEYS
WHERE phone_number IS NULL;

-- 3) What is the total amount advanced all time?
SELECT
  SUM(advance_amount) AS total_amt_advanced
FROM
  FUNDINGS;


-- 4) For every case, return the attorney’s phone number and email.
SELECT
  a.phone_number,
  a.email
FROM
  ATTORNEY AS a,
  CASES AS c
WHERE
  c.attorney_id = a.id;

-- 5) For every case, return the total amount funded.

-- Clarifying question, is total amount funded defined in the
-- Fundings table as "advance_amount"? If so the following query works.
SELECT
  f.advance_amount
FROM
  FUNDINGS AS f,
  CASES AS c
WHERE
  f.case_id = c.id;


-- 6) Return all cases that have attorney name is exactly “Sal Goodman”.
SELECT
  *
FROM
  CASES c
  JOIN ATTORNEYS a ON c.attorney_id = a.id
WHERE
  a.full_name = "Sal Goodman";


-- 7) Return all case types, sorted alphabetically by name.
SELECT
  type
FROM
  CASE_TYPE
ORDER BY
  type;


-- 8) Return all case types with the name of the case type and the number of cases of
-- that type, each in its own row, without duplicates.
-- case-type | # case-types
SELECT
  ct.type,
  COUNT(cases.case_type_id) AS num_of_cases
FROM
  CASE_TYPE AS ct
  LEFT JOIN CASES ON (cases.case_type_id = ct.id)
GROUP BY
  cases.case_type_id;

-- 9) Rank the case types by the most frequent (most number of cases) to the least
--frequent with the number of cases of each type.  case-type | rank
SELECT
  cases.type AS type,
  COUNT(cases.case_type_id) AS num_of_case
FROM
  CASE_TYPE AS ct
  LEFT JOIN CASES ON (cases.case_type_id = ct.id)
GROUP BY
  type
ORDER BY
  num_of_cases DESC;
-- select number of records in cases of a given case type
