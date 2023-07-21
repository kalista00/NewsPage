# **PORTFOLIO**

## **📗 목차**

<b>

- 📝 [개요](#-포트폴리오-개요)
- 🛠 [기술 및 도구](#-기술-및-도구)
- 🔗 [링크](#-링크)
- 👨🏻‍💻 [기능 구현](#-기능-구현)
  - [텍스트 검색](#1-텍스트-검색)
  - [Hash Link](#2-Hash-Link)
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
<!--
> **협업 도구:** Github, Sourcetree, GoogleDocs
>
> **개발 환경:** Eclipse, Java11, Tomcat 9, Oracle, HTML5, CSS, JavaScript, Smarteditor
>
-->
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

### **1. 텍스트 검색**

<img width="100%" alt="텍스트 검색" src="https://github.com/kalista00/NewsPage/assets/122184547/7b46079c-73af-4bd1-96bb-00e42ba722cf" />

- 검색창에 입력한 텍스트에 글자가 포함되어 있는 제목의 기사들을 보여주도록 구현
- 텍스트에 입력한 글자는 굵은 글씨로 보이도록 구현
<!--
### **2. Hash Link**

<img width="100%" alt="hashlink" src="https://user-images.githubusercontent.com/51189962/136143186-aeb70c36-8e21-40e7-b937-deea0e66ad18.gif" />

- Hash Link링크를 이용하여 네비게이션에서 메뉴 클릭시 해당 영역으로 스크롤되도록 구현
- 해당하는 메뉴의 영역은 Full page.js와 유사하게 스타일링함

### **3. 반응형 웹**

<img width="100%" alt="반응형" src="https://user-images.githubusercontent.com/51189962/136144110-0a5cb56e-1dcf-4bc8-b7d8-b93bbb100744.gif" />

- 5개의 endpoint를 두고 반응형을 구현함

```javascript
// media.js
const deviceSizes = {
  desktop: '1440px',
  laptop: '1280px',
  tablet: '1024px',
  mobile: '768px',
  phone: '480px',
};

const media = {
  desktop: `screen and (max-width: ${deviceSizes.desktop})`,
  laptop: `screen and (max-width: ${deviceSizes.laptop})`,
  tablet: `screen and (max-width: ${deviceSizes.tablet})`,
  mobile: `screen and (max-width: ${deviceSizes.mobile})`,
  phone: `screen and (max-width: ${deviceSizes.phone})`,
};

export { deviceSizes, media };
```

<img width="100%" alt="반응형 네비게이션" src="https://user-images.githubusercontent.com/51189962/136144313-2a67d258-3ec1-4517-80fc-3f67b957dff5.gif" />

- 네비게이션 메뉴의 경우 mobile(768px)을 기준으로 그 이상일 경우 상단바, 이하일 경우 햄버거메뉴로 변경

### **4. Email 전송**

<img width="100%" alt="이메일 발신" src="https://user-images.githubusercontent.com/51189962/136146784-b8b42395-8a05-402a-b393-d0aa95580c7f.gif" />
<img width="100%" alt="이메일 수신" src="https://user-images.githubusercontent.com/51189962/136147118-ae829b7e-7ca5-4ef0-92e2-f7adc70ddb29.png" />

- EmailJS를 이용하여 서버없이 메일 서비스를 이용할 수 있도록 구현
- Sweetalert를 이용하여 커스텀 alert를 구현
- https://emailjs.com
- https://sweetalert2.github.io/

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
