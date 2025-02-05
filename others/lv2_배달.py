# https://school.programmers.co.kr/learn/courses/30/lessons/12978

from collections import defaultdict
import heapq

def solution(N, road, K):
    answer = 0
    dist = {node: float('inf') for node in range(1,N+1)}
    graph = defaultdict(list)
    
    for r in road:
        s_node, e_node, length = r
        graph[s_node].append((e_node,length))
        graph[e_node].append((s_node,length))
        
    
    start = 1 # 1에서 시작
    # 우선순위 큐 primary queue
    pq = [(start,0)]
    dist[start] = 0 # 자기 자신까지의 거리는 0
            
    
    while pq:
        cur_node, cur_dist = heapq.heappop(pq)
        
        if dist[cur_node] < cur_dist:
            continue
        
        for next_node, weight in graph[cur_node]:
            distance = dist[cur_node] + weight
            
            if distance < dist[next_node]:
                dist[next_node] = distance
                heapq.heappush(pq,(next_node,distance))
    
    for d in dist:
        if dist[d] <= K:
            answer += 1
    
    return answer