# [level 2] [PCCP 모의고사 #2] 3번 - 카페 확장 - 121689

[문제 링크](https://school.programmers.co.kr/learn/courses/15009/lessons/121689) 

### 성능 요약

메모리: 10.2 MB, 시간: 0.01 ms

### 구분

프로그래밍 강의 > PCCP 모의고사 2회


### 채점결과

정확성: 100.0<br/>합계: 100.0 / 100.0

### 제출 일자

2024년 03월 22일 23:02:28

### 문제 설명

<div class="markdown solarized-dark"><p>주원이는 카페를 운영하고 있습니다. 주원이의 카페는 맛집으로 소문나서 항상 줄이 끊이지 않습니다. 하지만 카페가 협소하여 커피를 기다리는 손님들은 종종 불만을 토로하고 있습니다. 주원이는 카페를 확장하기로 하고, 얼마나 많은 손님들이 동시에 카페에 머무는지 확인해보려 합니다.</p>

<p>주원이네 카페에는 영업을 시작하자마자 0초에 손님 한 명이 가게에 도착하고, 정확히 <code>k</code>초마다 새로운 손님 한 명이 카페에 와서 줄을 섭니다. 손님들은 키오스크를 통해 주문하고, 주원이는 주문받은 순서대로 음료를 만듭니다. 주원이는 음료를 한 번에 하나씩 만들며, 지금 만들고 있는 음료를 다 만들면 다음 음료를 만들기 시작합니다. 손님은 자신이 주문한 음료를 받자마자 카페를 나갑니다. 주원이네 카페에는 여러 종류의 음료를 판매하고 있는데 각 음료들은 0번부터 차례대로 번호가 지정되어 있습니다. 또한 주원이가 같은 종류의 음료를 만드는데 걸리는 시간은 항상 동일합니다.</p>

<p>주원이는 오늘 주문받은 음료 목록을 이용하여, 카페에서 손님들이 동시에 최대 몇 명이 머물렀는지 알고 싶습니다. 손님들이 카페에 도착하여 주문하기까지 걸린 시간과 음료를 받은 후 카페를 나가는 시간은 음료 제조 시간에 비해 대단히 짧기 때문에 무시합니다. 한 손님이 카페에서 나감과 동시에 다른 손님이 카페에 들어올 경우, 나가는 손님이 먼저 퇴장한 다음 들어오는 손님이 입장합니다.</p>

<p>예를 들어, 주원이네 카페에서 세 종류의 음료를 판매하고 제조 시간은 0번 음료가 5초, 1번 음료가 12초, 2번 음료는 30초 소요된다고 가정합니다. 영업을 시작한 뒤 4명의 손님이 각각 0초, 10초, 20초, 30초에 카페에 도착하여 순서대로 1번, 2번, 0번, 1번 음료를 주문한 경우, 영업 시작 후 30초부터 42초 사이에 3명의 손님이 기다리게 되고, 이때가 동시에 기다리고 있는 손님이 가장 많은 시간입니다.</p>

<p>주원이네 카페에서 판매하는 각 음료들의 제조 시간을 담은 정수 배열 <code>menu</code>와 오늘 손님들이 주문한 음료가 순서대로 적힌 배열 <code>order</code>, 새로운 한 명의 손님이 방문하는데 걸리는 시간인 <code>k</code>가 매개변수로 주어집니다. 오늘 카페에 동시에 존재한 손님 수의 최댓값을 return 하도록 solution 함수를 작성해주세요.</p>

<hr>

<h5>제한사항</h5>

<ul>
<li>1 ≤ <code>menu</code>의 길이 ≤ 100

<ul>
<li><code>menu[i]</code>는 <code>i</code>번 음료의 제조 시간을 의미합니다.</li>
<li>1 ≤ <code>menu</code>의 원소 ≤ 100</li>
</ul></li>
<li>1 ≤ <code>order</code>의 길이 ≤ 10,000

<ul>
<li><code>order[i]</code>는 <code>i</code>번째 손님이 주문한 음료의 번호입니다.</li>
<li>0 ≤ <code>order</code>의 원소 &lt; <code>menu</code>의 길이</li>
</ul></li>
<li>1 ≤ <code>k</code> ≤ 100</li>
</ul>

<hr>

<h5>입출력 예</h5>
<table class="table">
        <thead><tr>
<th>menu</th>
<th>order</th>
<th>k</th>
<th>result</th>
</tr>
</thead>
        <tbody><tr>
<td>[5, 12, 30]</td>
<td>[1, 2, 0, 1]</td>
<td>10</td>
<td>3</td>
</tr>
<tr>
<td>[5, 12, 30]</td>
<td>[2, 1, 0, 0, 0, 1, 0]</td>
<td>10</td>
<td>4</td>
</tr>
<tr>
<td>[5]</td>
<td>[0, 0, 0, 0, 0]</td>
<td>5</td>
<td>1</td>
</tr>
</tbody>
      </table>
<hr>

<h5>입출력 예 설명</h5>

<p><strong>입출력 예 #1</strong></p>

<ul>
<li>본문에서 설명한 예시입니다.</li>
</ul>

<p><strong>입출력 예 #2</strong></p>

<ul>
<li>영업 시작 후 가장 먼저 도착한 손님은 0초에 주문을 받고 30초에 카페를 나갑니다. 영업 시작 후 10초에 도착한 손님은 42초에 음료를 받고 카페를 나가게 됩니다. 그 사이 20초, 30초, 40초에 손님들이 각각 들어와, 40초~42초 사이에 총 4명의 손님들이 동시에 카페에서 기다리고, 이 수가 동시에 기다리는 손님 수의 최댓값입니다.</li>
</ul>

<p><strong>입출력 예 #3</strong></p>

<ul>
<li>0초, 5초, 10초, 15초, 20초에 손님이 들어오고, 5초, 10초, 15초, 20초, 25초에 손님이 나갑니다. 입장과 퇴장 시간이 겹치는 경우, 나가는 손님이 먼저 퇴장한 다음에 들어오는 손님이 입장하므로, 카페에서 동시에 기다리는 손님 수의 최댓값은 1입니다. </li>
</ul>
</div>


> 출처: 프로그래머스 PCCP 모의고사 2회, https://school.programmers.co.kr/learn/courses/15009/15009-pccp-%EB%AA%A8%EC%9D%98%EA%B3%A0%EC%82%AC-2%ED%9A%8C