package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@AllArgsConstructor
@NoArgsConstructor
@Data
public class L_user {
	public L_user(String email, String pw, String lolNick, String puuid) {
		// TODO Auto-generated constructor stub
	}
	private String u_nema;
	private String u_email;
	private String u_pw;
	private String u_nick;
	private String u_lolcd;
	private String u_tel;
}
