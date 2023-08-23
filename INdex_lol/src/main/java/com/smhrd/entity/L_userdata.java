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
	private int u_damage;
	private int u_playtime;
	private int u_wardskill;
	private int u_gamecnt;
	private String u_winlose;
	private String u_champ;
	private String u_matchcd;
	private int u_cs;
	private String u_teamposition;
	private int u_kill;
	private int u_death;
	private int u_assist;
	private int u_minionkill;
	private int u_wardsplaced;
	private int champcnt;
	

}
