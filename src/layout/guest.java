package layout;
import java.sql.DriverManager;


import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
 
import javax.servlet.http.HttpSession;

import java.sql.*; 


public class guest extends HttpServlet{

	public guest() {
			super();
			// TODO Auto-generated constructor stub
		}

		public boolean filldetails(HttpServletRequest request){
			boolean success = false;
			HttpSession session = request.getSession();
		 	String g_name = request.getParameter("guest_name");    
		   	String contact_no = request.getParameter("contact_no");
		   	String email = request.getParameter("email");
		   	String count = request.getParameter("count");
		   	String w_id = request.getParameter("wedding_id");
		   
			Connection connection = null;
		    PreparedStatement pstatement = null;
		    int insertQuery1 = 0;
		         
			try {
			     Class.forName("com.mysql.jdbc.Driver");
			     	     
			     connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false","root","Chetu1234");
		         String queryString = ("insert into guest(g_name,contact_no,email_id,total_count,w_id) VALUES (?, ?, ?, ?,?)");
		              	     
		         pstatement = connection.prepareStatement(queryString);
		         pstatement.setString(1, g_name);
		         pstatement.setString(2, contact_no);
				     pstatement.setString(3, email);
		         pstatement.setString(4, count);
		         pstatement.setString(5, w_id);
		                     
		         insertQuery1 = pstatement.executeUpdate();
		         pstatement = null;
		         
		         if (insertQuery1 != 0 ){success = true;}

			      }         
			       catch (Exception ex) {System.out.println("Unable to connect to database.");}
		           finally {
		                // close all the connections.
		            		try{
		            			//pstatement.close();
		            			connection.close();
		            			}
		            		catch(SQLException e){ System.out.println(e); }
		           			}
			
			return success;
	}
	
}
