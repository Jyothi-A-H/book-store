<%@page import="com.js.dto.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>ENTER DETAILS TO UPDATE</h1>
<% Book b = (Book)request.getAttribute("book"); %>//object form we get req from parent to child cls
<form action="update2">
Book id:<input type="number" name="id" value="<%= b.getBook_id()%>"  readonly="readonly"><br><br>//readonly is like constant  id cannot be changed
Book name:<input type="text" name="bookname" value="<%=b.getBook_name()%>"><br><br>
Author name:<input type="text" name="authorname" value="<%=b.getAuthor_name()%>"><br><br>
No of page:<input type="number" name="nop" value="<%=b.getNo_of_pages()%>"><br><br>
Price:<input type="text" name="price" value="<%=b.getPrice()%>"><br><br>
<input type="submit" value="update">
</form>
</body>
</html>