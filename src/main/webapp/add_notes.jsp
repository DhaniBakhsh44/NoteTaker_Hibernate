<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@ include file="all_js_css.jsp" %>
    <title>Add Notes</title>
  </head>
  <body>

	<div class="container">
	<%@include  file="navbar.jsp" %>
	
 	<!-- This add Form -->
<form  action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" class="form-control"  required id="text" name ="title"  aria-describedby="emailHelp" placeholder="Enter Title">
    </div>
  <div class="form-group">
    <label for="content">Note Content</label>
  	<textarea id="content"   name ="content"  placeholder="Enter Your Content" class=" form-control" required style="height:300px;">
  	</textarea>
  </div>
   <button type="submit" class="btn btn-primary">Submit</button>
</form>
 
</div>
	
	

  </body>
</html>