Will dress fit me Project

배경 : 내가 원하는 옷이 과연 나에게 잘 어울리는지 직접 판단하려고 하는데
         매번 피트룸에 가서 갈아입기 귀찮거나 피트룸 대기줄이 길때, 옷 사진을 찍어서
         나의 몸과 어울리는지 합성하여 판단해주면 시간절약이 될것 같다고 생각함

화면구성
- first_page : body를 2등분하여 body 상단에 내사진을 올리고 body 하단에는
                     내가 원하는 옷 이미지를 올려서 제대로 나왔는지 확인하는 페이지   

- second_page
   - 내가 원하는 옷의 클래스를 판별하기
   - 내 사진을 오브젝트 디텍션 모델을 사용하여 신체 부위별로 나누기
   - 내가 원하는 옷을 마스킹하기
   - 내 사진과 크로마킹하여 이미지를 출력하기
   
- navigation bar : next와 back 버튼 설정   
   
- appbar : 앱 이름과 아이콘 설정

<img width="704" alt="image" src="https://github.com/dlclxkzk87/AIFFEL_Quest/assets/81279307/f7e6bcd3-2309-4512-8384-142167694572">
<img width="704" alt="image" src="https://github.com/dlclxkzk87/AIFFEL_Quest/assets/81279307/509273ca-ec20-4f2b-8eb2-f86227d89e0c">
<img width="678" alt="image" src="https://github.com/dlclxkzk87/AIFFEL_Quest/assets/81279307/8e6e30b4-acf1-46d8-a034-fa22e8f8a0d1">
