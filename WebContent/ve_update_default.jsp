<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import= "javax.servlet.http.*"%> 
<%@ page import= "java.sql.DriverManager"  %> 
<%@ page import= "javax.servlet.http.HttpSession" %>


<% 

	Class.forName("com.mysql.jdbc.Driver");
	 
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wedding_planner","root", "Chetu1234");
			         	         
	Statement stmt = conn.createStatement();
	
	//String sql = "delete from  guest where w_id ="+ (Integer)session.getAttribute("wedding_id")  +" and g_id = "+a;
	String sql = "update wedding_component set venue_id = 6 where venue_id is null and wc_id = "+ (Integer)session.getAttribute("wc_id") ;

	System.out.print(sql);
	int insertQuery1 = stmt.executeUpdate(sql);
	System.out.print(insertQuery1);

	{response.sendRedirect("success.jsp");}
	conn.close();
 %>
