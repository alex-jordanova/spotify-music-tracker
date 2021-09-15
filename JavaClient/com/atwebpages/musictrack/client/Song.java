package com.atwebpages.musictrack.client;

public class Song {
	private String title;
	private String artist;
	private String album;
	private String cover;
	private int duration;
	private String dateTime;
	private String count;
	
	public Song(String[] values) {
		title = values[0];
		artist = values[1];
		album = values[2];
		cover = values[3];
		duration = new Integer(values[4]);
		dateTime = values[5];
	}
	
	public String getTitle() {
		return title;
	}
	
	public String getArtist() {
		return artist;
	}
	
	public String getCover() {
		return cover;
	}
	
	public String getDate() {
		return dateTime;
	}
	
	public String getCount() {
		return count;
	}
	
	public String getAlbum() {
		return album;
	}
}
