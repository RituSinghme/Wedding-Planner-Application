package takeone;

import java.sql.DriverManager;

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

import java.sql.*; 
import java.io.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Register extends HttpServlet{
	
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	public boolean filldetails(HttpServletRequest request){
		boolean success = false;
		HttpSession session = request.getSession();
	 	String email = request.getParameter("email");    
	   	String groom_name = request.getParameter("groom_name");
	   	String bride_name = request.getParameter("bride_name");
	   	String contact_person = request.getParameter("contact_person");
	   	String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");
		String w_date = request.getParameter("w_date");
		 Connection connection = null;
	     PreparedStatement pstatement = null;
	     
	     DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy",Locale.ENGLISH);
	        String dateInString = w_date;
	        Date date = null;
	        java.sql.Date sqlDate = null;

	        try {
	        	if(dateInString!=null)
	        	{
	        		date = formatter.parse(dateInString);
	        		sqlDate = new java.sql.Date(date.getTime());
	        	}
	            

	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
	    
	        
	        
	          int updateQuery = 0;
	          int updateQuery2 = 0;
		                 try {
		                	 Class.forName("com.mysql.jdbc.Driver");
		            	     
		            	     connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false","root","anu123");
	              String queryString = ("insert into customer(email, groom_name, bride_name, contact_person, w_date, booking_date) VALUES (?, ?, ?, ?, ?, CURDATE())");
	              	     
	              pstatement = connection.prepareStatement(queryString);
	              pstatement.setString(1, email);
				  pstatement.setString(2, groom_name);
				  pstatement.setString(3, bride_name);
	              pstatement.setString(4, contact_person);
	              pstatement.setDate(5, sqlDate);
	             
	              
	              updateQuery = pstatement.executeUpdate();
	              pstatement = null;
	              
	              String Query = ("select max(c_id) from customer");
	              pstatement = connection.prepareStatement(Query);
	              ResultSet rs = pstatement.executeQuery();
	              if(rs.next())
	              {
	              String customer_id = rs.getString(1);
	              
	              String queryString2 = ("insert into member(user_name,password,c_id) values (?,?,?)");
	              pstatement = connection.prepareStatement(queryString2);
	              pstatement.setString(1, user_name);
	              pstatement.setString(2, password);
	              pstatement.setString(3, customer_id);
	              updateQuery2 = pstatement.executeUpdate();
	              session.setAttribute("customer_id", customer_id);
	              session.setAttribute("wedding_date", sqlDate);
	              }
	              
	              if(updateQuery!=0 && updateQuery2!=0)
	            	  success=true;
	                            
	            } 
	            catch (Exception ex) {
	            System.out.println("Unable to connect to database.");
	   
	               }
	            finally {
	                // close all the connections.
	            	try{
	            		pstatement.close();
	            	
	                connection.close();
	                }
	            	catch(SQLException e){
	            	 System.out.println(e);
	            	 }
	            }
		
		return success;
	}

}
