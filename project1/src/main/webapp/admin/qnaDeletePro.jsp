<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="admin.AdminDAO"%>
<%request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="dto" class="admin.AdminDTO"/>
<jsp:setProperty property="*" name="dto"/>

<%
	AdminDAO dao = AdminDAO.getInstance();
	int result = dao.qnaDelete(dto); // 글 num, pw를 확인후 삭제
	response.sendRedirect("qnaList.jsp");
%>