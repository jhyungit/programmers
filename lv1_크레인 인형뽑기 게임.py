# https://school.programmers.co.kr/learn/courses/30/lessons/64061

def solution(board, moves):
    answer = 0
    bucket = []

    for m in moves:
        for i in range(len(board)):
            if board[i][m-1] != 0:
                bucket.append(board[i][m-1])
                board[i][m-1] = 0
                if len(bucket) >= 2:
                    if bucket[-1] == bucket[-2]:
                        del bucket[-2:]
                        answer += 2
                break

    return print(answer)

solution([[0,0,0,0,0],
          [0,0,1,0,3],
          [0,2,5,0,1],
          [4,2,4,4,2],
          [3,5,1,3,1]], [1,5,3,5,1,2,1,4])