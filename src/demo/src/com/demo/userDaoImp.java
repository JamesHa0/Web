package com.demo;

import java.util.*;
import java.sql.*;

public class userDaoImp implements UserDao {

	// 添加一个用户（注册）
	public boolean addUser(User user) throws SQLException {
		Connection conn = getConnection();
		String sql = "INSERT INTO User(userId,userName,password,phoneNumber,email) VALUES (?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserName());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getPhoneNumber());
			pstmt.setString(5, user.getEmail());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException sqle) {
			System.out.println(sqle);
			return false;
		} finally {
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}
	
	//登录（用户）
	public User check(String userId,String password) throws SQLException {
		Connection conn = getConnection();
		String sql = "SELECT * FROM User WHERE userId=? and password=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			User user = new User();
			if (rs.next()) {
				String userName = rs.getString("userName");
				String phoneNumber = rs.getString("phoneNumber");
				String email = rs.getString("email");

				user.setUserId(userId);
				user.setUserName(userName);
				user.setPassword(password);
				user.setPhoneNumber(phoneNumber);
				user.setEmail(email);
			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}
	
	//登录（管理员）
		public User check2(String userId,String password) throws SQLException {
			Connection conn = getConnection();
			String sql = "SELECT * FROM Admin WHERE userId=? and password=?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);
				pstmt.setString(2, password);
				ResultSet rs = pstmt.executeQuery();
				User user = new User();
				if (rs.next()) {
					String userName = rs.getString("userName");
					String phoneNumber = rs.getString("phoneNumber");
					String email = rs.getString("email");

					user.setUserId(userId);
					user.setUserName(userName);
					user.setPassword(password);
					user.setPhoneNumber(phoneNumber);
					user.setEmail(email);
				}
				return user;
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			} finally {
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
		}
	
	// 查询单个用户
	public User listUserOne(String userId) throws DaoException, SQLException {
		Connection conn = getConnection();
		String sql = "SELECT * FROM User WHERE userId=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			User user = new User();
			if (rs.next()) {
				String userName = rs.getString("userName");
				String password = rs.getString("password");
				String phoneNumber = rs.getString("phoneNumber");
				String email = rs.getString("email");

				user.setUserId(userId);
				user.setUserName(userName);
				user.setPassword(password);
				user.setPhoneNumber(phoneNumber);
				user.setEmail(email);
			}
			return (User) user;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}

	// 查询所有用户
	public List<User> listUser() throws DaoException, SQLException {
		Connection conn = getConnection();
		String sql = "SELECT * FROM User";
		List<User> list = new ArrayList<User>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				String userId = rs.getString("userId");
				String userName = rs.getString("userName");
				String password = rs.getString("password");
				String phoneNumber = rs.getString("phoneNumber");
				String email = rs.getString("email");
				
				User user = new User();
				user.setUserId(userId);
				user.setUserName(userName);
				user.setPassword(password);
				user.setPhoneNumber(phoneNumber);
				user.setEmail(email);
				list.add(user);
			}
			return list;
		} catch (SQLException sqle) {
			System.out.println(sqle);
			return null;
		} finally {
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}


	// 删除用户
	public int removeUser(String userId) throws DaoException, SQLException {
		Connection conn = getConnection();
		String sql = "DELETE FROM User WHERE userId=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			return pstmt.executeUpdate();
		} catch (SQLException sqle) {
			System.out.println(sqle);
			return 0;
		} finally {
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}

	// 修改密码
	public int update(User user,String newPassword) throws DaoException, SQLException {
		Connection conn = getConnection();
		String sql = "UPDATE User Set password=? where userId=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, newPassword);
			pstmt.setString(3, user.getUserId());
			return pstmt.executeUpdate();
		} catch (SQLException sqle) {
			System.out.println(sqle);
			return 0;
		} finally {
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}

	}

}
