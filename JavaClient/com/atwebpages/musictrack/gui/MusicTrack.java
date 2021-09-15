package com.atwebpages.musictrack.gui;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.atwebpages.musictrack.client.Account;
import com.google.gson.Gson;

public class MusicTrack extends JFrame {
	public MusicTrack() {
	}

	private JPanel contentPane;
	private static Account account;
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Login frame = new Login();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	public static MouseAdapter changeFrames(JFrame current, JFrame next) {
		return new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
				current.setVisible(false);
				next.setVisible(true);
			}
		};
	}

}
