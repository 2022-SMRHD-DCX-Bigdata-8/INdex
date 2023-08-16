package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class L_ghostdata {
	private int g_idx ;
	private String u_email ;
	private String g_rank;
	private int g_gold;
	private int g_level ;
	private String g_kda;
	private int g_damage;
	private int g_playtime;
	private int g_sigthscore;
}
