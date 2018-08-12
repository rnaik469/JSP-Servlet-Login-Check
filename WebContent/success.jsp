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

<jstl:if test='${sessionScope.username!=null}'>
  <body>

<jsp:include page="header.jsp"></jsp:include>
    <!-- Begin page content -->
    <main role="main" class="container">
     <h4 style="text-align: center;color:green;">Login Successfull</h4>
      <h1 class="mt-5">Welcome <code>${sessionScope.username}</code> </h1>
    </main>

  
<jsp:include page="footer.jsp"></jsp:include>
  </body></jstl:if>
  <jstl:if test='${sessionScope.username==null}'>
	<jstl:redirect url="login.jsp"></jstl:redirect>
</jstl:if>
</html>
