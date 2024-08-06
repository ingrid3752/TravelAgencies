package com.kh.project.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.project.model.vo.Mem;



public class MemDao {

	public MemDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection connect() throws SQLException {
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/member", "root", "qwer1234");
	}
	
	public void close(PreparedStatement ps, Connection conn) throws SQLException {
		ps.close();
		conn.close();
	}
	
	public void close(ResultSet rs, PreparedStatement ps, Connection conn) throws SQLException {
		rs.close();
		close(ps, conn);
	}
	
	
	public void register(Mem member) throws SQLException {
		Connection conn = connect();
		
		String query = "INSERT INTO member VALUES(?, ?, ?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		
		ps.setString(1, member.getId());
		ps.setString(2, member.getPassword());
		ps.setString(3, member.getName());
		ps.setString(4, member.getPhone());
		ps.executeUpdate();
		close(ps, conn);
	}
	
	
	public Mem login(String id, String password) throws SQLException {
		Connection conn = connect();
		
		String query = "SELECT * FROM member WHERE id = ? AND password = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		
		ps.setString(1, id);
		ps.setString(2, password);
		
		ResultSet rs = ps.executeQuery();
		Mem member = null;
		
		if(rs.next()) {
			member = new Mem(id, password, rs.getString("name"), rs.getString("phone"));
		}
		
		close(rs, ps, conn);
		
		return member;
	}
	
	
	public Mem search(String id) throws SQLException {
		Connection conn = connect();
		
		String query = "SELECT * FROM member WHERE id = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		
		ps.setString(1, id);
		
		ResultSet rs = ps.executeQuery();
		Mem member = null;
		
		if(rs.next()) {
			member = new Mem(id, rs.getString("password"), rs.getString("name"), rs.getString("phone"));
		}
		
		close(rs, ps, conn);
		
		return member;
	}
	
	
	public List<Mem> all() throws SQLException {
		Connection conn = connect();
		
		String query = "SELECT * FROM member";
		PreparedStatement ps = conn.prepareStatement(query);
		
		ResultSet rs = ps.executeQuery();
		List<Mem> memberList = new ArrayList<>();
		
		while(rs.next()) {
			memberList.add(new Mem(rs.getString("id"), 
										rs.getString("password"), 
										rs.getString("name")
										rs.getString("phone")));
		}
		
		close(rs, ps, conn);
		
		return memberList;
	}	
}