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
From search.jsp

<h3>Start typing a name in the input field below:</h3>
	<form action="">
		First name: <input type="text" id="txt1" onkeyup="showHint(this.value)" />
	</form>
	<br>
	
	<div>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Link</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody id="links">
				
			</tbody>
		</table>
	</div>

<script type="text/javascript">

function showHint(str) 
{
	var xmlhttp;
	var hLinks = document.getElementById("links");
	
	if (str.length == 0) 
	{
		str = "";
		hLinks.innerHTML = "";
		return;
	}
	
	xmlhttp = new XMLHttpRequest();
	
	xmlhttp.onreadystatechange = function () 
	{
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) 
		{
			var jsonObj = JSON.parse(xmlhttp.responseText);
	        createLinksTable(jsonObj); 
		}
	};
	xmlhttp.open("GET", "search?key=" + str, true);
	xmlhttp.send();
	
	function createLinksTable(arr)
	{
		var tableRow = "";
		var i;
		
		for (i = 0; i < arr.length; i++) 
		{
			tableRow += "<tr>";
			
			tableRow += "<td>";
			tableRow += arr[i].linkId;
			tableRow += "</td>";
			
			tableRow += "<td>";
			tableRow += '<a href=\'' + arr[i].linkAddress + '\' target="_blank">\'' + arr[i].linkAddress + '\'</a>';
			tableRow += "</td>";
			
			tableRow += "<td>";
			tableRow += arr[i].linkDescription;
			tableRow += "</td>";
			
			tableRow += "</tr>";
		}
		
		hLinks.innerHTML = tableRow;
	};
}

showHint("");

</script>
</body>
</html>