package com.atwebpages.musictrack.request;

import java.io.IOException;

import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.apache.http.params.CoreProtocolPNames;

import com.atwebpages.musictrack.client.Response;
import com.atwebpages.musictrack.client.Responses;

public class CurrentlyPlayingRequest implements com.atwebpages.musictrack.request.Request {
	
	public Response send() throws ClientProtocolException, IOException {
		String response = Request.Get(Endpoints.CURRENTLY_PLAYING.getURL())
				                  .addHeader("Content-Type", "text/html; charset=UTF-8")
				                 .execute().returnContent().asString();
		return new Response(response, Endpoints.CURRENTLY_PLAYING);
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
