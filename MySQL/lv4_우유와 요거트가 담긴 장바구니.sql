-- https://school.programmers.co.kr/learn/courses/30/lessons/62284

-- 코드를 입력하세요
SELECT CART_ID
FROM CART_PRODUCTS
WHERE CART_ID IN (
    SELECT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'Yogurt'
    ) AND NAME = 'Milk'
GROUP BY CART_ID
ORDER BY CART_ID