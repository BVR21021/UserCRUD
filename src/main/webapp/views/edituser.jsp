<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <body bgcolor="pink">
  <h1>Edit User Here</h1>
  <form:form method="POST" action="/editusers">
  <table>
  <tr>
  <td><form:hidden path="id"/></td>
  </tr>
  <tr>
  <td>Name:</td>
  <td><form:input path="name"/></td>
  </tr>
  <tr>
  <td>Password:</td>
  <td><form:input path="password"/></td>
  </tr>
  <tr>
  <td>Email:</td>
  <td><form:input path="email"/></td>
  </tr>
  <tr>
  <td>Gender:</td>
  <td><form:radiobutton path="gender" value="male"/>male
  <form:radiobutton path="gender" value="female"/>female
  </td>
  </tr>
  <tr>
  <td>Country:</td>
  <td><form:select path="country">
  <form:option value="india"></form:option>
  <form:option value="england"></form:option>
  </form:select></td>
  </tr> 
  <tr>    
          <td> </td>    
          <td><input type="submit" value="EditSave" /></td>    
         </tr>    
  </table>
  </form:form>
   <a href="/views">View All Employee Details</a><p></p>
       <a href="/">Add New Employee Here</a>  
       </body>
  
  