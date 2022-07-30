<%@page import="MyConnection.Run"%>
<jsp:useBean id="logged" class="MyConnection.login"/>
<jsp:setProperty name="logged" property="*"/>
<%
	boolean status = Run.login(logged);
	if(status){
		response.sendRedirect("uDashboard.jsp");
	}else{
		response.sendRedirect("indexjsp");
	}
%>