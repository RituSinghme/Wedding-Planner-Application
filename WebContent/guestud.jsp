<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import= "javax.servlet.http.*"%> 
<%@ page import= "java.sql.DriverManager"  %> 
<%@ page import= "javax.servlet.http.HttpSession" %>


<%
	String a = request.getParameter("id"); 
	Class.forName("com.mysql.jdbc.Driver");
	 
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false","root","passwordbaru");
       
	Statement stmt = conn.createStatement();
	
	String sql = "delete from  guest where w_id ="+ (Integer)session.getAttribute("wedding_id")  +" and g_id = "+a;
	System.out.print(sql);
	int insertQuery1 = stmt.executeUpdate(sql);
	System.out.print(insertQuery1);

	if (insertQuery1 != 0 ){response.sendRedirect("guest.jsp");}
	conn.close();

 %>
=======
<<<<<<< HEAD
<<<<<<< HEAD
 %>
=======
 %>
>>>>>>> origin/master
=======
 %>
>>>>>>> origin/master
>>>>>>> Stashed changes
