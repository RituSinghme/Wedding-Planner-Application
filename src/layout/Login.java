package takeone;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
	public boolean authenticate(HttpServletRequest request) {

		boolean status = false;
		HttpSession session = request.getSession();
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");
		//String abc = session.getAttribute("customer_id").toString();
		PreparedStatement pstatement = null;
		ResultSet rs;
		int c_id,w_id, wc_id = 0;
		Date w_date;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Wedding_Planner?useSSL=false",
					"root", "anu123");
			Statement st = con.createStatement();

			rs = st.executeQuery(
					"select * from member where user_name='" + user_name + "' and password='" + password + "'");
			if (rs != null && rs.next()) {
				status = true;
			}

			String query = ("select c_id from member where user_name = '" + user_name + "' and password = '" + password
					+ "'");
			pstatement = con.prepareStatement(query);
			rs = pstatement.executeQuery();

			if (rs.next()) {
				c_id = rs.getInt(1);
				session.setAttribute("customer_id", c_id);
				query = ("select w_id,w_date from wedding where c_id = " + c_id);
				pstatement = con.prepareStatement(query);
				rs = pstatement.executeQuery();
				if(rs.next()){
					w_id = rs.getInt("w_id");
					w_date = rs.getDate("w_date");
				
				query = ("select wc_id from wedding_component where w_id = " + w_id);
				pstatement = con.prepareStatement(query);
				rs = pstatement.executeQuery();
				if(rs.next())
					wc_id = rs.getInt(1);
				
				session.setAttribute("customer_id", c_id);
				session.setAttribute("wedding_date", w_date);
				session.setAttribute("wedding_id", w_id);
				session.setAttribute("wc_id", wc_id);
				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;
	}

}
