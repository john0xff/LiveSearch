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

.table-box {
	border: solid 1px black;
	width: 100%;
}

.list-box {
	border: solid 1px black;
} 

.center {
	margin-left: auto;
	margin-right: auto;
}

</style>

</head>
<body>
	<table class="center" style="width: 90%;" cellpadding="0" cellspacing="0">
		<!-- header with search input -->
		<tr>
			<td colspan="2" style="background-color: #FFFFFF; margin: 20px;">
				<h3 style=" margin: 20px;">Live search for links</h3>
				<form action="" style=" margin: 20px;">
					Type link: <input type="text" onkeyup="search(this.value)" />
				</form>
			</td>
		</tr>
		<!-- main content -->
		<tr>
			<!-- left list / category -->
			<td style="background-color: #FFFFFF; width: 150px; vertical-align: top;">
				<div class="list-box">
					<ul>
						<li onclick="category('engines')" value="engines">only search engines</li>
						<li>b</li>
						<li>c</li>
					</ul>
				</div>
			</td>
			<!-- content - search result -->
			<td style="background-color: #FFFFFF; height: 200px; width: 400px; vertical-align: top;">	
				<div class="table-box">
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
			</td>
		</tr>
		<!-- footer -->
		<tr>
			<td colspan="2" style="background-color: #FFFFFF; text-align: center;">
				<a href="http://www.phoenixjcam.com" target="_blank">phoenixjcam.com</a>
			</td>
		</tr>
	</table>
<script type="text/javascript">

var hLinks = document.getElementById("links");

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

// ajax for input
function search(str) 
{
	var xmlhttp;

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
	        createLinksTable(jsonObj); // call global function
		}
	};
	xmlhttp.open("GET", "search?key=" + str, true);
	xmlhttp.send();
};

search("h"); // call it once on start

//ajax for category
function category(str) 
{
	var xmlhttp;

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
	        createLinksTable(jsonObj); // call global function
		}
	};
	xmlhttp.open("GET", "category?key=" + str, true);
	xmlhttp.send();
};



</script>
</body>
</html>