<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "helper.Svcenter1DAO"%>
<%@ page import = "java.sql.Timestamp"%>
<%request.setCharacterEncoding("UTF-8");%>
<%-- 자주묻는질문 수정 --%>

<jsp:useBean id = "svdto1" scope = "page" class = "helper.Svcenter1DTO">
	<jsp:setProperty name = "svdto1" property = "*"/>
</jsp:useBean>

<%
	String id = (String)session.getAttribute("memId");
	svdto1.setId(id);

	String pageNum = request.getParameter("pageNum");
	
	Svcenter1DAO svdao1 = Svcenter1DAO.getInstance();
	svdao1.updateSvcenter1(svdto1);
	
	response.sendRedirect("svmain.jsp");
%>