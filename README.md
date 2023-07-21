# **PORTFOLIO**

## **📗 목차**

<b>

- 📝 [개요](#-포트폴리오-개요)
- 🛠 [기술 및 도구](#-기술-및-도구)
- 🔗 [링크](#-링크)
- ✨ [업데이트](#-업데이트)
- 👨🏻‍💻 [기능 구현](#-기능-구현)
  - [라이트/다크 모드](#1-라이트/다크-모드)
  - [Hash Link](#2-Hash-Link)
  - [반응형 웹](#3-반응형-웹)
  - [Email 전송](#4-Email-전송)
  - [Open graph](#5-Open-graph)
  - [기타](#6-기타-기능)
- 🚀 [배포](#-배포)
- ⏰ [커밋 히스토리](#-커밋-히스토리)

</b>

## **📝 포트폴리오 개요**
<!--
<img width="100%" alt="메인 페이지" src="https://user-images.githubusercontent.com/51189962/136147406-e80d9f8a-49b9-42bc-aa3a-301fff182608.png" />
-->
> **프로젝트:** 뉴스페이지
>
> **팀원:** 김창희 외 5명
>
> **분류:** 팀 프로젝트
>
> **제작 기간:** 2023.04 ~ 05.
>
> **주요 기능:** 라이트/다크 모드, 반응형 웹, Hash Link, Email 전송, 배포 및 커스텀 도메인 연결, open graph
>
> **협업 도구:** Github, Sourcetree, GoogleDocs
>
> **개발 환경:** Eclipse 4.26.0, Java11, Tomcat 9.0.73, Oracle 22.2.1.234, HTML5, CSS, JavaScript, Smarteditor 1.6
>
> **문의:** rambo71025453@gmail.com

<br />
<!--
## **🛠 기술 및 도구**

![React](https://img.shields.io/badge/React-53C1DE?style=flat-square&logo=react&logoColor=white) ![Styled-Components](https://img.shields.io/badge/Styled_Components-DB7C85?style=flat-square&logo=styled-components&logoColor=white) ![Firebase](https://img.shields.io/badge/Firebase-%23039BE5.svg?style=flat-square&logo=firebase)
![GitHub](https://img.shields.io/badge/Github-%23121011.svg?style=flat-square&logo=github&logoColor=white)

<br />

## **🔗 링크**

**링크:** [https://keemtj.com](https://keemtj.com)

<br />

## **✨ 업데이트**

- About 섹션에 이력서 및 자기소개서 다운로드 기능 추가(21.10.13)

<br />

## **👨🏻‍💻 기능 구현**

### **1. 라이트/다크 모드**

<img width="100%" alt="라이트/다크모드" src="https://user-images.githubusercontent.com/51189962/136142455-dd9bbdf1-4676-408c-bdc2-009f133e92db.gif" />

- 라이트 및 다크모드 기능 구현
- 사용자의 시스템 모드에 맞게 theme이 설정되도록 구현
- 사용자가 설정한 테마가 localStorage에 저장되어 한번 설정한 이후 같은 theme을 보여주도록 구현

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
