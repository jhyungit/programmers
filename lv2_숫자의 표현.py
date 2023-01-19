# https://school.programmers.co.kr/learn/courses/30/lessons/12924

from collections import deque

def solution(n):
    _sum = 0
    cnt = 0
    i = 1
    que = deque([])
    while i <= n + 1:
        if _sum == n:
            cnt += 1
            _sum -= que.popleft()
        elif _sum < n:
            que.append(i)
            _sum += i
            i += 1
        else:
            _sum -= que.popleft()
    return cnt