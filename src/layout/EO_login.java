<<<<<<< Updated upstream
=======
<<<<<<< HEAD
<<<<<<< HEAD
package layout;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

public class EO_login extends HttpServlet{
	public boolean authenticate(HttpServletRequest request)
	{
		boolean status = false;
		HttpSession session = request.getSession();
		String eo_name = request.getParameter("eo_name");
		String pwd = request.getParameter("password");
		PreparedStatement pstatement = null;
		ResultSet rs;
		int eo_id = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "anu123");
			
			String query0 = ("select eo_id from event_organizer where eo_name = '" + eo_name +"' and password ='"+ pwd+"'");
			pstatement = con.prepareStatement(query0);
			rs = pstatement.executeQuery();
			if(rs!=null && rs.next())
			{
				status=true;
				eo_id= rs.getInt(1);
				session.setAttribute("eo_id", eo_id);
				
			}
			
		
			
		} catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		return status;
	}

}
=======
=======
>>>>>>> origin/master
>>>>>>> Stashed changes
package takeone;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

public class EO_login extends HttpServlet{
	public boolean authenticate(HttpServletRequest request)
	{
		boolean status = false;
		HttpSession session = request.getSession();
		String eo_name = request.getParameter("eo_name");
		String pwd = request.getParameter("password");
		PreparedStatement pstatement = null;
		ResultSet rs;
		int eo_id = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "anu123");
			
			String query0 = ("select eo_id from event_organizer where eo_name = '" + eo_name +"' and password ='"+ pwd+"'");
			pstatement = con.prepareStatement(query0);
			rs = pstatement.executeQuery();
			if(rs!=null && rs.next())
			{
				status=true;
				eo_id= rs.getInt(1);
				session.setAttribute("eo_id", eo_id);
				
			}
			
		
			
		} catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
		return status;
	}

}
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
>>>>>>> origin/master
=======
>>>>>>> origin/master
>>>>>>> Stashed changes
