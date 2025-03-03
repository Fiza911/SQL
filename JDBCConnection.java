package ANP_D0453;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*JDBC Interface :
 Driver interface
Connection interface
Statement interface
PreparedStatement interface
CallableStatement interface
ResultSet interface
ResultSetMetaData interface
DatabaseMetaData interface
RowSet interface

 *list of popular classes of JDBC API are given below:
DriverManager class
Blob class
Clob class
Types class

 * steps to connect any java application with the database using JDBC. These steps are as follows:
1.Register the Driver class
2.Create connection
3.Create statement
4.Execute queries
5.Close connection
 */
public class JDBCConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","Praj@2811");
			System.out.println(con);
			//3.Create statement
			Statement stmt=con.createStatement();
			//4.Execute queries
			ResultSet rs=stmt.executeQuery("select * from emp");
			while(rs.next())
			{
				System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
			}
			//5.Close connection
			con.close();
		}catch(Exception e) {
		System.out.println(e);
		}
		
	}

}
