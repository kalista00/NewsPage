<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "helper.Svcenter1DAO"%>
<%@ page import = "helper.Svcenter1DTO"%>
<%@ page import = "member.MemberDAO"%>
<%@ page import = "member.MemberDTO"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<link href="/project1/resource/css/style.css" rel="stylesheet">
<script src="/project1/resource/js/script.js"></script>
<%-- 자주묻는질문 내용보는 페이지 --%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	String id = (String)session.getAttribute("memId");
	
	try{
		Svcenter1DAO svdao1 = Svcenter1DAO.getInstance();
		Svcenter1DTO svdto1 = svdao1.getSvdto1(num);			//해당 게시글 번호를 가지고 DB에 대입하여 검색
		
		MemberDAO mbDAO = MemberDAO.getInstance();
		MemberDTO mbdto = mbDAO.getMember(id);					//세션에서 받아온 id값을 가지고 멤버테이블에 검색
%>

<title>CODENEWS</title>
<jsp:include page="/member/header.jsp"></jsp:include>
<center><b>내 용</b></center>
<form>
	<table width = "600" height = "500" border = "1" cellspacing = "0" cellpadding = "0">
		<tr width = "8" height = "8">
			<td width = "10">글번호</td>
			<td width = "10" colspan = "1"><%=svdto1.getNum()%></td>
		</tr>
		
		<tr width = "10" height = "10">
			<td width = "10">작성자</td>
			<td width = "10"><%=svdto1.getId()%></td>
			
			<td width = "10">작성일</td>
			<td width = "10"><%=sdf.format(svdto1.getReg())%></td>
		</tr>
		
		<tr heigth = "6" height = "10">
			<td width = "10">제 목</td>
			<td width = "10" colspan = "3"><%=svdto1.getTitle()%></td>
		</tr>
		
		<tr height = "400">
			<td width = "20">내 용</td>
			<td width = "20" colspan = "3"><%=svdto1.getCon()%></td>
		</tr>
		
		<tr>
			<td colspan = "4">
			
			<%if(id != null){
				if(mbdto.getMemberType().equals("2")){%>		<%-- 세션에서 받아온 id 값이 있어야 되고 그 아이디의 멤버타입이 2일경우에만 보이게 설정 --%>

			<input type = "button" value = "글수정" onclick = "location.href='fqupForm.jsp?num=<%=svdto1.getNum()%>&pageNum=<%=pageNum%>'">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type = "button" value = "글삭제" onclick = "location.href='fqdeleForm.jsp?num=<%=svdto1.getNum()%>&pageNum=<%=pageNum%>'">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<%}%>
		<%}%>
			<input type = "button" value = "글목록" onclick = "location.href='svmain.jsp?pageNum=<%=pageNum%>'">
			</td>
		</tr>
	</table>
<%}catch(Exception e){} %>
</form>
<jsp:include page="/member/footer.jsp"></jsp:include>