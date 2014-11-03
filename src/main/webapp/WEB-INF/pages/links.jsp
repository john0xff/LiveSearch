<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
table {
	width: 100%;
}

td, th {
	font-size: 1em;
	border: 1px solid #4796e6;
	padding: 3px 7px 2px 7px;
}

th {
	font-size: 1.1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #4796e6;
	color: #ffffff;
}

tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}
</style>

</head>
<body>

<h3>Live search for links</h3>
	<form action="">
		Type link: <input type="text" onkeyup="search(this.value)" />
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

function search(str) 
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

search("");

</script>
</body>
</html>