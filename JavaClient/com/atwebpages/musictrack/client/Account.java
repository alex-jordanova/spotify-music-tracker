package com.atwebpages.musictrack.client;

import com.google.gson.Gson;

public class Account {
	private String username;
	private String password;
	private String repeatedpwd;
	private String sessionID;
	
	public Account(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public Account(String username, String password, String repeatedpwd) {
		this.username = username;
		this.password = password;
		this.repeatedpwd = repeatedpwd;
	}
	
	public Account(String id) {
		this.sessionID = id;
	}
	
	public String getAsJSON() {
		Gson json = new Gson();
		return json.toJson(this);
	}

	public String getRepeatedPwd() {
		return repeatedpwd;
	}
	
	public void setSessionId(String sessionId) {
		String id  = sessionId.split(":")[1].replace("\"", "").replace("}", "");
		this.sessionID = id;
	}
	
	public String getSessionId() {
		return sessionID;
	}
}
