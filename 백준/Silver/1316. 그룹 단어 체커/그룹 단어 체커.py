import sys
input = sys.stdin.readline


def is_group_word(word):
    previous_char = ''
    char_set = set()
    for char in word:
        if char != previous_char:
            if char in char_set:
                return False
            previous_char = char
            char_set.add(char)
    return True

result = 0 
n = int(input())
for _ in range(n):
    word = input().rstrip()

    if is_group_word(word):
        result += 1

print(result)