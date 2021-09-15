package com.atwebpages.musictrack.request;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.apache.http.entity.ContentType;

import com.atwebpages.musictrack.client.Account;
import com.atwebpages.musictrack.client.Response;
import com.atwebpages.musictrack.client.Responses;

public class LogoutRequest implements com.atwebpages.musictrack.request.Request {
private Account account; 
	
	public LogoutRequest(Account account) {
		this.account = account;
	}
	
	public Response send() throws ClientProtocolException, IOException {
		String response = Request.Delete(Endpoints.LOGOUT.getURL()).execute().returnContent().asString();
		return new Response(response, Endpoints.LOGOUT);
	}

	@Override
	public void run() {
		try {
			Responses.add(send());
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
