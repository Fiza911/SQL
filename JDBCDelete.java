package ANP_D0453;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCDelete {

	public static void main(String[] args) {
		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","Praj@2811");
			System.out.println(con);
			//3.create statment
			PreparedStatement ps=con.prepareStatement("delete from emp where  emp_id=?");
			ps.setInt(1,4);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record deleted  sucessfully");
			//5.Close connection
			con.close();
		}catch(Exception e) {
		System.out.println(e);
		}
	}

}
