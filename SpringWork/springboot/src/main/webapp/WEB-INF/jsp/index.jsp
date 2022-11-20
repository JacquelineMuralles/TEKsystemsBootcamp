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
  <h1>Hello ${name}</h1>

  <form method="get" action="/">
    Search By Course: <input type="text" name="search" value="${search}">
    Search By Instructors: <input type="text" name="searchInstructor" value="${searchInstructor}">
    <button type="submit">Search</button>
  </form>

  
  <br>
  <br>

  <h2>These are the courses available for your search:</h2>
  <table border="1 solid" cellspacing="5">
    <tr>
      <td>ID</td>
      <td>Course Name</td>
      <td>Instructor</td>
    </tr>
    <c:forEach items="${courses}" var="course">
      <tr>
        <td>${course.id}</td>
        <td>${course.name}</td>
        <td>${course.instructor}</td>
      </tr>
    </c:forEach>
  </table>
  
</body>
</html>