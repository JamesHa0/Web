package com.demo;

import java.util.List;

import com.demo.User;

public interface StudentDao extends Dao{
    public boolean addStudent(Student s) throws DaoException;
    public List<Student> listStudent() throws DaoException;
    public Student listStudentOne(String sno) throws DaoException;
    public int removeStudent(String sno) throws DaoException;
    public int update(Student stu) throws DaoException;
    

}
