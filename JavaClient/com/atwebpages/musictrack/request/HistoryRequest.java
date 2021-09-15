package com.atwebpages.musictrack.request;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;

import com.atwebpages.musictrack.client.Response;
import com.atwebpages.musictrack.client.Responses;

public class HistoryRequest implements com.atwebpages.musictrack.request.Request {

	public Response send() throws ClientProtocolException, IOException {
		String response = Request.Get(Endpoints.HISTORY.getURL())
				                  .addHeader("Content-Type", "text/html; charset=UTF-8")
				                 .execute().returnContent().asString();
		return new Response(response, Endpoints.HISTORY);
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
