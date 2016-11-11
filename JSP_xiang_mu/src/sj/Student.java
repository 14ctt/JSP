package sj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Student {
	
	private String name;
	private String major;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Student() {
		// TODO Auto-generated constructor stub
	}
	public boolean jdbc(){
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String SQL="jdbc:sqlserver://localhost:1433;DatabaseName=xs";
			Connection con=DriverManager.getConnection(SQL,"sa","");
			String sql="insert into student values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, this.name);
			ps.setString(2, this.major);
			int check=ps.executeUpdate();
			ps.close();
			con.close();
			if(check!=0){
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}
	

}
