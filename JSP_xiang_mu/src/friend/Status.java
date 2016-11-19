package friend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

public class Status {
	private ArrayList<String> qingkuang;
	private HashMap<String,ArrayList<String>> timu;

	public Status() {
		qingkuang = new ArrayList<String>();
		timu = new HashMap<String,ArrayList<String>>();
		
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String sql = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
			Connection con = DriverManager.getConnection(sql,"sa","");
			
			String s1 = "select * from pcc ";
			PreparedStatement ps = con.prepareStatement(s1);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				String qk = rs.getString("neirong");
				String id = rs.getString("id");
				qingkuang.add(qk);
				
				ArrayList<String> temp = new ArrayList<String>();
				
				String s2 = "select xuanzhe from pc where problem=?";
				PreparedStatement ps2 = con.prepareStatement(s2);
				ps2.setString(1, id);
				ResultSet rs2 = ps2.executeQuery();
				
				while(rs2.next()){
					String xuanzhe = rs2.getString("xuanzhe");
					temp.add(xuanzhe);
				}
				
				timu.put(qk, temp);
				rs2.close();
				ps2.close();
			
			}
			
			rs.close();
			ps.close();
			con.close();
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public ArrayList<String> getQingkuang() {
		return qingkuang;
	}

	public void setQingkuang(ArrayList<String> qingkuang) {
		this.qingkuang = qingkuang;
	}

	public HashMap<String, ArrayList<String>> getTimu() {
		return timu;
	}

	public void setTimu(HashMap<String, ArrayList<String>> timu) {
		this.timu = timu;
	}
	public void removeArrayList(int s){
		this.qingkuang.remove(s);
	}
	public int cont(){
		return this.qingkuang.size();
	}
//	public static void main (String [] args){
//		Status status=new Status();
//		int num1 = (int) (Math.floor(Math.random()*10)%4);
//		String test = status.getQingkuang().get(num1);
//		 ArrayList<String> xuanzhe = status.getTimu().get(test);
//			
//
//			for (int i = 0; i < 4; i++) {
//				String showxz = xuanzhe.get(i);
//				System.out.print( showxz);
//			}
//	}


}
