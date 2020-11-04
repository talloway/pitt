import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class Etch_A_Sketch implements MouseListener, MouseMotionListener, ActionListener  // NOTE multiple interfaces
{
	JFrame window;
	Container contentPane;
	int mouseX,mouseY,oldX,oldY;
	JButton btn1, btn2, btn3, btn4;
	Color gcolor; // ADD A BUTTON THAT WHEN CLICKED, CHANGES THE CURR COLOR

	public Etch_A_Sketch()
	{
		JFrame window = new JFrame("Classic Etch a Sketch");
		contentPane = window.getContentPane();
		contentPane.setLayout( new FlowLayout() );

		btn1 = new JButton("Magenta");
		btn1.addActionListener(this);
		contentPane.add(btn1);
		btn2 = new JButton("Green");
		btn2.addActionListener(this);
		contentPane.add(btn2);
		btn3 = new JButton("Red");
		btn3.addActionListener(this);
		contentPane.add(btn3);
		btn4 = new JButton("Blue");
		btn4.addActionListener(this);
		contentPane.add(btn4);
		contentPane.addMouseListener(this);        // "this" is the class that implements that listener
		contentPane.addMouseMotionListener(this);  // "this" is the class that implements that listener
		window.setSize(640,480);
		window.setVisible(true);
	}
	// ..............................................................
	// IMPLEMENTING MOUSELISTENER REQUIRES YOU TO WRITE (OVER-RIDE) THESE METHODS

	//when you press & release with NO MOVEMENT while pressed
	public void mouseClicked( MouseEvent me)
	{
		mouseX = me.getX();
		mouseY = me.getY();

	}

	// when you press
	public void mousePressed( MouseEvent me)
	{
		mouseX = me.getX();
		mouseY = me.getY();
		//repaint();
	}

	//when you let release after dragging
	public void mouseReleased( MouseEvent me)
	{
		mouseX = me.getX();
		mouseY = me.getY();
		//repaint();
	}

	// the mouse just moved off of the JFrame
	public void mouseExited( MouseEvent me)
	{
		mouseX = me.getX();
		mouseY = me.getY();
		//repaint();
	}

	// the mouse just moved onto the JFrame
	public void mouseEntered( MouseEvent me)
	{
		mouseX = me.getX();
		mouseY = me.getY();
		//repaint();
	}
	// ...............................................................
	// IMPLEMENTING MOUSEMOTIONLISTENER REQUIRES YOU WRITE (OVER-RIDE) THESE METHODS

	// mouse is moving while pressed
	public void mouseDragged( MouseEvent me)
	{
		mouseX = me.getX();
		mouseY = me.getY();

		if (oldX ==0 )
		{
			oldX=mouseX;
			oldY=mouseY;
			return;
		}

		// draw  dot (actually small line segment) between old (x,y) and current (x,y)

		Graphics g = contentPane.getGraphics(); // use g to draw onto the pane
		g.setColor(gcolor);
		g.drawLine( oldX,oldY, mouseX, mouseY );
		oldX = mouseX;
		oldY = mouseY;
		//repaint();
	}

	// moved mouse but not pressed
	public void mouseMoved( MouseEvent me)
	{
		mouseX = me.getX();
		mouseY = me.getY();
		//repaint();
	}

	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == btn1) {
			gcolor = Color.MAGENTA;
		}
		if (e.getSource() == btn2) {
			gcolor = Color.GREEN;
		}
		if (e.getSource() == btn3) {
			gcolor = Color.RED;
		}
		if (e.getSource() == btn4) {
			gcolor = Color.BLUE;
		}
	}
	// ..............................................................

	public static void main( String[] args)
	{
		new Etch_A_Sketch();
	}


	// a helper utility

}//EOF
