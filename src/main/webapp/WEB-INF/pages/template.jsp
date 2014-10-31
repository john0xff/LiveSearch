<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
From template

	<!-- links list -->
	<c:if test="${not empty linksList}">
		<h3>List:</h3>
		<h4>ID    |   Address   | Description</h4>
		<c:forEach items="${linksList}" var="item">
			${item.linkId}
    		${item.linkAddress}
    		${item.linkDescription}<br>
		</c:forEach>
	</c:if>

<script type="text/javascript">



</script>

</body>
</html>