-- https://school.programmers.co.kr/learn/courses/30/lessons/77487

SELECT *
FROM PLACES A
WHERE EXISTS (
    SELECT COUNT(*) AS CNT
    FROM PLACES B
    WHERE B.HOST_ID = A.HOST_ID
    GROUP BY HOST_ID
    HAVING CNT >= 2)
ORDER BY ID

# -- 코드를 입력하세요
# SELECT ID, NAME, HOST_ID
# FROM PLACES
# WHERE HOST_ID IN (
#     SELECT HOST_ID
#     FROM PLACES
#     GROUP BY HOST_ID HAVING COUNT(*)>=2)
# ORDER BY ID