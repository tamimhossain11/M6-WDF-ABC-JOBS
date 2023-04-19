package com.spring.mvc.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@javax.persistence.Entity(name = "message_table")

@javax.persistence.Table(name = "message_table")
public class Message {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Long id;

	@NotNull

	private String content;
//sender name
	@NotNull

	private String sendername;
	@NotNull
	private String username;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSendername() {
		return sendername;
	}

	public void setSendername(String sendername) {
		this.sendername = sendername;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Message(Long id, String content, String sendername, String username) {
		super();
		this.id = id;
		this.content = content;
		this.sendername = sendername;
		this.username = username;
	}

	@Override
	public String toString() {
		return "Message [id=" + id + ", content=" + content + ", sendername=" + sendername + ", username=" + username
				+ "]";
	}

	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

}
