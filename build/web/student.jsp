
<html>
    <head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shekhar's Enrollment System</title>
        <link rel="stylesheet" href="css.css"/>
    </head>
   <body background="photo/r.bmp">
        <div id="course-table">
        <ul>
            <li class="active"><a href="home.jsp">Back</a></li>
        </ul>
        </div>
        <%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  Connection conn = null;
  String url="jdbc:mysql://localhost:3306/";
  String dbName ="database2";
  String  driver="com.mysql.jdbc.Driver";
  String userName="root";
  String password="";
  Statement st;
  try{
      Class.forName(driver).newInstance();
      conn= DriverManager.getConnection(url+dbName,userName,password);
      st=conn.createStatement(); 
      String name=request.getParameter("name");
      String passord=request.getParameter("passord");
      String email=request.getParameter("email");
      String mobile=request.getParameter("mobile");
      String city=request.getParameter("city");
      String query="insert into studentMaster(Name,passord,email,mobile,city)values('"+name+"','"+passord+"','"+email+"','"+mobile+"','"+city+"')";
      int result=st.executeUpdate(query);
       String quer="SELECT * FROM studentMaster";
      ResultSet rs = st.executeQuery(quer);
     
%>
         <%--
CourseMaster(Name,DURATION,TECHNOLOGY),studentMaster(name,passord,email,mobile,city),
CoursesEnrolled(studentid,courseid),feepaid
  --%>
<form method="post" action="viewallcourse.jsp">
      <center>   <h3>SUBMISSION IS SUCCESSFULLY DONE.. <a href="home.jsp"><br>LOGIN NOW</a></h3></center>
        
<%
 
}
catch(Exception e){%><link rel="stylesheet" href="css.css"/>
              <table Id="course-table" align="center">
               <div id="course-table">
                   <h2>This Username Already Exist<a href="student_1.jsp"><br>Try again</a></h2>
               </div>
              </table><%}
%> 
            
</form>  

    </body>
</html>
 


