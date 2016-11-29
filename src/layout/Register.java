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
	     
	     	        
		if (email != null && email.length() != 0) {
			
						
			DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
			String dateInString = w_date;
			Date date = null;
			java.sql.Date sqlDate = null;

			try {
				if (dateInString != null) {
					date = formatter.parse(dateInString);
					sqlDate = new java.sql.Date(date.getTime());
				}

			} catch (ParseException e) {
				e.printStackTrace();
			}

			int insertQuery1 = 0;
			int insertQuery2 = 0;
			int insertQuery3 = 0;
			int insertQuery4 = 0;
			try {
				Class.forName("com.mysql.jdbc.Driver");

				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
<<<<<<< Updated upstream
						"root", "anu123");
=======
<<<<<<< HEAD
<<<<<<< HEAD
						"root", "passwordbaru");
=======
						"root", "anu123");
>>>>>>> origin/master
=======
						"root", "anu123");
>>>>>>> origin/master
>>>>>>> Stashed changes
				
				String query0 = ("select * from customer where email = '" + email +"'");
				pstatement = connection.prepareStatement(query0);
				ResultSet rs0 = pstatement.executeQuery();
				if(rs0!=null && rs0.next())
				{
					request.setAttribute("err_msg", "Email id already registered..Please Login..!!");
					return false;
				}
				
				String queryString = ("insert into customer(email, groom_name, bride_name, contact_person, w_date, booking_date) VALUES (?, ?, ?, ?,?, CURDATE())");

				pstatement = connection.prepareStatement(queryString);
				pstatement.setString(1, email);
				pstatement.setString(2, groom_name);
				pstatement.setString(3, bride_name);
				pstatement.setString(4, contact_person);
				pstatement.setDate(5, sqlDate);

				insertQuery1 = pstatement.executeUpdate();
				pstatement = null;

				String Query = ("select max(c_id) from customer");
				pstatement = connection.prepareStatement(Query);
				ResultSet rs = pstatement.executeQuery();

				if (rs != null && rs.next()) {
					String customer_id = rs.getString(1);

					String queryString2 = ("insert into member(user_name,password,c_id) values (?,?,?)");
					pstatement = connection.prepareStatement(queryString2);
					pstatement.setString(1, user_name);
					pstatement.setString(2, password);
					pstatement.setString(3, customer_id);
					insertQuery2 = pstatement.executeUpdate();

					String query3 = ("insert into wedding(c_id,w_date) values (?,?)");
					pstatement = connection.prepareStatement(query3);
					pstatement.setString(1, customer_id);
					pstatement.setDate(2, sqlDate);
					insertQuery3 = pstatement.executeUpdate();

					if (insertQuery3 != 0) {
						Query = ("select max(w_id) from wedding");
						pstatement = connection.prepareStatement(Query);
						ResultSet rs3 = pstatement.executeQuery();
						if (rs3.next()) {
							int wedding_id = rs3.getInt(1);
							session.setAttribute("wedding_id", wedding_id);

							String query4 = ("insert into wedding_component(w_id) values (" + wedding_id + ")");
							pstatement = connection.prepareStatement(query4);
							insertQuery4 = pstatement.executeUpdate();

							String Query5 = ("select max(wc_id) from wedding_component");
							pstatement = connection.prepareStatement(Query5);
							ResultSet rs4 = pstatement.executeQuery();
							if (rs4.next())
								session.setAttribute("wc_id", rs4.getString(1));

							// String query5 = ("select max(wc_id) from
							// wedding")
						}

					}

					session.setAttribute("customer_id", customer_id);
					session.setAttribute("wedding_date", w_date);
					String cus = session.getAttribute("customer_id").toString();
					String wed_date = session.getAttribute("wedding_date").toString();
					String wed_id = session.getAttribute("wedding_id").toString();
					String wed_compo = session.getAttribute("wc_id").toString();

				}

				if (insertQuery1 != 0 && insertQuery2 != 0 && insertQuery3 != 0 && insertQuery4 != 0)
					success = true;

			} catch (Exception ex) {
				System.out.println("Unable to connect to database.");

			} finally {
				// close all the connections.
				try {
					pstatement.close();

					connection.close();
				} catch (SQLException e) {
					System.out.println(e);
				}
			}
		}

		return success;
	}

}