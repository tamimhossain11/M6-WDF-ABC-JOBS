package com.spring.mvc.servic;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mvc.dao.AdminDAO;
import com.spring.mvc.model.Admin;
@Service
@Transactional
public class AdminSeviceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	public Admin adminlogin(Admin admin) {
		// TODO Auto-generated method stub
		return adminDAO.adminlogin(admin);
	}

}
