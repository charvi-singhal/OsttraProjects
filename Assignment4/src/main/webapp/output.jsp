<%
	int first = Integer.parseInt(request.getParameter("firstNumber"));
	int second = Integer.parseInt(request.getParameter("secondNumber"));
	String operation = request.getParameter("operation");
	
	int result =0;
	if(operation.equals("+")){
		result = first+second;
	}else if(operation.equals("-")){
		result = first - second;
	}else if(operation.equals("*")){
		result = first*second;
	}else if(operation.equals("/")){
		if(second==0){
			out.println("You can't perform the division");
		}else{
			result = first/second;
		}
	}
	out.println("Calculate: "+result);
%>