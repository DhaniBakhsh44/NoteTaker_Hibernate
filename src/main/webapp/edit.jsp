<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<h2>This is edit PAge</h2>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>


		<form action="UpdateServlet" method="post">
		<input type="hidden" value="<%=note.getId() %>" name="note_id">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" required id="text" name="title"
					aria-describedby="emailHelp" value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" name="content"
					placeholder="Enter Your Content" class=" form-control" required
					style="height: 300px;">
			  	<%=note.getContent()%>
			  	</textarea>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>


	</div>



</body>
</html>