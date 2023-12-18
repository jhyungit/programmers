# https://school.programmers.co.kr/learn/courses/30/lessons/42883

def solution(number, k):
    answer = []

    for n in number:
        while k > 0 and answer and answer[-1] < n:
            answer.pop()
            k -= 1
        answer.append(n)

    return ''.join(answer[:len(answer) - k])

solution("1231234",3)