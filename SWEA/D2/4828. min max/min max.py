T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    numbers = sorted(map(int, input().split()))
    print(f"#{test_case} {numbers[-1] - numbers[0]}")
