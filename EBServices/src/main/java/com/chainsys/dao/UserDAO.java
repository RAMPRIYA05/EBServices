package com.chainsys.dao;

import java.sql.SQLException;
import java.util.List;


import com.chainsys.model.Services;

public interface UserDAO {
    public void userRegister(Services services) throws ClassNotFoundException, SQLException;
    public String userLogIn(String emailId) throws ClassNotFoundException, SQLException;
    public List<Services> readForm(Services services) throws ClassNotFoundException, SQLException;
    public void deleteForm(Services services) throws ClassNotFoundException, SQLException;
    public void updateForm(Services services) throws ClassNotFoundException, SQLException;
	List<Services> readAll(Services services) throws ClassNotFoundException, SQLException;
}
