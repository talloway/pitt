import java.util.*;
import java.io.*;

public class AutoParts
{
	public static void main( String[] args ) throws Exception
	{
		BufferedReader num2quantFile = new BufferedReader( new FileReader( "num2quant.txt" ) );
		BufferedReader num2nameFile = new BufferedReader( new FileReader( "num2name.txt" ) );

		HashMap<Integer, String> num2name = new HashMap<Integer, String>();
		HashMap<Integer, Integer> num2quant = new HashMap<Integer, Integer>();

		while (num2nameFile.ready()) {
			String[] tokens = num2nameFile.readLine().split("\\s+");
			int num = Integer.parseInt(tokens[0]);
			String name = tokens[1];
			num2name.put(num, name);
		}


		while (num2quantFile.ready()) {
			String[] tokens = num2quantFile.readLine().split("\\s+");
			int num = Integer.parseInt(tokens[0]);
			int quant = Integer.parseInt(tokens[1]);
			num2quant.put(num, quant);
		}


		System.out.println("PART NUMBER TO PART NAME\n");

		for (int s : num2name.keySet()) {
			System.out.println(s+"\t"+num2name.get(s));
		}

		System.out.println();

		System.out.println("JOIN OF PART NUMBER TO NAME TO QUANTITY\n");
		for (int s : num2name.keySet()) {
			System.out.println(s+"\t"+num2name.get(s)+"\t"+num2quant.get(s));
		}


	} // END MAIN

} // END CLASS
