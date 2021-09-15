package com.atwebpages.musictrack.gui;

import java.awt.Color;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.atwebpages.musictrack.client.Account;
import com.atwebpages.musictrack.client.Item;
import com.atwebpages.musictrack.client.Response;
import com.atwebpages.musictrack.client.Responses;
import com.atwebpages.musictrack.client.Song;
import com.atwebpages.musictrack.request.CurrentlyPlayingRequest;
import com.atwebpages.musictrack.request.Endpoints;
import com.atwebpages.musictrack.request.HistoryRequest;
import com.atwebpages.musictrack.request.LogoutRequest;
import com.atwebpages.musictrack.request.Request;
import com.atwebpages.musictrack.request.TopAlbumRequest;
import com.atwebpages.musictrack.request.TopArtistRequest;
import com.atwebpages.musictrack.request.TopSongRequest;
import com.google.gson.Gson;

import net.coobird.thumbnailator.Thumbnails;

import java.awt.Component;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.awt.Insets;
import javax.swing.SwingConstants;

import java.awt.Cursor;
import java.awt.Desktop;

import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JLabel;
import java.awt.Font;
import java.awt.Image;
import javax.swing.UIManager;
import java.awt.SystemColor;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class Home extends JFrame {
	
	
	private JPanel contentPane;
	private String defaultCoverURL = "http://musictrack.atwebpages.com/img/cover.png"; 
	private ImageIcon defaultCover = new ImageIcon(loadCover(defaultCoverURL, false));

	private JFrame login;
	
	public Home(JFrame login) throws MalformedURLException, IOException {
		this.login = login;
		
		
		setTitle("MusicTrack");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 713, 459);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setBackground(new Color(252, 252, 252));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JMenuBar menuBar = new JMenuBar();
		menuBar.setBorder(null);
		menuBar.setAlignmentY(Component.CENTER_ALIGNMENT);
		menuBar.setForeground(Color.WHITE);
		menuBar.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
		menuBar.setMargin(new Insets(0, 0, 0, 20));
		menuBar.setBackground(new Color(76, 178, 136));
		menuBar.setBounds(0, 0, 704, 30);
		contentPane.add(menuBar);
		
		JMenu menu = new JMenu("\u041D\u0430\u0441\u0442\u0440\u043E\u0439\u043A\u0438");
		menu.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				 if (Desktop.isDesktopSupported()) {
			            try {
							Desktop.getDesktop().browse(new URI("http://musictrack.atwebpages.com/settings.html"));
						} catch (IOException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						} catch (URISyntaxException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
			        }
			}
		});
		menu.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		menu.setForeground(Color.WHITE);
		menuBar.add(menu);
		
		JMenu menu_1 = new JMenu("\u0418\u0437\u043B\u0435\u0437");
		menu_1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				LogoutRequest request = new LogoutRequest(new Account(Login.sessionId));
				request.run();
				Home.this.dispose();
				Login log;
				try {
					log = new Login();
					log.setVisible(true);
				} catch (MalformedURLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		});
		menu_1.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		menu_1.setForeground(Color.WHITE);
		menuBar.add(menu_1);
		
		JLabel cover = new JLabel("");
		cover.setBounds(47, 76, 225, 225);
		cover.setIcon(defaultCover);
		contentPane.add(cover);
		
		JLabel label = new JLabel("\u0421\u041B\u0423\u0428\u0410\u041C \u0412 \u041C\u041E\u041C\u0415\u041D\u0422\u0410");
		label.setForeground(new Color(51, 153, 102));
		label.setFont(new Font("HK Grotesk Light", Font.PLAIN, 21));
		label.setHorizontalAlignment(SwingConstants.CENTER);
		label.setHorizontalTextPosition(SwingConstants.CENTER);
		label.setBounds(47, 41, 225, 30);
		contentPane.add(label);
		
		JLabel title = new JLabel("TITLE");
		title.setForeground(new Color(0, 153, 102));
		title.setHorizontalAlignment(SwingConstants.CENTER);
		title.setFont(new Font("Arial Unicode MS", Font.PLAIN, 19));
		title.setBounds(47, 312, 225, 30);
		contentPane.add(title);
		
		JLabel artist = new JLabel("Artist");
		artist.setHorizontalAlignment(SwingConstants.CENTER);
		artist.setForeground(Color.BLACK);
		artist.setFont(new Font("Arial Unicode MS", Font.PLAIN, 15));
		artist.setBounds(47, 334, 225, 30);
		contentPane.add(artist);
		
		JPanel one = new JPanel();
		one.setBounds(311, 76, 350, 41);
		one.setBackground(new Color(51, 153, 102));
		contentPane.add(one);
		one.setLayout(null);
		
		JLabel one_title = new JLabel("TITLE");
		one_title.setBounds(10, 5, 235, 16);
		one_title.setHorizontalAlignment(SwingConstants.LEFT);
		one_title.setForeground(Color.WHITE);
		one_title.setFont(new Font("Arial Unicode MS", Font.PLAIN, 17));
		one.add(one_title);
		
		JLabel one_stat = new JLabel("date/time");
		one_stat.setHorizontalAlignment(SwingConstants.RIGHT);
		one_stat.setForeground(Color.WHITE);
		one_stat.setFont(new Font("Arial Unicode MS", Font.PLAIN, 12));
		one_stat.setBounds(186, 0, 154, 27);
		one.add(one_stat);
		
		JLabel one_art = new JLabel("TITLE");
		one_art.setBounds(10, 22, 307, 16);
		one.add(one_art);
		one_art.setHorizontalAlignment(SwingConstants.LEFT);
		one_art.setForeground(UIManager.getColor("Button.background"));
		one_art.setFont(new Font("Arial Unicode MS", Font.PLAIN, 13));
		
		Item first = new Item(one, one_title, one_art, one_stat);
		
		JLabel func = new JLabel("ИСТОРИЯ");
		func.setHorizontalTextPosition(SwingConstants.CENTER);
		func.setHorizontalAlignment(SwingConstants.LEFT);
		func.setForeground(new Color(51, 153, 102));
		func.setFont(new Font("HK Grotesk Light", Font.PLAIN, 21));
		func.setBounds(311, 41, 350, 30);
		contentPane.add(func);
		
		JPanel two = new JPanel();
		two.setLayout(null);
		two.setBackground(new Color(51, 153, 102));
		two.setBounds(311, 128, 350, 41);
		contentPane.add(two);
		
		JLabel two_title = new JLabel("TITLE");
		two_title.setHorizontalAlignment(SwingConstants.LEFT);
		two_title.setForeground(Color.WHITE);
		two_title.setFont(new Font("Arial Unicode MS", Font.PLAIN, 17));
		two_title.setBounds(10, 5, 235, 16);
		two.add(two_title);
		
		JLabel two_stat = new JLabel("date/time");
		two_stat.setHorizontalAlignment(SwingConstants.RIGHT);
		two_stat.setForeground(Color.WHITE);
		two_stat.setFont(new Font("Arial Unicode MS", Font.PLAIN, 12));
		two_stat.setBounds(191, 0, 149, 27);
		two.add(two_stat);
		
		JLabel two_art = new JLabel("TITLE");
		two_art.setHorizontalAlignment(SwingConstants.LEFT);
		two_art.setForeground(SystemColor.menu);
		two_art.setFont(new Font("Arial Unicode MS", Font.PLAIN, 13));
		two_art.setBounds(10, 22, 307, 16);
		two.add(two_art);
		
		Item second = new Item(two, two_title, two_art, two_stat);
		
		JPanel three = new JPanel();
		three.setLayout(null);
		three.setBackground(new Color(51, 153, 102));
		three.setBounds(311, 180, 350, 41);
		contentPane.add(three);
		
		JLabel three_title = new JLabel("TITLE");
		three_title.setHorizontalAlignment(SwingConstants.LEFT);
		three_title.setForeground(Color.WHITE);
		three_title.setFont(new Font("Arial Unicode MS", Font.PLAIN, 17));
		three_title.setBounds(10, 5, 235, 16);
		three.add(three_title);
		
		JLabel three_stat = new JLabel("date/time");
		three_stat.setHorizontalAlignment(SwingConstants.RIGHT);
		three_stat.setForeground(Color.WHITE);
		three_stat.setFont(new Font("Arial Unicode MS", Font.PLAIN, 12));
		three_stat.setBounds(188, 0, 152, 27);
		three.add(three_stat);
		
		JLabel three_art = new JLabel("TITLE");
		three_art.setHorizontalAlignment(SwingConstants.LEFT);
		three_art.setForeground(SystemColor.menu);
		three_art.setFont(new Font("Arial Unicode MS", Font.PLAIN, 13));
		three_art.setBounds(10, 22, 307, 16);
		three.add(three_art);
		
		Item third = new Item(three, three_title, three_art, three_stat);
		
		
		JPanel four = new JPanel();
		four.setLayout(null);
		four.setBackground(new Color(51, 153, 102));
		four.setBounds(311, 232, 350, 41);
		contentPane.add(four);
		
		JLabel four_title = new JLabel("TITLE");
		four_title.setHorizontalAlignment(SwingConstants.LEFT);
		four_title.setForeground(Color.WHITE);
		four_title.setFont(new Font("Arial Unicode MS", Font.PLAIN, 17));
		four_title.setBounds(10, 5, 235, 16);
		four.add(four_title);
		
		JLabel four_stat = new JLabel("date/time");
		four_stat.setHorizontalAlignment(SwingConstants.RIGHT);
		four_stat.setForeground(Color.WHITE);
		four_stat.setFont(new Font("Arial Unicode MS", Font.PLAIN, 12));
		four_stat.setBounds(175, 0, 165, 27);
		four.add(four_stat);
		
		JLabel four_art = new JLabel("TITLE");
		four_art.setHorizontalAlignment(SwingConstants.LEFT);
		four_art.setForeground(SystemColor.menu);
		four_art.setFont(new Font("Arial Unicode MS", Font.PLAIN, 13));
		four_art.setBounds(10, 22, 307, 16);
		four.add(four_art);
		
		Item fourth = new Item(four, four_title, four_art, four_stat);
		
		JPanel five = new JPanel();
		five.setLayout(null);
		five.setBackground(new Color(51, 153, 102));
		five.setBounds(311, 284, 350, 41);
		contentPane.add(five);
		
		JLabel five_title = new JLabel("TITLE");
		five_title.setHorizontalAlignment(SwingConstants.LEFT);
		five_title.setForeground(Color.WHITE);
		five_title.setFont(new Font("Arial Unicode MS", Font.PLAIN, 17));
		five_title.setBounds(10, 5, 235, 16);
		five.add(five_title);
		
		JLabel five_stat = new JLabel("date/time");
		five_stat.setHorizontalAlignment(SwingConstants.RIGHT);
		five_stat.setForeground(Color.WHITE);
		five_stat.setFont(new Font("Arial Unicode MS", Font.PLAIN, 12));
		five_stat.setBounds(159, 0, 181, 27);
		five.add(five_stat);
		
		JLabel five_art = new JLabel("TITLE");
		five_art.setHorizontalAlignment(SwingConstants.LEFT);
		five_art.setForeground(SystemColor.menu);
		five_art.setFont(new Font("Arial Unicode MS", Font.PLAIN, 13));
		five_art.setBounds(10, 22, 307, 16);
		five.add(five_art);
		
		Item fifth = new Item(five, five_title, five_art, five_stat);
		
		List<Item> items = new ArrayList<>();
		items.add(first);
		items.add(second);
		items.add(third);
		items.add(fourth);
		items.add(fifth);
		
		
		JLabel no_results = new JLabel("Няма резултати");
		no_results.setBounds(378, 175, 234, 30);
		contentPane.add(no_results);
		no_results.setHorizontalTextPosition(SwingConstants.CENTER);
		no_results.setHorizontalAlignment(SwingConstants.CENTER);
		no_results.setForeground(new Color(51, 153, 102));
		no_results.setFont(new Font("HK Grotesk Light", Font.PLAIN, 25));
		

		makeRequest(new HistoryRequest(), items, no_results, Endpoints.HISTORY, 0);
		
		JButton history = new JButton("История");
		history.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
				func.setText("ИСТОРИЯ");
				makeRequest(new HistoryRequest(), items, no_results, Endpoints.HISTORY, 0);
				
			}
		});
		history.setBounds(311, 340, 170, 23);
		contentPane.add(history);
		
		JButton top_songs = new JButton("Топ 5 песни");
		top_songs.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
				func.setText("НАЙ-СЛУШАНИ ПЕСНИ");
				makeRequest(new TopSongRequest(), items, no_results, Endpoints.MOST_LISTENED_SONG, 1);
			}
		});
		top_songs.setBounds(491, 340, 170, 23);
		contentPane.add(top_songs);
		
		JButton top_artists = new JButton("Топ 5 изпълнители");
		top_artists.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				func.setText("НАЙ-СЛУШАНИ ИЗПЪЛНИТЕЛИ");
				makeRequest(new TopArtistRequest(), items, no_results, Endpoints.MOST_LISTENED_ARTIST, 2);
			}
		});
		top_artists.setBounds(311, 370, 170, 23);
		contentPane.add(top_artists);
		
		JButton top_albums = new JButton("Топ 5 албуми");
		top_albums.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				func.setText("НАЙ-СЛУШАНИ АЛБУМИ");
				makeRequest(new TopAlbumRequest(), items, no_results, Endpoints.MOST_LISTENED_ALBUM, 3);
			}
		});
		top_albums.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				makeRequest(new TopSongRequest(), items, no_results, Endpoints.MOST_LISTENED_SONG, 1);
			}
		});
		top_albums.setBounds(491, 370, 170, 23);
		contentPane.add(top_albums);
		

		Timer currentlyPlayingTimer = new Timer();
		currentlyPlayingTimer.scheduleAtFixedRate(new TimerTask() {

			@Override
			public void run() {
				CurrentlyPlayingRequest request = new CurrentlyPlayingRequest();
				request.run();
				Response response = Responses.getResponse(Endpoints.CURRENTLY_PLAYING);
				if (response.getContent().contains("message")) {
					cover.setIcon(defaultCover);
					title.setText("TITLE");
					artist.setText("ARTIST");
				} else if (!response.getContent().equals("")) {
					Gson gson = new Gson();
					Song current =  new Song(gson.fromJson(response.getContent(), String[].class));
					try {
						cover.setIcon(new ImageIcon(loadCover(current.getCover(), true)));
					} catch (IOException e) {
						e.printStackTrace();
					}
					title.setText(current.getTitle());
					artist.setText(current.getArtist());
				}
				
			}
			
		}, 5000, 5000);
	}
	
	private BufferedImage loadCover(String URL, boolean isActualCover) throws IOException {
		BufferedImage cover = ImageIO.read(new URL(URL));
		if (isActualCover)
			return Thumbnails.of(cover).scale(0.35).asBufferedImage();
		else return Thumbnails.of(cover).scale(0.75).asBufferedImage();
	}
	
	private void displayHistory(List<Item> items) {
			for (Item item : items) {
				item.show();
			}
	}
	
	private void hideHistory(List<Item> items) {
		for (Item item : items) {
			item.hide();
		}
	}
	
	private void makeRequest(Request request, List<Item> items, JLabel no_results, Endpoints type, int mode) {
		request.run();
		Response response = Responses.getResponse(type);
		if (response.getContent().equals("")) {
			hideHistory(items);
			no_results.setVisible(true);
		} else {
			no_results.setVisible(false);
			displayHistory(items);
			Song[] songs = new Gson().fromJson(response.getContent(), Song[].class);
			updateTable(items, songs, mode);
		}
	}
	
	private void updateTable(List<Item> items, Song[] songs, int mode) {
		for (int i = 0; i < items.size(); ++i) {
			if (mode == 0) {
				items.get(i).getTitle().setText(songs[i].getTitle());
				items.get(i).getArtist().setVisible(true);
				items.get(i).getArtist().setText(songs[i].getArtist());
				items.get(i).getStat().setText(songs[i].getDate());
			} else if (mode == 1) {
				items.get(i).getTitle().setText(songs[i].getTitle());
				items.get(i).getArtist().setVisible(true);
				items.get(i).getArtist().setText(songs[i].getArtist());
				items.get(i).getStat().setText(songs[i].getCount() + " слушания");
			} else if (mode == 2) {
				items.get(i).getTitle().setText(songs[i].getArtist());
				items.get(i).getArtist().setVisible(false);
				items.get(i).getStat().setText(songs[i].getCount() + " слушания");
			} else if (mode == 3) {
				items.get(i).getTitle().setText(songs[i].getAlbum());
				items.get(i).getArtist().setVisible(false);
				items.get(i).getStat().setText(songs[i].getCount() + " слушания");
			}
		}
	}
}
