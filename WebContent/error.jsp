<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
	<script>
	window.history.forward(1);
</script> 
  </head>

<jstl:if test='${sessionScope.username==null}'>
  <body>

    <header>
      <!-- Fixed navbar -->
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
     
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
			 <h5 style="color: white; text-align: center;">Welcome to the MyDocs Portal - A safe way of sharing documents</h5>
          </ul>
        </div>
      </nav>
    </header>
    <!-- Begin page content -->
    <br/>
    <br/>
    <br/>
    <main role="main" class="container">
     <h4 style="text-align: center;color:red;">Invalid Username or password</h4>
      
    </main><div align="center" ><a href="home.app" style="font-size:25px; text-decoration: none;" >Click here to login </a></div>

  
<jsp:include page="footer.jsp"></jsp:include>
  </body></jstl:if>
  <jstl:if test='${sessionScope.username!=null}'>
	<jstl:redirect url="success.jsp"></jstl:redirect>
</jstl:if>
</html>
