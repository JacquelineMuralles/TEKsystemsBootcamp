<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>

  <h1>Create a new course</h1>

  

<c:if test="${not empty error}">
  <c:forEach items="${errors}" var="error">
    <p style="color:red">${error}</p>
  </c:forEach>
</c:if>

  <form method="get" action="/courseSubmit">
    Course Name: <input type="text" name="courseName">
    <br>
    Instructor: <input type="text" name="instructor">
    <br>
    <button type="submit">Add Course</button>
  </form>
  
</body>
</html>