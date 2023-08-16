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
	private String U_EMAIL;
	private String U_PW;
	private String U_NICK;
	private String U_LOLCD;
	private String U_NAME;
	private String U_TEL;
}
