package com.demo;

import java.util.*;
import java.sql.*;

public class userDaoImp implements StudentDao {

	// 添加学生方法
	public boolean addStudent(Student s) throws DaoException {

		Connection conn = getConnection();
		String sql = "INSERT INTO student(sno,sname,sex,birthday,institute) VALUES (?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getSno());
			pstmt.setString(2, s.getSname());
			pstmt.setString(3, s.getSex());
			pstmt.setString(4, s.getBirthday());
			pstmt.setString(5, s.getInstitute());
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

	// 查询所有学生
	public List<Student> listStudent() throws DaoException {
		Connection conn = getConnection();
		String sql = "SELECT * FROM student";
		List<Student> list = new ArrayList<Student>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				String sno = rs.getString("sno");
				String sname = rs.getString("sname");
				String sex = rs.getString("sex");
				String birthday = rs.getString("birthday");
				String institute = rs.getString("institute");
				
				Student s = new Student();
				s.setSno(sno);
				s.setSname(sname);
				s.setSex(sex);
				s.setBirthday(birthday);
				s.setInstitute(institute);
				list.add(s);
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

	// 查询单个学生
	public Student listStudentOne(String sno) throws DaoException {
		Connection conn = getConnection();
		String sql = "SELECT * FROM student WHERE sno=?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sno);
			ResultSet rs = pstmt.executeQuery();
			Student s = new Student();
			if (rs.next()) {
				String sname = rs.getString("sname");
				String sex = rs.getString("sex");
				String birthday = rs.getString("birthday");
				String institute = rs.getString("institute");

				s.setSno(sno);
				s.setSname(sname);
				s.setSex(sex);
				s.setBirthday(birthday);
				s.setInstitute(institute);

			}
			return s;
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

	// 删除学生
	public int removeStudent(String sno) throws DaoException {
		Connection conn = getConnection();
		String sql = "DELETE FROM student WHERE sno=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sno);
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

	// 更新学生信息
	public int update(Student stu) throws DaoException {
		Connection conn = getConnection();
		String sql = "UPDATE student Set sname=?,sex=?,birthday=?,institute=? where sno=?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, stu.getSname());
			pstmt.setString(2, stu.getSex());
			pstmt.setString(3, stu.getBirthday());
			pstmt.setString(4, stu.getInstitute());
			pstmt.setString(5, stu.getSno());
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
