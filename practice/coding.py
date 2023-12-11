def solution(numbers, target):
    leaves = [0]
    cnt = 0
    for n in numbers:
        temp = []
        for leaf in leaves:
            temp.append(leaf + n)
            temp.append(leaf - n)
        
        leaves = temp
    print(leaves)
        
    return 0

solution([4, 1, 2, 1], 4)