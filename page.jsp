<%@ page import="java.sql.*" %>
  <%@ page import="java.util.*" %>
  <%
    int f=0;
    String url = "jdbc:mysql://sql6.freesqldatabase.com:3306/sql6437209";
    String user = "sql6437209";
    String pass = "Y8sXVZiwQh";
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    try
    {
        Connection conn = DriverManager.getConnection(url,user,pass);
        Statement stmt = conn.createStatement();
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String subject=request.getParameter("subject");
        String message=request.getParameter("message");

        String insert = "insert into contact_me values(?, ?, ?, ?)";
        PreparedStatement st2 = conn.prepareStatement(insert);
        st2.setString(1, name);
        st2.setString(2, email);
        st2.setString(3, subject);
        st2.setString(4, message);
        st2.executeUpdate();
        out.println("Data]= is successfully inserted!");
        
      }
    catch(Exception e){
                 out.println("Exception : "+e.getMessage());
       }
        
       %>