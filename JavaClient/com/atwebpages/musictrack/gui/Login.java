package com.atwebpages.musictrack.gui;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.atwebpages.musictrack.client.Account;
import com.atwebpages.musictrack.client.Response;
import com.atwebpages.musictrack.client.Responses;
import com.atwebpages.musictrack.request.Endpoints;
import com.atwebpages.musictrack.request.LoginRequest;
import com.google.gson.Gson;

import java.awt.Color;
import javax.swing.JSplitPane;
import javax.swing.JToolBar;
import javax.swing.SwingConstants;
import java.awt.Dimension;
import java.awt.Component;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JFormattedTextField;
import javax.swing.JPasswordField;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;
import java.net.MalformedURLException;

import javax.swing.JLayeredPane;
import javax.swing.JDesktopPane;

public class Login extends JFrame {
	private JPanel loginPane;
	private JTextField username;
	private JPasswordField password;
	private Account account;
	

	private Register registerFrame;
	private Home homeFrame;

	public static String sessionId;
	
	/**
	 * Create the frame.
	 * @throws IOException 
	 * @throws MalformedURLException 
	 */
	public Login() throws MalformedURLException, IOException {

		registerFrame = new Register(this);
		
		setTitle("MusicTrack");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 458, 384);
		loginPane = new JPanel();
		loginPane.setBackground(new Color(245, 245, 245));
		loginPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(loginPane);
		loginPane.setLayout(null);
		
		JLabel entranceLabel = new JLabel("\u0412\u0425\u041E\u0414");
		entranceLabel.setBackground(new Color(60, 179, 113));
		entranceLabel.setForeground(new Color(46, 139, 87));
		entranceLabel.setFont(new Font("HK Grotesk Light", Font.PLAIN, 45));
		entranceLabel.setPreferredSize(new Dimension(49, 44));
		entranceLabel.setHorizontalAlignment(SwingConstants.CENTER);
		entranceLabel.setBounds(142, 25, 163, 69);
		loginPane.add(entranceLabel);
		
		username = new JTextField();
		username.setFont(new Font("Tahoma", Font.PLAIN, 14));
		username.setBounds(63, 130, 329, 30);
		loginPane.add(username);
		username.setColumns(10);
		
		JLabel usernameText = new JLabel("\u041F\u043E\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043B\u0441\u043A\u043E \u0438\u043C\u0435");
		usernameText.setForeground(new Color(46, 139, 87));
		usernameText.setFont(new Font("HK Grotesk Light", Font.PLAIN, 16));
		usernameText.setBounds(63, 103, 264, 30);
		loginPane.add(usernameText);
		
		password = new JPasswordField();
		password.setColumns(10);
		password.setBounds(63, 203, 329, 30);
		loginPane.add(password);
		
		JLabel passwordText = new JLabel("\u041F\u0430\u0440\u043E\u043B\u0430");
		passwordText.setForeground(new Color(46, 139, 87));
		passwordText.setFont(new Font("HK Grotesk Light", Font.PLAIN, 16));
		passwordText.setBounds(63, 180, 264, 30);
		loginPane.add(passwordText);
		

		JPanel error = new JPanel();
		error.setBackground(new Color(220, 20, 60));
		error.setBounds(0, 305, 546, 23);
		loginPane.add(error);
		error.setLayout(null);
		
		JLabel errorText = new JLabel("\u0413\u0440\u0435\u0448\u043D\u043E \u0438\u043C\u0435 \u0438\u043B\u0438 \u043F\u0430\u0440\u043E\u043B\u0430.");
		errorText.setBackground(new Color(204, 0, 51));
		errorText.setBounds(-51, 0, 550, 22);
		error.add(errorText);
		errorText.setHorizontalAlignment(SwingConstants.CENTER);
		errorText.setForeground(new Color(255, 255, 255));
		errorText.setFont(new Font("HK Grotesk Light", Font.PLAIN, 16));
		error.setVisible(false);
		
		JButton loginButton = new JButton("\u0412\u043B\u0435\u0437");
		loginButton.addMouseListener(new MouseAdapter() {
			
			@Override
			public void mouseClicked(MouseEvent arg0) {
				account = new Account(username.getText(), new String(password.getPassword()));
				LoginRequest login = new LoginRequest(account);
				login.run();
				Response response = Responses.getResponse(Endpoints.LOGIN);
				if (response.getContent().contains("error")) {
					error.setVisible(true);
				} else {
					account.setSessionId(response.getContent());
					sessionId = account.getSessionId();
					try {
						homeFrame = new Home(Login.this);
						Login.this.setVisible(false);
						homeFrame.setVisible(true);
					} catch (MalformedURLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					System.out.println(account.getSessionId());
				}
			}
		});
		loginButton.setBounds(174, 260, 89, 23);
		loginPane.add(loginButton);
		
		JButton registerButton = new JButton("\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044F");
		registerButton.addMouseListener(MusicTrack.changeFrames(this, registerFrame));
		registerButton.setBounds(315, 11, 116, 23);
		loginPane.add(registerButton);
		
	}
}
