# **PORTFOLIO**

## **📗 목차**

<b>

- 📝 [개요](#-포트폴리오-개요)
- 🛠 [기술 및 도구](#-기술-및-도구)
- 🔗 [링크](#-링크)
- 👨🏻‍💻 [기능 구현](#-기능-구현)
  - [검색](#1-검색)
  - [로그인](#2-로그인)
  - [반응형 웹](#3-반응형-웹)
  - [Email 전송](#4-Email-전송)
  - [Open graph](#5-Open-graph)
  - [기타](#6-기타-기능)
- 🚀 [배포](#-배포)
- ⏰ [커밋 히스토리](#-커밋-히스토리)

</b>

## **📝 포트폴리오 개요**

> **프로젝트:** 뉴스페이지
>
> **팀원:** 김창희 외 5명
>
> **분류:** 팀 프로젝트
>
> **제작 기간:** 2023.04 ~ 05.
>
> **주요 기능:** 계정 관련, 구독/스크랩, 관리자페이지, 뉴스페이지
>
> **문의:** rambo71025453@gmail.com

<br />

## **🛠 기술 및 도구**

<p align="center">
  <img src="https://img.shields.io/badge/Java11-007396?style=flat&logo=OpenJDK&logoColor=white"/>
  <img src="https://img.shields.io/badge/html5-%23E34F26.svg?style=flat&logo=html5&logoColor=white"/></a> &nbsp
  <img src="https://img.shields.io/badge/css-1572B6?style=flat-square&logo=css3&logoColor=white"/></a>&nbsp 
  <img src="https://img.shields.io/badge/javascript-%23323330.svg?style=flat&logo=javascript&logoColor=%23F7DF1E"/></a> &nbsp
  <img src="https://img.shields.io/badge/oracle-F80000?style=flat&logo=oracle&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=flat&logo=apachetomcat&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/github-181717.svg?style=flat&logo=github&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/Eclipse-FE7A16.svg?style=flat&logo=Eclipse&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/Sourcetree-0052CC.svg?style=flat&logo=Sourcetree&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/SmartEditor-03C75A.svg?style=flat&logo=Naver&logoColor=white"></a>&nbsp 
</p>

<br />

## **🔗 링크**

**링크:** <!--[https://keemtj.com](https://keemtj.com)-->

<br />

## **👨🏻‍💻 기능 구현**

### **1. 검색**

<img width="100%" alt="텍스트 검색" src="https://github.com/kalista00/NewsPage/assets/122184547/7b46079c-73af-4bd1-96bb-00e42ba722cf" />

- 검색창에 입력한 텍스트에 글자가 포함되어 있는 제목의 기사들을 보여주도록 구현
- 텍스트에 입력한 글자는 굵은 글씨로 보이도록 구현
- 날짜별로 검색이 가능하도록 구현
  
### **2. 로그인**

<img width="100%" alt="로그인" src="https://github.com/kalista00/NewsPage/assets/122184547/ed916058-36ee-46b4-9821-caf264677a59" />

- 언어선택이 가능하도록 구현(한국어/영어)
- Cookie를 이용한 자동로그인 구현
- 아이디/비밀번호 찾기 구현
- 로그인버튼에 커서가 올라가면 색이 바뀌도록 구현
### **3. 메인**
<img width="100%" alt="메인" src="https://github.com/kalista00/NewsPage/assets/122184547/3ae6d6ef-eb9d-463b-a51d-659f90304ea3" />

- 조회수가 높은순으로 5개의 기사를 Hot Topic에서 보여주도록 구현
- 랜덤으로 오늘의 뉴스5개를 보여주도록 구현
- 로그인 시 구독한 현황을 보여주도록 구현

### **4. 언론사/회원 페이지**
● 언론사 페이지
<img width="100%" alt="언론사페이지" src="https://github.com/kalista00/NewsPage/assets/122184547/435935ad-22c4-48f6-8dda-36d531d181e3" />

- 언론사에 해당하는 기자/기사 목록을 보여주도록 구현
- 언론사 구독/취소 버튼 구현
  
● 회원/기자 페이지
<img width="100%" alt="회원/기자페이지" src="https://github.com/kalista00/NewsPage/assets/122184547/e42f3827-2cbf-4d5b-be43-7156bf94df45" />

- 회원/기자 정보를 보여주도록 구현
- 회원페이지 -> 회원이 쓴 댓글 / 기자페이지 -> 기자가 쓴 기사를 보여주도록 구현
- 회원페이지 -> 회원이 기자일 때 기자페이지로 이동버튼 구현
- 본인의 페이지일 때 -> 정보수정이 가능하도록 구현
- 본인의 페이지일 때 -> 회원탈퇴 가능하도록 구현
- 본인의 페이지일 때 -> 구독현황으로 이동하는 버튼 구현

### **5. Open graph**

<img width="100%" alt="스크린샷 2021-10-06 15 02 30" src="https://user-images.githubusercontent.com/51189962/136148865-7b6cfd30-ae66-410f-89fa-16f9ad883c74.png" />

<img width="100%" alt="스크린샷 2021-10-06 15 03 15" src="https://user-images.githubusercontent.com/51189962/136148961-28e8c84b-b5fb-4052-9150-7c20e6af3cbc.png" />

```html
<!-- index.html -->
<meta property="og:title" content="김태진 • Frontend Developer" />
<meta property="og:description" content="프론트엔드 개발자 김태진입니다." />
<meta property="og:image" content="%PUBLIC_URL%/thumb.png" />
<meta property="og:url" content="https://keemtj.com/" />
<meta property="og:type" content="website" />
```

- meta tags를 통해 Facebook, twitter, linkedin, discord, kakao talk 등 링크를 전달 했을 때 링크에 대한 정보를 볼 수 있도록 구현
- https://www.opengraph.xyz

### **6. 기타 기능**

- favicon.ico 생성
- Fade-in transform
- 프로젝트 페이지
- React-responsive-carousel 커스텀

## **🚀 배포**

- 첫 배포

```
$ npm install -g firebase-tools
$ firebase init
$ firebase login
  > HOSTING
  > Directroy? build
$ yarn build
$ firebase deploy
```

- 수정 후 배포

```
$ yarn build
$ firebase deploy
```

- 커스텀 도메인: Godaddy에서 커스텀 도매인 구매(https://keemtj.com)

<br />

## ⏰ 커밋 히스토리

[내 커밋 히스토리 보러가기](https://github.com/keemtj/portfolio/commits?author=keemtj)
<br/>
<br/>
<br/>
-->
