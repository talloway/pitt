import java.io.*;

public class Lab6 {
	public static void main(String args[]) {
	
	boolean notOutOfSwamp = true;
	int[][] swamp = new int[6][6];
	int r = 4;
	int c = 2;
	swamp[1][1] = 1; swamp[2][1] = 1; swamp[3][1] = 1; swamp[3][3] = 1; swamp[2][4] = 1; swamp [3][5] = 1; swamp[4][2] = 1;
	while(notOutOfSwamp) {
		notOutOfSwamp = assessPos(swamp, r, c, r, c);
		
	}
	}
	
	static boolean assessPos(int[][] swamp, int r, int c, int pastR, int pastC) {
		System.out.println("Position in swamp: [" + r + "] [" + c + "]");
		if (r == swamp.length - 1 || r == 0 || c == swamp[r].length-1 || c == 0) {
			System.out.println("FINAL POSITION BEFORE EXITING SWAMP: " + r + " " + c);
			return false;
		}
		for (int i = r - 1; i <= r + 1; i++) { 
			for(int j = c - 1; j <= c + 1; j++) {
				
				if (i == r && j == c) continue;
				if (i < 0 || j < 0 || i == swamp.length || j == swamp[r].length) {
					continue;
				}
				
				if (swamp[i][j] == 1) {
					if (i == pastR && j == pastC) { 
						continue;
					}
					pastR = r; pastC = c;
					r = i; c = j;
					return assessPos(swamp, r, c, pastR, pastC); // Move on to a new spot
				}
			}
		}
		swamp[r][c] = -1;
		r = pastR;
		c = pastC;
		return assessPos(swamp, r, c, pastR, pastC); // Go back to an old spot
		
	}
	
}