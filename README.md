# MilkGuide

> AI로 우유를 알려줄게!

### 소개글

우유 종류를 먹어보지 않으면 알기 어려운 시각장애인 분들을 위하여, 사진으로 손쉽게 우유 종류를 알려주는 우유 Detecting 앱입니다. 🌝

<img src="https://user-images.githubusercontent.com/47033052/168480869-0ca54bad-221f-41df-9bd2-06c916dfba74.png" width="20%" height="20%"/>  <img src="https://user-images.githubusercontent.com/47033052/168480872-b359ab7b-c71a-40eb-a66b-6f0ea14b31b5.png" width="20%" height="20%" /> <img src="https://user-images.githubusercontent.com/47033052/168480873-cc133b61-9b39-4a79-a2f4-5234bea235c7.png" width="20%" height="20%" /> <img src="https://user-images.githubusercontent.com/47033052/168480876-9d22cbc0-038c-4710-8b67-bc04a38ef051.png" width="20%" height="20%" /> 

### 주요 기능

- 우유 찾기
  - 우유를 찍기 위한 카메라 기능
  - 우유 사진을 분석하는 ImageClassification 모델

- Setting
  - 버전, 앱 소개, 개발자 소개
  - 앱스토어 리뷰 남기러 가기
  - 뷰에 따른 오디오 안내 기능 on/off (추가예정)


### 이슈
- [해결한 이슈들](https://github.com/Deep-Dive-to-App/Milkathon/issues?q=is%3Aissue+is%3Aclosed)
- [해결하지 못한 이슈들](https://github.com/Deep-Dive-to-App/Milkathon/issues?q=is%3Aopen+is%3Aissue)

---

# 제 1회 DDA 해커톤 : Milkathon 2021.06.26(토)

<img src="./images/01.png" width="70%"/>

## 1. 프로그램 기획 의도

시각장애인들은 손으로 우유인 것은 확인할 수 있지만, 손에 쥐고 있는 이 우유가 어떤 우유인지 직접 먹어보지 않으면 알기가 어렵다.

## 2. 해커톤을 통해 얻고자 하는 것

우유 detect를 통해서 차후에 음료수 detecting 어플 구현을 위한 뼈대 잡기

## 3. 프로그램 계획표

| 순서 |    시간     |   내용   |
| :--: | :---------: | :------: |
|  1   | 9시 ~ 12시  |  해커톤  |
|  2   | 12시 ~ 13시 |   점심   |
|  3   | 13시 ~ 18시 |  해커톤  |
|  4   | 15시 ~ 16시 | 중간점검 |
|  5   | 18시 ~ 19시 |   저녁   |
|  6   | 19시 ~ 21시 |  해커톤  |



## 4. 해커톤에서 만들고자 하는 것

**지인** : 우유 종류 분류기 구현

**희지** : 우유 detecting iOS 앱 구현

## 5. 해커톤 전 각자 해야 할 일

**지인**

- [x] 데이터셋 만들기
- [x] 어떤 네트워크를 사용해서 전이학습 할지 정하기

**희지**

- [x] 대략적인 ui 프로토타입 제작

## 6. 해커톤 당일 각자 해야할 일

**지인**

- [x] 모델 만들기

- [x] 모델 mlmodel로 컨버팅
  - 참조 : https://developer.apple.com/videos/play/tech-talks/10154/

**희지**

- [x] AVVideoCapture를 이용하여 카메라 구현
- [x] 촬영한 이미지 mlmodel input으로 넣어 predict
- [x] 모델 ouput 뷰에 띄우기 

## 7. 협업을 위해 사용할 툴

- GitHub
- Notion
