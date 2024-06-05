package com.chainsys.dao;

import java.sql.SQLException;

public interface UserBill {
     public void  calculateAmount();
     public void customerBill() throws ClassNotFoundException, SQLException;
}
