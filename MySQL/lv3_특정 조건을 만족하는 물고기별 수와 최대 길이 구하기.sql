-- https://school.programmers.co.kr/learn/courses/30/lessons/298519

-- 코드를 작성해주세요
SELECT COUNT(*) AS FISH_COUNT, MAX(LENGTH) AS MAX_LENGTH, FISH_TYPE
FROM FISH_INFO
GROUP BY FISH_TYPE HAVING AVG(IFNULL(LENGTH,10)) >= 33
ORDER BY 3

# SELECT COUNT(*) AS FISH_COUNT, MAX(LENGTH) AS MAX_LENGTH, FISH_TYPE
# FROM FISH_INFO
# GROUP BY FISH_TYPE HAVING AVG(IFNULL(LENGTH,10)) >= 33
# ORDER BY FISH_TYPE ASC