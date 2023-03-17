import sys
input = sys.stdin.readline

n = int(input())
stack = []
for _ in range(n):
    command = list(input().rstrip().split())

    if command[0] == 'push':
        stack.append(command[1])

    elif command[0] == 'pop':
        if not stack:
            print(-1)
            continue
        
        print(stack.pop())
        
    elif command[0] == 'size':
        print(len(stack))

    elif command[0] == 'empty':
        print(1) if not stack else print(0)

    elif command[0] == 'top':
        if not stack:
            print(-1)
            continue
        
        print(stack[-1])