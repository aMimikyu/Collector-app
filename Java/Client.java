//very rough code of some gui


package database;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JTextField;
import java.awt.BorderLayout;
import javax.swing.JPanel;
import javax.swing.BoxLayout;
import javax.swing.JTextArea;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import javax.swing.JLabel;
import java.awt.Font;
import java.awt.Color;
import java.awt.CardLayout;
import javax.swing.ImageIcon;
import javax.swing.UIManager;
import java.awt.SystemColor;

public class Client {

	private JFrame GenericMainFrame;
	private JTextField textField;
	private JPasswordField passwordField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Client window = new Client();
					window.GenericMainFrame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public Client() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		GenericMainFrame = new JFrame();
		GenericMainFrame.setTitle("\u2122\u2122\u2122");
		GenericMainFrame.setResizable(false);
		GenericMainFrame.setSize(700,563);
		GenericMainFrame.getContentPane().setLayout(new CardLayout(0, 0));
		
		JPanel loginPanel = new JPanel();
		loginPanel.setBackground(new Color(33,37,41));
		GenericMainFrame.getContentPane().add(loginPanel, "name_62632546925451");
		loginPanel.setLayout(null);
		
		textField = new JTextField();
		textField.setBackground(Color.LIGHT_GRAY);
		textField.setBounds(253, 257, 184, 20);
		loginPanel.add(textField);
		textField.setColumns(10);
		
		passwordField = new JPasswordField();
		passwordField.setBackground(Color.LIGHT_GRAY);
		passwordField.setBounds(253, 288, 184, 20);
		loginPanel.add(passwordField);
		
		JLabel loginLabel = new JLabel("Collector Application\u2122");
		loginLabel.setForeground(SystemColor.control);
		loginLabel.setFont(new Font("Tahoma", Font.BOLD, 30));
		loginLabel.setBounds(191, 162, 361, 62);
		loginPanel.add(loginLabel);
		
		JLabel backgroundLabel = new JLabel();
		backgroundLabel.setBackground(new Color(33,37,41));
		backgroundLabel.setIcon(new ImageIcon(Client.class.getResource("/database/catrdx.png")));
		backgroundLabel.setBounds(243, 111, 209, 152);
		loginPanel.add(backgroundLabel);
		
		JButton btnRegister = new JButton("register");
		btnRegister.setBounds(346, 319, 91, 23);
		loginPanel.add(btnRegister);
		
		JButton btnLogin = new JButton("log in\r\n");
		btnLogin.setBounds(253, 319, 89, 23);
		loginPanel.add(btnLogin);
		
		JPanel welcome = new JPanel();
		GenericMainFrame.getContentPane().add(welcome, "name_62632553567283");
		welcome.setLayout(null);
	}
}
