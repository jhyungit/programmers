# https://school.programmers.co.kr/learn/courses/30/lessons/12945

def solution(n):
    answer = 0
    x = [0,1]
    for i in range(1, n):
        x.append(x[i-1] +x[i])
    return x[-1]%1234567