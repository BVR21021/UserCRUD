<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form"%>    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
   prefix="c"%>    
 <body bgcolor="pink">
 
 <h1>Users Details</h1>  
<table border="1" width="70%" cellpadding="2">
<tr>
<th>Id</th>
<th>Name</th>
<th>Password</th>
<th>Email</th>
<th>Gender</th>
<th>Country</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<c:forEach var="user" items="${user}">
<tr>
<td>${user.id}</td>
<td>${user.name}</td>
<td>${user.password}</td>
<td>${user.email}</td>
<td>${user.gender}</td>
<td>${user.country}</td>
<td><a href="/edit/${user.id}">Edit</a></td>
<td><a href="/delete/${user.id}">Delete</a></td>
</tr>
</c:forEach>
</table>
<br>
<a href="/">Add New User</a>
</body>

