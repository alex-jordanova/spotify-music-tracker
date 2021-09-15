package com.atwebpages.musictrack.client;

import java.util.ArrayList;
import java.util.List;

import com.atwebpages.musictrack.request.Endpoints;

public class Responses {
	private static List<Response> responses = new ArrayList<>();

	public static synchronized void add(Response response) {
		responses.add(response);
	}

	public static Response getResponse(Endpoints type) {
		for (int i = 0; i < responses.size(); ++i) {
			if (responses.get(i).getRequestType().equals(type)) {
				return responses.remove(i);
			}
		}

		return new Response("", Endpoints.LOGIN);
	}

}
