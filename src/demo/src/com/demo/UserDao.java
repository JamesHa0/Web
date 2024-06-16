package com.demo;

import java.sql.SQLException;
import java.util.List;

import com.demo.User;

public interface UserDao extends Dao{
    public boolean addUser(User user) throws DaoException, SQLException;
    public User check(String userId,String password) throws DaoException, SQLException;
    public User check2(String userId,String password) throws DaoException, SQLException;
    public List<User> listUser() throws DaoException, SQLException;
    public User listUserOne(String userId) throws DaoException, SQLException;
    public int removeUser(String userId) throws DaoException, SQLException;
    public int update(User user,String newPassword) throws DaoException, SQLException;
    
}
