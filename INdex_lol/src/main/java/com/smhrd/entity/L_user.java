package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class L_user {
	private String u_name;
	private String u_email;
	private String u_pw;
	private String u_nick;
	private String u_lolcd;
	private String u_tel;
}
