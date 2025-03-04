-- https://school.programmers.co.kr/learn/courses/30/lessons/151139

-- 코드를 입력하세요
# 월_기준 오름차순, 자동차_ID 기준 내림차순
SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS RECOREDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID IN(
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
    GROUP BY CAR_ID HAVING COUNT(*)>=5
) AND START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
GROUP BY MONTH, CAR_ID
ORDER BY 1,2 DESC


# # 이렇게도 가능
# # SELECT MONTH(start_date) as MONTH, CAR_ID, COUNT(*) as RECORDS

# SELECT DATE_FORMAT(start_date, '%m') as MONTH, CAR_ID, COUNT(*) as RECORDS
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
# WHERE CAR_ID IN(
#     SELECT CAR_ID
#     FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
#     WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
#     GROUP BY CAR_ID HAVING count(*) >= 5) 
#     AND START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
# GROUP BY MONTH, CAR_ID
# ORDER BY MONTH, CAR_ID DESC