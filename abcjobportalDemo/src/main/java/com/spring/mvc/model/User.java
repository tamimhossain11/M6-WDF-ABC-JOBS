package com.spring.mvc.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@javax.persistence.Entity(name = "User_table")
@javax.persistence.Table(name = "User_table")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name="id")
	private Long id;
@Column(name="name")
	private String name;
@Column(name="password")
	private String password;
@Column(name="contact")
	private String contact;
@Column(name="email")
	private String email;
public Long getId() {
	return id;
}
public void setId(Long id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public User(Long id, String name, String city, String password, String contact, String email) {
	super();
	this.id = id;
	this.name = name;
	this.password = password;
	this.contact = contact;
	this.email = email;
}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", password=" + password + ", contact=" + contact
			+ ", email=" + email + "]";
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}

}
