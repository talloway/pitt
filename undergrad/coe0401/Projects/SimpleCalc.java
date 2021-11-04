// Demonstrates JPanel, GridLayout and a few additional useful graphical features.
// adapted from an example by john ramirez (cs prof univ pgh)
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.io.*;
import java.util.*;

public class SimpleCalc
{
	JFrame window;  // the main window which contains everything
	Container content ;
	JButton[] digits = new JButton[12];
	JButton[] ops = new JButton[4];
	JTextField expression;
	JButton equals;
	JTextField result;

	public SimpleCalc()
	{
		window = new JFrame( "Simple Calc");
		content = window.getContentPane();
		content.setLayout(new GridLayout(2,1)); // 2 row, 1 col
		ButtonListener listener = new ButtonListener();

		// top panel holds expression field, equals sign and result field
		// [4+3/2-(5/3.5)+3]  =   [3.456]

		JPanel topPanel = new JPanel();
		topPanel.setLayout(new GridLayout(1,3)); // 1 row, 3 col

		expression = new JTextField();
		expression.setFont(new Font("verdana", Font.BOLD, 16));
		expression.setText("");

		equals = new JButton("=");
		equals.setFont(new Font("verdana", Font.BOLD, 20 ));
		equals.addActionListener( listener );

		result = new JTextField();
		result.setFont(new Font("verdana", Font.BOLD, 16));
		result.setText("");

		topPanel.add(expression);
		topPanel.add(equals);
		topPanel.add(result);

		// bottom panel holds the digit buttons in the left sub panel and the operators in the right sub panel
		JPanel bottomPanel = new JPanel();
		bottomPanel.setLayout(new GridLayout(1,2)); // 1 row, 2 col

		JPanel  digitsPanel = new JPanel();
		digitsPanel.setLayout(new GridLayout(4,3));

		for (int i=0 ; i<10 ; i++ )
		{
			digits[i] = new JButton( ""+i );
			digitsPanel.add( digits[i] );
			digits[i].addActionListener( listener );
		}
		digits[10] = new JButton( "C" );
		digitsPanel.add( digits[10] );
		digits[10].addActionListener( listener );

		digits[11] = new JButton( "CE" );
		digitsPanel.add( digits[11] );
		digits[11].addActionListener( listener );

		JPanel opsPanel = new JPanel();
		opsPanel.setLayout(new GridLayout(4,1));
		String[] opCodes = { "+", "-", "*", "/" };
		for (int i=0 ; i<4 ; i++ )
		{
			ops[i] = new JButton( opCodes[i] );
			opsPanel.add( ops[i] );
			ops[i].addActionListener( listener );
		}
		bottomPanel.add( digitsPanel );
		bottomPanel.add( opsPanel );

		content.add( topPanel );
		content.add( bottomPanel );

		window.setSize( 640,480);
		window.setVisible( true );
	}

	class ButtonListener implements ActionListener
	{
		public void actionPerformed(ActionEvent e)
		{
			Component whichButton = (Component) e.getSource();

			for (int i=0 ; i<10 ; i++ )
				if (whichButton == digits[i])
					expression.setText( expression.getText() + i );

			if ((whichButton) == ops[0])
				expression.setText(expression.getText() + "+");
			if ((whichButton) == ops[1])
				expression.setText(expression.getText() + "-");
			if ((whichButton) == ops[2])
				expression.setText(expression.getText() + "*");
			if ((whichButton) == ops[3])
				expression.setText(expression.getText() + "/");

			if ((whichButton) == digits[10])
				expression.setText("");
			if ((whichButton) == digits[11])
				expression.setText(expression.getText().substring(0, expression.getText().length()-1));

			if (whichButton == equals) {
				String expr = expression.getText();
				ArrayList<String> operators = new ArrayList<String>();
				ArrayList<Double> operands = new ArrayList<Double>();
				StringTokenizer st = new StringTokenizer(expr, "+-*/", true);
				while (st.hasMoreTokens()) {
					String token = st.nextToken();
					if ("+-*/".contains(token))
						operators.add(token);
					else
						operands.add(Double.parseDouble(token));
				}

				if (operators.size() == operands.size() - 1) {
					int i = 0;

					while (i < operators.size()) {
						if(operators.get(i).equals("*")) {
							operands.set(i, (operands.get(i) * operands.get(i+1)));
							operands.remove(i+1);
							operators.remove(i);
							i--;
						}
						else if (operators.get(i).equals("/")) {
							operands.set(i, (operands.get(i)/operands.get(i+1)));
							operands.remove(i+1);
							operators.remove(i);
							i--;
						}

						i++;
					}

					i = 0;
					while (i < operators.size()) {
						if (operators.get(i).equals("+")) {
							operands.set(i, (operands.get(i) + operands.get(i+1)));
							operands.remove(i+1);
							operators.remove(i);
							i--;
						}
						else if (operators.get(i).equals("-")) {
							operands.set(i, (operands.get(i) - operands.get(i+1)));
							operands.remove(i+1);
							operators.remove(i);
							i--;
						}
						i++;
					}

					if(operands.size() == 1 && operators.size() == 0) {
						result.setText("" + operands.get(0));
					}
					else {
						result.setText("Invalid Expression");
					}
				}

				else {
					result.setText("Invalid Expression.");
				}

			}


		}
	}

	public static void main(String [] args)
	{
		new SimpleCalc();
	}
}
