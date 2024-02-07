package com.marondal.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// Mysql jdbc의 사용과정을 복잡한 코드 구성을 간결하게 
// 메소드로 사용할 수 있도록 정리하는 역할
public class MysqlService {
	
	// static 변수 : 객체생성 없이 사용할 수 있는 멤버변수
	private static MysqlService mysqlService = null;
	
	private Connection connection;
	private Statement statement;
	
	// 디자인 패턴 - singleton 패턴
	// 자기자신의 객체를 돌려주는 메소드
	// static 메소드 : 객체 생성 없이 사용할 수 있는 클래스 메소드
	public static MysqlService getInstance() {
		// static 메소드는 멤버변수를 사용할 수 없다. 
		if(mysqlService == null) {			
			mysqlService = new MysqlService();
		}
		
		return mysqlService;	
	}
	
	// 접속
	public void connect() {
		
		// 데이터 베이스 접속
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 접속주소, id, password
			String url = "jdbc:mysql://localhost:3306/dulumary_0115";
			String id = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, id, password);
			statement = connection.createStatement();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
	
	// select 쿼리 수행
	public ResultSet select(String query) {
		
		ResultSet resultSet;
		try {
			resultSet = statement.executeQuery(query);
			return resultSet;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}
	}
	
	// insert, update, delete 쿼리 수행 기능
	public int update(String query) {
		// 실행된 행의 개수 
		int count;
		try {
			count = statement.executeUpdate(query);
			return count;
		} catch (SQLException e) {
			
			e.printStackTrace();
			return -1;
		}
	}
	
	// 접속 끊기
	public void disconnect() {
		
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	

}
