<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>equation</title>
</head>
<body>
<%! String A,B,C; %>
<%! double a,b ,c ,resl1,resl2,det; %>

<% A=request.getParameter("a"); B=request.getParameter("b") ;C=request.getParameter("c"); %>


<% double a = Float.parseFloat(A); %>
<% double b = Float.parseFloat(B); %>
<% double c = Float.parseFloat(C); %>
Pour l'equation : <%=a%>x�2+<%=b%>x+<%=c%> <br>
<% det=(b*b)-4*a*c; %>
<% if (det <0 ) {%>
		<%@ include file="solution1.html" %> 
<% } else if (det > 0){ resl1=( Math.sqrt(det)-b  )/2*a ; resl2=(-b- Math.sqrt(det))/2*a ;%>	
        <%@ include file="solution2.html" %>
        les solutions sont <%= resl1 %> et <%= resl2 %>
<% } else { resl2=(-b)/2*a; %>        
	la solution est <%= resl2  %> 	
    <% } %>	
	
		


</body>
</html>