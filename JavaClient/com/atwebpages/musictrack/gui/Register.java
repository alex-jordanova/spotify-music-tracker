package com.atwebpages.musictrack.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import com.atwebpages.musictrack.client.Account;
import com.atwebpages.musictrack.client.Response;
import com.atwebpages.musictrack.client.Responses;
import com.atwebpages.musictrack.request.Endpoints;
import com.atwebpages.musictrack.request.LoginRequest;
import com.atwebpages.musictrack.request.RegisterRequest;
import com.atwebpages.musictrack.request.Request;

public class Register extends JFrame {

	private JPanel loginPane;
	private JTextField username;
	private JPasswordField password;
	private JPasswordField passwordField;
	
	private Account account;
	private Login loginFrame;

	/**
	 * Create the frame.
	 */
	public Register(Login loginFrame) {
		this.loginFrame = loginFrame;
		
		setTitle("MusicTrack");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 458, 455);
		loginPane = new JPanel();
		loginPane.setBackground(new Color(245, 245, 245));
		loginPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(loginPane);
		loginPane.setLayout(null);
		
		JLabel registerLabel = new JLabel("\u0420\u0415\u0413\u0418\u0421\u0422\u0420\u0410\u0426\u0418\u042F");
		registerLabel.setBackground(new Color(60, 179, 113));
		registerLabel.setForeground(new Color(46, 139, 87));
		registerLabel.setFont(new Font("HK Grotesk Light", Font.PLAIN, 45));
		registerLabel.setPreferredSize(new Dimension(49, 44));
		registerLabel.setHorizontalAlignment(SwingConstants.CENTER);
		registerLabel.setBounds(0, 25, 431, 69);
		loginPane.add(registerLabel);
		
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
		passwordText.setBounds(63, 175, 264, 30);
		loginPane.add(passwordText);
		

		JPanel error = new JPanel();
		error.setBackground(new Color(220, 20, 60));
		error.setBounds(0, 371, 546, 23);
		loginPane.add(error);
		error.setLayout(null);
		
		JLabel errorText = new JLabel("");
		errorText.setHorizontalAlignment(SwingConstants.CENTER);
		errorText.setForeground(Color.WHITE);
		errorText.setFont(new Font("HK Grotesk Light", Font.PLAIN, 15));
		errorText.setBackground(new Color(204, 0, 51));
		errorText.setBounds(-50, 0, 550, 22);
		error.add(errorText);
		error.setVisible(false);
		

		passwordField = new JPasswordField();
		passwordField.setColumns(10);
		passwordField.setBounds(63, 278, 329, 30);
		loginPane.add(passwordField);
		
		JButton regButton = new JButton("\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u0430\u0439 \u0441\u0435");
		regButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
				account = new Account(username.getText(), new String(password.getPassword()), new String(passwordField.getPassword()));
				Request request = new RegisterRequest(account);
				request.run();
				Response response = Responses.getResponse(Endpoints.REGISTER);
				if (response.getContent().contains("success")) {
					error.setBackground(new Color(65, 157, 120));
					errorText.setText("Успешна регистрация!");
				} else {
					errorText.setText(response.getValue());
				}
				error.setVisible(true);
			}
		});
		regButton.setBounds(155, 334, 133, 23);
		loginPane.add(regButton);
		
		JButton loginButton = new JButton("\u0412\u0445\u043E\u0434");
		loginButton.addMouseListener(MusicTrack.changeFrames(this,  loginFrame));
		loginButton.setBounds(365, 11, 66, 23);
		loginPane.add(loginButton);
		
		JLabel repeatPwd = new JLabel("\u041F\u043E\u0432\u0442\u043E\u0440\u0438 \u043F\u0430\u0440\u043E\u043B\u0430\u0442\u0430");
		repeatPwd.setForeground(new Color(46, 139, 87));
		repeatPwd.setFont(new Font("HK Grotesk Light", Font.PLAIN, 16));
		repeatPwd.setBounds(63, 251, 264, 30);
		loginPane.add(repeatPwd);
		
	}
}
