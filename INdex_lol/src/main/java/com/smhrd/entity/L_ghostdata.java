package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class L_ghostdata {
	private int g_idx ;
	private String g_rank;
	private int g_gold;
	private int g_level ;
	private int g_kill;
	private int g_death;
	private int g_assist;
	private int g_damage;
	private int g_playtime;
	private int g_wardskill;
	private int g_wardsplaced;
	private int g_minionkill;
	private int g_cs;
	private String g_teamposition;
}
