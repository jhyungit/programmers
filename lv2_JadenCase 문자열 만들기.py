# # https://school.programmers.co.kr/learn/courses/30/lessons/12951

# def solution(s):
#     answer = ''
#     s = s.split(" ")

#     while '' in s:
#         s.remove('')
    
#     for i in s:
#         if i[0] in "0123456789":
#             pass
#         else:
#             print(i[0].upper())
#     print(s)


#     return print(answer)

# solution("3people   unFollowed me")
x = "unFol"
p = "U"
c = x.replace(x[0],(p[0]))
print(c)