def solution(numbers):
    answer = ''
    real = ''
    arr = []
    
    for n in numbers:
        answer += str(n)
        
    for a in answer:
        arr.append(int(a))
        
    for x in sorted(arr, reverse=True):
        real += str(x)
    print(real)
    return real

solution([3, 30, 34, 5, 9])