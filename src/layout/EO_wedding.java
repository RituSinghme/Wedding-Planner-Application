<<<<<<< Updated upstream
=======
<<<<<<< HEAD
<<<<<<< HEAD
package layout;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class EO_wedding extends HttpServlet {

	public List showrecords(HttpServletRequest request) {

		List checklistids = new ArrayList();
		HttpSession session = request.getSession();
		String eo_id = session.getAttribute("eo_id").toString();
		PreparedStatement pstatement = null;
		ResultSet rs0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "passwordbaru");
			
			String query0 = ("select cl_id from checklist where w_id in (select w_id from wedding where eo_id= '"+ eo_id + "')");
			pstatement = con.prepareStatement(query0);
			rs0 = pstatement.executeQuery();
			while(rs0.next())
			{
				checklistids.add(rs0.getString(1));
			}
			
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		return checklistids;

}
	public List retrieveWeddingComponents(String cl_id)
	{
		List weddingComponents = new ArrayList();
		PreparedStatement pstatement = null;
		ResultSet rs0;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "anu123");
			if(cl_id!=null)
			{
				
				
					String query0 = ("select * from checklist where cl_id = '" + cl_id + "'");
					pstatement = con.prepareStatement(query0);
					rs0 = pstatement.executeQuery();
					int n=1;
					while(rs0.next()){
					
						weddingComponents.add(rs0.getInt("cl_id"));
						weddingComponents.add(rs0.getInt("w_id"));
						weddingComponents.add(rs0.getString("checklist_name"));
						weddingComponents.add(rs0.getDate("submit_date"));
						weddingComponents.add(rs0.getString("status"));
						weddingComponents.add(rs0.getString("note"));
					
				}
					
				
			}
			con.close();
			pstatement.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally{
			
		}
		
		return weddingComponents;
	}
=======
=======
>>>>>>> origin/master
>>>>>>> Stashed changes
package takeone;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class EO_wedding extends HttpServlet {

	public List showrecords(HttpServletRequest request) {

		List checklistids = new ArrayList();
		HttpSession session = request.getSession();
		String eo_id = session.getAttribute("eo_id").toString();
		PreparedStatement pstatement = null;
		ResultSet rs0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "anu123");
			
			String query0 = ("select cl_id from checklist where w_id in (select w_id from wedding where eo_id= '"+ eo_id + "')");
			pstatement = con.prepareStatement(query0);
			rs0 = pstatement.executeQuery();
			while(rs0.next())
			{
				checklistids.add(rs0.getString(1));
			}
			
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		return checklistids;

}
	public List retrieveWeddingComponents(String cl_id)
	{
		List weddingComponents = new ArrayList();
		PreparedStatement pstatement = null;
		ResultSet rs0;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "anu123");
			if(cl_id!=null)
			{
				
				
					String query0 = ("select * from checklist where cl_id = '" + cl_id + "'");
					pstatement = con.prepareStatement(query0);
					rs0 = pstatement.executeQuery();
					int n=1;
					while(rs0.next()){
					
						weddingComponents.add(rs0.getInt("cl_id"));
						weddingComponents.add(rs0.getInt("w_id"));
						weddingComponents.add(rs0.getString("checklist_name"));
						weddingComponents.add(rs0.getDate("submit_date"));
						weddingComponents.add(rs0.getString("status"));
						weddingComponents.add(rs0.getString("note"));
					
				}
					
				
			}
			con.close();
			pstatement.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally{
			
		}
		
		return weddingComponents;
	}
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
>>>>>>> origin/master
=======
>>>>>>> origin/master
>>>>>>> Stashed changes
}