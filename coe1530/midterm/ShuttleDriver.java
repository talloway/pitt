import java.io.*;
import java.util.*;

public class ShuttleDriver {
	public static final String STATE_MOVING = "moving";
	public static final String STATE_STOPPED = "stopped";
	public static final String STATE_OUT_OF_ORDER = "out of order";
	public static final String STATE_ARRIVED = "arrived";

	public static void main(String[] args) {
		Shuttle shuttle = Shuttle.getInstance();
		new Terminal1(shuttle);
		shuttle.setState(STATE_MOVING);
		shuttle.setState(STATE_ARRIVED);
	}
}