-- https://school.programmers.co.kr/learn/courses/30/lessons/59409

-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME,
CASE WHEN SEX_UPON_INTAKE like 'Intact%' THEN 'X'
ELSE 'O'
END AS '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID