package com.atwebpages.musictrack.request;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.apache.http.entity.ContentType;

import com.atwebpages.musictrack.client.Account;
import com.atwebpages.musictrack.client.Response;
import com.atwebpages.musictrack.client.Responses;

public class RegisterRequest implements com.atwebpages.musictrack.request.Request {
private Account account; 
	
	public RegisterRequest(Account account) {
		this.account = account;
	}
	
	public Response send() throws ClientProtocolException, IOException {
		String response = Request.Post(Endpoints.REGISTER.getURL())
				                 .bodyString(account.getAsJSON(), ContentType.APPLICATION_JSON)
				                 .execute().returnContent().asString();
		return new Response(response, Endpoints.REGISTER);
	}

	@Override
	public void run() {
		try {
			Response response = send();
			System.out.println(response.getContent());
			Responses.add(response);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
