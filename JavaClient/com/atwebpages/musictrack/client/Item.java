package com.atwebpages.musictrack.client;

import java.awt.Color;
import java.awt.Font;
import java.awt.SystemColor;

import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;

public class Item {
	private JPanel panel;
	private JLabel title;
	private JLabel artist;
	private JLabel stat;
	
	public Item(JPanel panel, JLabel title, JLabel artist, JLabel stat) {
		this.panel = panel;
		this.title = title;
		this.artist = artist;
		this.stat = stat;
	}
	
	public JPanel getPanel() {
		return panel;
	}
	
	public JLabel getTitle() {
		return title;
	}
	
	public JLabel getArtist() {
		return artist;
	}
	
	public JLabel getStat() {
		return stat;
	}
	
	public void hide() {
		panel.setVisible(false);
	}
	
	public void show() {
		panel.setVisible(true);
	}
}
