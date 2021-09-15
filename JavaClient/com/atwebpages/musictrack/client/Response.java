package com.atwebpages.musictrack.client;

import com.atwebpages.musictrack.request.Endpoints;
import com.google.gson.Gson;

public class Response {
	private String content;
	private Endpoints requestType;
	private Gson json = new Gson();
	
	public Response(String content, Endpoints requestType) {
		this.content = content;
		this.requestType = requestType;
	}
	
	public String getContent() {
		return content;
	}
	
	public Endpoints getRequestType() {
		return requestType;
	}
	
	public String getValue() {
		String value  = content.split(":")[1].replace("\"", "").replace("}", "");
		return value;
	}
}
