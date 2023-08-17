package com.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class L_feedback {
	private int fd_idx; 
	private String u_id;
	private String postive_yn;
	private String fd_content;
	private int u_idx; 
}
