# [D2] 이진수2 - 5186

[문제 링크](https://swexpertacademy.com/main/learn/course/subjectDetail.do?courseId=AVuPDYSqAAbw5UW6&subjectId=AWUYDLaK1kMDFAVT) 7차시

### 성능 요약

모의 테스트에서는 제공되지 않습니다.

### 제출 일자

2024-10-08 22:14

### 문제 설명

0보다 크고 1미만인 십진수 N을 이진수로 바꾸려고 한다. 예를 들어 0.625를 이진 수로 바꾸면 0.101이 된다.

$
N = 0.625\\
0.101_2\\
= 1*2^{-1} + 0*2^{-2} + 1*2^{-3}\\
= 0.5 + 0 + 0.125\\
= 0.625
$

N을 소수점 아래 12자리 이내인 이진수로 표시할 수 있으면 0.을 제외한 나머지 숫자를 출력하고, 13자리 이상이 필요한 경우에는 ‘overflow’를 출력하는 프로그램을 작성하시오.

#### [입력]

첫 줄에 테스트케이스의 수 T가 주어진다. 1<=T<=50

다음 줄부터 테스트 케이스의 별로 소수점 아래가 12자리 이내인 N이 주어진다.

#### [출력]

각 줄마다 "#T" (T는 테스트 케이스 번호)를 출력한 뒤, 답을 출력한다.
