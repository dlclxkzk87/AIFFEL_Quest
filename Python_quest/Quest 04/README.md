# Quest 04. 물고기들의 움직임을 출력하기

```
아래 물고기 리스트를 입력값으로 넣었을때 물고기의 움직임을 출력값으로 뱉어내도록 만들어봅시다. 물고기의 움직임을 출력하는 함수 2개  (컴프리헨션, 제너레이터)를 만듭니다. 컴프리헨션 함수에는 이름, 속도를 조합하고 제너레티어 함수에는 for문과 yield문를 활용합니다.  물고기 리스트를 입력받으면, 2개의 함수는 물고기 이름과, 속도를 출력해야 합니다.  
```

- 난이도 : 🟡🟡⚪⚪⚪  
- 장르 :  함수, 컴프리헨션, 이터레이터, 제너레이터  

## Peer Review

- 코더 :  조세창  
- 리뷰어 :  김연  

```
# 물고기 움직임 컴프리헨션 함수.
def show_fish_movement_comprehension(fish_list):
    # 리스트 컴프리헨션을 통해 물고기 리스트를 순회하면서 '이름' 과 'speed'에
    # 넣은 f"{fish['이름']} is swimming at {fish['speed']} m/s"를 movement 변수에 할당한다.
    movement = [f"{fish['이름']} is swimming at {fish['speed']} m/s" for fish in fish_list]
    # for문을 통해서 movement 변수를 차례대로 출력한다.
    for move in movement:
        print(move)

# 물고기 움직임 제너레이터 함수
def show_fish_movement_generator(fish_list):
    for fish in fish_list:
        yield f"{fish['이름']} is swimming at {fish['speed']} m/s"

# 물고기 리스트
fish_list = [
    {"이름": "Nemo", "speed": 3},
    {"이름": "Dory", "speed": 5},
]

print("Using Comprehension:")
show_fish_movement_comprehension(fish_list)

print("Using Generator:")
# generator 변수에 반환된 f"{fish['이름']} is swimming at {fish['speed']} m/s"를 할당
generator = show_fish_movement_generator(fish_list)
# for문을 순회하면서 물고기 움직임 출력
for move in generator:
    print(move)
```

- [x] 1. 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
     >  네!

- [x] 2. 주석을 보고 작성자의 코드가 이해되었나요?
     >  간결하고 효율적인 코드이고, 상세하게 설명해주신 주석 덕분에 이해가 잘 갔습니다.

- [x] 3. 코드가 에러를 유발할 가능성이 없나요?
     >  없어보입니다.

- [x] 4. 코드 작성자가 코드를 제대로 이해하고 작성했나요?
     >  네!

- [x] 5. 코드가 간결한가요?
     >  네!

## Reviw

제너레이터와 컴프리헨션의 원리를 잘 알 수 있는 코드 디자인이라고 생각합니다.  
작성자님의 코드를 보며 제 코드에 대해 다시 한 번 생각해 볼 수 있는 유익한 기회였습니다.



