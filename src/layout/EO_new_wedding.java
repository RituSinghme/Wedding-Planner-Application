package layout;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.*;

public class EO_new_wedding extends HttpServlet{

	public List weddingList(HttpServletRequest request)
	{
		List weddingids = new ArrayList();
		HttpSession session = request.getSession();
		String eo_id = session.getAttribute("eo_id").toString();
		PreparedStatement pstatement = null;
		ResultSet rs0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "anu123");
			
			String query0 = ("select w_id from wedding where eo_id!= '"+ eo_id + "'");
			pstatement = con.prepareStatement(query0);
			rs0 = pstatement.executeQuery();
			while(rs0.next())
			{
				weddingids.add(rs0.getString(1));
			}
			
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		return weddingids;
	}
	
	public List retrieveWeddingComponents(String wedid)
	{
		List weddingComponents = new ArrayList();
		PreparedStatement pstatement = null;
		ResultSet rs0;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "anu123");
			if(wedid!=null)
			{
				
				
					String query0 = ("select * from wedding_component where w_id = '" + wedid + "'");
					pstatement = con.prepareStatement(query0);
					rs0 = pstatement.executeQuery();
					int n=1;
					while(rs0.next()){
					
						weddingComponents.add(rs0.getInt(1));
						weddingComponents.add(rs0.getInt(2));
						weddingComponents.add(rs0.getInt(3));
						weddingComponents.add(rs0.getInt(4));
						weddingComponents.add(rs0.getInt(5));
						weddingComponents.add(rs0.getInt(6));
						weddingComponents.add(rs0.getInt(7));
					
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
}

