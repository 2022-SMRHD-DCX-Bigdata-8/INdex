package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class L_userdata {
	private int u_idx ;
	private String u_id ;
	private int u_gold;
	private int u_level ;
	private String u_rank;
	private String u_kda;
	private int u_damage;
	private int u_playtime;
	private int u_sigthscore;
	private int u_gamecnt;
	private String u_winlose;
	private String u_champ;

}
