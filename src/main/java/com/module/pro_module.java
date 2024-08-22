package com.module;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controler.reg;
import com.entity.addpro1;
import com.entity.bloodr;
import com.entity.contactE;
import com.entity.donate;
import com.entity.regentity;

public class pro_module {
	Connection com ;
	public pro_module(Connection com) {
		super();
		this.com=com;
	}
	public boolean regrec(regentity obj) throws SQLException {
		boolean b= false;
		PreparedStatement ps = com.prepareStatement("insert into reg(name,email,pass,addr,city) values(?,?,?,?,?)");
		ps.setString(1, obj.getName());
		ps.setString(2, obj.getEmail());
		ps.setString(3, obj.getPass());
		ps.setString(4, obj.getAdd());
		ps.setString(5, obj.getCity());
		int i=ps.executeUpdate();
		if(i==1) {
			b=true;
		}
		return b;
	}
	public regentity login(regentity obj) throws SQLException {
		regentity user = null;
		PreparedStatement ps = com.prepareStatement("SELECT * from reg where email=? and pass=?");
		ps.setString(1, obj.getEmail());
		ps.setString(2, obj.getPass());
		ResultSet rs= ps.executeQuery();
		
		while(rs.next()) {
			user= new regentity();
			  user.setId(rs.getInt(1)); 
			  user.setName(rs.getString(2));
			  user.setEmail(rs.getString(3));
			  user.setPass(rs.getString(4));
			  user.setAdd(rs.getString(5));
			  user.setCity(rs.getString(6));
			  user.setD_date(rs.getString(7));
		}
		return user;
	}
	
	public List<regentity>freg() throws SQLException{
		List<regentity>l= new ArrayList<regentity>();
		regentity r= null;
		PreparedStatement ps = com.prepareStatement("select * from reg");
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			r= new regentity();
			r.setId(rs.getInt(1));
			r.setName(rs.getString(2));
			r.setEmail(rs.getString(3));
			r.setPass(rs.getString(4));
			r.setAdd(rs.getString(5));
			r.setCity(rs.getString(6));
			l.add(r);
		}
		return l;
		
	}
	public boolean addproduct(addpro1 obj) throws SQLException {
		boolean b= false;
		PreparedStatement ps = com.prepareStatement("insert into addpro(pname,pdisc,pprice,image) values(?,?,?,?)");
		ps.setString(1, obj.getPname());
		ps.setString(2, obj.getPd());
		ps.setString(3, obj.getPrice());
		ps.setBytes(4, obj.getImage());
		int i = ps.executeUpdate();
		if(i==1) {
			b=true;
		}
		return b;
	}
	
	public List<addpro1>fproduct() throws SQLException{
		List<addpro1>l=new ArrayList<addpro1>();
		addpro1 r= null;
		PreparedStatement ps= com.prepareStatement("select * from addpro");
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			r= new addpro1();
			r.setId(rs.getInt(1));
			r.setPname(rs.getString(2));
			r.setPd(rs.getString(3));
			r.setPrice(rs.getString(4));
			r.setImage(rs.getBytes(5));
			l.add(r);
			
		}
		return l;
	}
	public boolean donateinsert(donate obj) throws SQLException {
		boolean b= false;
		PreparedStatement ps =com.prepareStatement("insert into donate(name,email,city,bg,age) values(?,?,?,?,?)");
		ps.setString(1, obj.getName());
		ps.setString(2, obj.getEmail());
		ps.setString(3, obj.getCity());
		ps.setString(4, obj.getBg());
		ps.setString(5, obj.getAge());
		int i = ps.executeUpdate();
		if(i==1) {
			b=true;
		}
		return b;
	}
	public boolean contactinsert(contactE obj) throws SQLException {
		boolean b = false;
		PreparedStatement ps = com.prepareStatement("insert into contact(name,phone,email,sms) values(?,?,?,?)");
		ps.setString(1, obj.getName());
		ps.setString(2, obj.getPhone());
		ps.setString(3, obj.getEmail());
		ps.setString(4, obj.getSms());
		int i = ps.executeUpdate();
		if(i==1) {
			
			b=true;
		}
		return b;
	}
	
	public List<donate>fdonate() throws SQLException{
		List<donate>l= new ArrayList<donate>();
		donate r= null;
		PreparedStatement ps= com.prepareStatement("select * from donate where d_date='nod' ");
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			r= new donate();
			r.setId(rs.getInt(1));
			r.setName(rs.getString(2));
			r.setEmail(rs.getString(3));
			r.setCity(rs.getString(4));
			r.setBg(rs.getString(5));
			r.setAge(rs.getString(6));
			l.add(r);
		}
		return l;
		
	}
	
	public List<regentity>profileup(int id) throws SQLException{
		List<regentity>l=new ArrayList<regentity>();
		regentity r =null;
		PreparedStatement ps = com.prepareStatement("select * from reg where id=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			r=new regentity();
			r.setId(rs.getInt(1));
			r.setName(rs.getString(2));
			r.setEmail(rs.getString(3));
			r.setPass(rs.getString(4));
			r.setAdd(rs.getString(5));
			r.setCity(rs.getString(6));
			
			l.add(r);
		}
		System.out.println(l);
		return l;
		
	}
	public boolean update(regentity obj) throws SQLException {
	    boolean b = false;
	    try {
	    PreparedStatement ps =com.prepareStatement("update reg set name=?, email=?,addr=?,pass=?,city=? where id=?");
	    ps.setString(1, obj.getName());
	    ps.setString(2, obj.getEmail());
	    ps.setString(3, obj.getAdd());
	    ps.setString(4, obj.getPass());
	    ps.setString(5, obj.getCity());
	    ps.setInt(6, obj.getId());
	    
	    int i = ps.executeUpdate();
	    if(i==1) {
	    	b=true;
	    }
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		return b;
	}
	
	
	public List<donate>searchblood(String bg) throws SQLException{
		List<donate>l= new ArrayList<donate>();
		donate r= null;
		PreparedStatement ps = com.prepareStatement("select * from donate where bg=?");
		ps.setString(1, bg);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			r= new donate();
			r.setId(rs.getInt(1));
			r.setName(rs.getString(2));
			r.setEmail(rs.getString(3));
			r.setCity(rs.getString(4));
			r.setBg(rs.getString(5));
			r.setAge(rs.getString(6));
			l.add(r);
		}
		return l;
		
	}
	public boolean bloodre(bloodr obj) throws SQLException {
		boolean b = false;
		PreparedStatement ps = com.prepareStatement("insert into bloodr(name,email,city,bg) values(?,?,?,?)");
		ps.setString(1, obj.getName());
		ps.setString(2, obj.getEmail());
		ps.setString(3, obj.getCity());
		ps.setString(4, obj.getBg());
		int i=ps.executeUpdate();
		if(i==1) {
			b=true;
		}
		return b;
	}
	
	public List<regentity>certificate(int id) throws SQLException{
		List< regentity> l = new ArrayList<regentity>();
		regentity r = null;
		PreparedStatement ps = com.prepareStatement("select * from reg where id =?");
		ps.setInt(1, id);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			r = new regentity();
			r.setId(rs.getInt(1));
			r.setName(rs.getString(2));
			r.setEmail(rs.getString(3));
			
			r.setPass(rs.getString(4));
			r.setCity(rs.getString(5));
			r.setAdd(rs.getString(6));
			r.setD_date(rs.getString(7));
			l.add(r);
		}
		return l;
		
	}
}
