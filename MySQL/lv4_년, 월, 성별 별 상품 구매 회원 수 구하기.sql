-- https://school.programmers.co.kr/learn/courses/30/lessons/131532

-- 코드를 입력하세요
SELECT YEAR(sales_date) as YEAR, MONTH(sales_date) as MONTH, GENDER, count(DISTINCT(O.USER_ID)) as UESRS
FROM USER_INFO U
JOIN ONLINE_SALE O
ON U.USER_ID = O.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER ASC