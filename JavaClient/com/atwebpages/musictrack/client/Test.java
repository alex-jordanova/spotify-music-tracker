package com.atwebpages.musictrack.client;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;

import com.atwebpages.musictrack.request.CurrentlyPlayingRequest;
import com.atwebpages.musictrack.request.LoginRequest;

public class Test {

	public static void main(String[] args) throws ClientProtocolException, IOException {
		Account account = new Account("alabala", "alabala");
		LoginRequest login = new LoginRequest(account);
		login.run();
		
		CurrentlyPlayingRequest request = new CurrentlyPlayingRequest();
		Responses responses = new Responses();
		request.run();
	}

}
