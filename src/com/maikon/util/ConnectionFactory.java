package com.maikon.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectionFactory {
	
			public static Connection getConnection() throws Exception{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/cadastroclientes";
				String usuario= "root";
				String senha= "";			
				return DriverManager.getConnection(url, usuario,senha);
			}catch (Exception e){
				throw new Exception(e.getMessage());			
			}		
		}	
		public static void closeConnection(Connection conn, Statement stmt, ResultSet rs) throws Exception{
				close(conn,stmt,rs);			
		}
		public static void closeConnection(Connection conn, Statement stmt) throws Exception{
				close(conn, stmt, null);
				}
		public static void closeConnection(Connection conn) throws Exception{
				close(conn, null,null);
				}	
		private static void close (Connection conn, Statement stmt, ResultSet rs)throws Exception{
			try {
				if (rs != null)
				System.out.println("Conexão obtida com Sucesso");
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			}catch (Exception e){
					throw new Exception(e.getMessage());
				} } }



