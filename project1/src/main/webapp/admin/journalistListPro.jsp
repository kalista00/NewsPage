<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="admin.AdminDAO"%>
<%request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="dto" class="member.MemberDTO" />
<jsp:setProperty property="*" name="dto" />

<%
	AdminDAO dao = AdminDAO.getInstance();
	String result = dao.changeType(dto.getId());
	if(result.equals("-1")) {%>
	<script>
		alert("해당신청을 승인하였습니다");
		window.location.href = "/project1/admin/journalistList.jsp";
	</script>
	<%} else {%>
	<script>
		alert("기자변경 실패");
		window.location.href = "/project1/admin/journalistList.jsp";
	</script>
	<%}%>