package com.atwebpages.musictrack.request;

public enum Endpoints {
	LOGIN("http://musictrack.atwebpages.com/server/endpoints/login.php"),
	REGISTER("http://musictrack.atwebpages.com/server/endpoints/register.php"),
	LOGOUT("http://musictrack.atwebpages.com/server/endpoints/logout.php"),
	CURRENTLY_PLAYING("http://musictrack.atwebpages.com/server/endpoints/currently_playing.php"),
	HISTORY("http://musictrack.atwebpages.com/server/endpoints/history.php"),
	MOST_LISTENED_SONG("http://musictrack.atwebpages.com/server/endpoints/most_listened_song.php"),
	MOST_LISTENED_ALBUM("http://musictrack.atwebpages.com/server/endpoints/most_listened_albums.php"),
	MOST_LISTENED_ARTIST("http://musictrack.atwebpages.com/server/endpoints/most_listened_artists.php");
	
	private String url;
	
	private Endpoints(String url) {
		this.url = url;
	}
	
	public String getURL() {
		return url;
	}
}
