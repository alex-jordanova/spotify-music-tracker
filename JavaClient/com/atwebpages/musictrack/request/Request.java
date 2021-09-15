package com.atwebpages.musictrack.request;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;

import com.atwebpages.musictrack.client.Response;

public interface Request extends Runnable {
	public Response send() throws ClientProtocolException, IOException;
}
