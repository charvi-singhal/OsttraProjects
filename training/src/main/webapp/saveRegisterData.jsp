<%@page import="MyConnection.Run"%>
<jsp:useBean id="save" class="MyConnection.Registration"/>
<jsp:setProperty name="save" property= "*"/>
<%
	
	int status = Run.register(save);
	
	if(status>0){
		out.println("Saved");
		//session.setAttribute("userSaved", "Data received");
		
	}else{
		out.println("not save");
		//session.setAttribute("userSaved", "Data did not receive.");
		
	}
%>