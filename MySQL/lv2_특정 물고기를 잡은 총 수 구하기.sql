-- https://school.programmers.co.kr/learn/courses/30/lessons/298518

SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO I
    JOIN FISH_NAME_INFO N
    ON I.FISH_TYPE = N.FISH_TYPE
WHERE FISH_NAME IN ("BASS", "SNAPPER")