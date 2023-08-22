package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class L_ghosttimeline {
	private int g_idx;
	private String g_rank;
	private int g_timestamp;
	private int g_timegold;
	private int g_timedamage;
	private int g_jmkill;
	private int g_mkill;
	private String g_teamposition;

}
