import java.io.*;
import java.util.*;

public class Exercise2
{
	public static void main( String args[] )
	{

		Scanner kbd = new Scanner(System.in);
		int input = 0;
		int i = 0;

		do
		{
			System.out.print("Enter int in range 1...100 inclusive: ");

			try
			{
				input = kbd.nextInt();
				if (input < 1 || input > 100) System.out.println("Number out of range. Must be in 1...100.");
				else i = 1;
			}

			catch (InputMismatchException e)
			{
				System.out.println("Input was not an integer");
				kbd.nextLine();
			}
		} while (i == 0);

		System.out.format("Thank you. You entered %d\n", input );

	} //END main
} //END CLSS
