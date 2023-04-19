package com.spring.mvc.servic;

import com.spring.mvc.model.User;

public interface UserService {
	public void registerUser(User user);
	public User loginUser(User user);
	public User checkMail(User user);
}
