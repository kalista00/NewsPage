<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "helper.SvcenterDAO"%>
<%@ page import = "helper.SvcenterDTO"%>
<%@ page import = "member.MemberDTO"%>
<%@ page import = "member.MemberDAO"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<link href="/project1/resource/css/style.css" rel="stylesheet">
<script src="/project1/resource/js/script.js"></script>
<%-- 1대1 문의글 내용보는곳 --%>
<title>CODENEWS</title>
<jsp:include page="/member/header.jsp" />

<% 
	String id = (String)session.getAttribute("memId");
	int num = 0;
	if(request.getParameter("num") != null){					//글번호는 값이 있어야되고 num에 글번호를 대입
		num = Integer.parseInt(request.getParameter("num"));
	}
	String pageNum = request.getParameter("pageNum");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	try{
		SvcenterDAO svDAO = SvcenterDAO.getInstance();
		SvcenterDTO svDTO = svDAO.getSvDTO(num);				//해당 글번호를 테이블에 대입하고 검색해서 값을 꺼내옴
		
		MemberDAO mbDAO = MemberDAO.getInstance();
		MemberDTO mbdto = mbDAO.getMember(id);
%>

<center><b>문의내용보기</b>
<br>
<form>
	<table width = "600" height = "500" border = "1" cellspacing = "0" cellpadding = "0">
		<tr width = "8" height = "8">
			<td align = "center" width = "10">글번호</td>
			<td width = "10" colspan = "3"><%=svDTO.getNum1()%></td>
		</tr>
		
		<tr width = "10" height = "10">
			<td width = "35">작성자</td>
			<td width = "35"><%=svDTO.getId()%></td>
			
			<td width = "35">작성일</td>
			<td width = "35"><%=sdf.format(svDTO.getReg())%>
		</tr>
		
		<tr height = "10">
			<td width = "70">email</td>
			<td width = "70" colspan = "3"><%=svDTO.getEmail()%></a></td>
		</tr>
		
		<tr height = "10">
			<td width = "70">제 목</td>
			<td width = "70" colspan = "3"><%=svDTO.getTitle()%></td>
		</tr>
		
		<tr height = "30">
			<td width = "125">문의내용</td>
			<td width = "400" heigth = "300" colspan = "3"><%=svDTO.getCon()%></td>
		</tr>
		
		<tr>
			<td colspan = "4" align = "right">
				<%
					if(id != null){										//세션에서 넘겨받은 id는 값이 없는지 확인
						if(id.equals(svDTO.getId())){					//본인 글만 수정 삭제가능하게 설정
				%>
			<input type = "button" value = "글수정" onclick = "location.href='qtupForm.jsp?num=<%=svDTO.getNum1()%>&pageNum=<%=pageNum%>'">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<%if(mbdto.getMemberType().equals("2")){%>						<%-- 관리자일 경우엔 글삭제가 가능하게 만듬 --%>
			<input type = "button" value = "글삭제" onclick = "location.href='qtdeleForm.jsp?num=<%=svDTO.getNum1()%>&pageNum=<%=pageNum%>'">
				&nbsp;&nbsp;&nbsp;&nbsp;
					<%}%>
				<%}%>
			<%}%>
			<input type = "button" value = "글목록" onclick = "location.href='qalist.jsp?pageNum=<%=pageNum%>'">
		</td>
	</tr>		
</table>
<%}catch(Exception e){} %>
</form>
<jsp:include page="/member/footer.jsp"></jsp:include>