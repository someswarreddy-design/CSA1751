 **clean algorithm-style pseudocode** for reference.

---
## Breadth-First Search (BFS)

```
BFS(G, start):
    create empty QUEUE
    add start to QUEUE
    mark start as VISITED

    while QUEUE is not empty:
        node = dequeue
        print node

        for each neighbor in G[node]:
            if neighbor not in VISITED:
                add neighbor to QUEUE
                mark neighbor as VISITED
```

---

## Depth-First Search (Iterative)

```
DFS(G, start):
    create empty STACK
    add start to STACK

    while STACK is not empty:
        node = pop STACK

        if node not in VISITED:
            print node
            add node to VISITED

            for each neighbor in G[node]:
                push neighbor to STACK
```

---

## Depth-First Search (Recursive)

```
DFS-Recursive(G, node, VISITED):
    add node to VISITED
    print node

    for each neighbor in G[node]:
        if neighbor not in VISITED:
            DFS-Recursive(G, neighbor, VISITED)
```

---

## A* Search Algorithm

```
A_STAR(G, start, goal):
    open_list = priority queue
    add start to open_list with priority 0

    g_cost[start] = 0
    parent[start] = None

    while open_list is not empty:
        current = node in open_list with lowest f_cost

        if current == goal:
            reconstruct path using parent[]
            return path

        for each neighbor in G[current]:
            new_g = g_cost[current] + cost(current, neighbor)

            if neighbor not in g_cost OR new_g < g_cost[neighbor]:
                g_cost[neighbor] = new_g
                f_cost = new_g + heuristic(neighbor)
                add neighbor to open_list with priority f_cost
                parent[neighbor] = current
```

---

## Water Jug Problem (State-Space Search)

```
WATER_JUG(capA, capB, target):
    create empty VISITED set
    create QUEUE with initial state (0, 0)

    while QUEUE not empty:
        (x, y) = dequeue

        if x == target OR y == target:
            return path

        generate next valid states:
            fill A
            fill B
            empty A
            empty B
            pour A -> B
            pour B -> A

        add unvisited states to QUEUE
```

---

## Minimax Algorithm

```
MINIMAX(node, depth, isMax):
    if depth == 0 OR node is terminal:
        return evaluation(node)

    if isMax:
        best = -∞
        for each child in node:
            value = MINIMAX(child, depth-1, False)
            best = max(best, value)
        return best

    else:
        best = +∞
        for each child in node:
            value = MINIMAX(child, depth-1, True)
            best = min(best, value)
        return best
```

---

## Alpha-Beta Pruning

```
ALPHA_BETA(node, depth, α, β, isMax):
    if depth == 0 OR node is terminal:
        return evaluation(node)

    if isMax:
        best = -∞
        for child in node:
            value = ALPHA_BETA(child, depth-1, α, β, False)
            best = max(best, value)
            α = max(α, best)
            if β <= α:
                break   // prune
        return best

    else:
        best = +∞
        for child in node:
            value = ALPHA_BETA(child, depth-1, α, β, True)
            best = min(best, value)
            β = min(β, best)
            if β <= α:
                break   // prune
        return best
```

---

## Feed-Forward Neural Network (Forward Pass)

```
FORWARD_PASS(inputs, weights, bias):
    for each hidden_neuron:
        h = Σ(input * weight) + bias
        apply activation

    for each output_neuron:
        o = Σ(hidden * weight) + bias
        apply activation

    return output
```

---

## Prolog — Knowledge Base (General Form)

```
fact(x).
relation(a,b).

rule(X,Y) :-
    condition1(X),
    condition2(Y).
