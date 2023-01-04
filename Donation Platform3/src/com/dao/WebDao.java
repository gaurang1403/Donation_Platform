package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.model.ContactModel;
import com.model.DonatenowModel;
import com.model.SignupModel;


public class WebDao {

	public static Connection getconnect() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webwing", "root", "");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;
	}

	public static int RegisterCoustomer(SignupModel m) {
		int status = 0;

		Connection con = WebDao.getconnect();

		try {
			java.sql.PreparedStatement ps = con
					.prepareStatement("insert into signup(name,email,mobile,password) values(?,?,?,?)");

			ps.setString(1, m.getName());
			ps.setString(2, m.getEmail());
			ps.setString(3, m.getMobile());
			ps.setString(4, m.getPassword());

			status = ps.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return status;
	}

	public SignupModel LoginCoustomer(SignupModel model) {
		boolean flag = false;

		SignupModel obj = null;

		try {
			Connection con = WebDao.getconnect();
			PreparedStatement ps = con.prepareStatement("select * from signup where email=? and password=?");
			ps.setString(1, model.getEmail());
			ps.setString(2, model.getPassword());

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				obj = new SignupModel();
				obj.setName(rs.getString("name"));
				obj.setEmail(rs.getString("email"));
				obj.setMobile(rs.getString("mobile"));
				obj.setPassword(rs.getString("password"));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return obj;
	}
	
	
	
	
	public static int DonateNow(DonatenowModel m) {
		int status = 0;

		Connection con = WebDao.getconnect();

		try {
			PreparedStatement ps = con
					.prepareStatement("insert into donatenow(name,email,shoes,clothes,grocerry,message) values(?,?,?,?,?,?)");

			ps.setString(1, m.getName());
			ps.setString(2, m.getEmail());
			ps.setString(3, m.getShoes());
			ps.setString(4, m.getClothes());
			ps.setString(5, m.getGrocerry());
			ps.setString(6, m.getMessage());
			
			status = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;
	}
	
	public static List<DonatenowModel> getdonateddetails(SignupModel m2)
	{
		List<DonatenowModel> i = new ArrayList<DonatenowModel>();
		
		HttpServletRequest request = null;
		
		try {
			
			
			SignupModel s=new SignupModel();
			Connection con = WebDao.getconnect();
			PreparedStatement ps= con.prepareStatement("Select * from donatenow where email=? ");
			System.out.println(m2.getEmail());
			ps.setString(1, m2.getEmail());
			ResultSet rs = (ResultSet) ps.executeQuery();
			
			while(rs.next())
			{
				DonatenowModel d1 = new DonatenowModel();
				//d1 = new ImageModel();
				d1.setId(rs.getInt(1));
				d1.setName(rs.getString(2));
				d1.setEmail(rs.getString(3));
				d1.setShoes(rs.getString(4));
				d1.setClothes(rs.getString(5));
				d1.setGrocerry(rs.getString(6));
				d1.setMessage(rs.getString(7));
				i.add(d1);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return i;
	}
}
