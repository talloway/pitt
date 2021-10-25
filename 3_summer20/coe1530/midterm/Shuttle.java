import java.util.*;

public class Shuttle {
	private static Shuttle shuttleInstance = new Shuttle();
	private List<Terminal> terminals = new ArrayList<Terminal>();
	private String state;

	private Shuttle() {}

	public static Shuttle getInstance() {									// Avery Peiffer
		return shuttleInstance;															// COE 1530
	}																											// Midterm

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
		notifyAllTerminals();
	}

	public void subscribe(Terminal terminal) {
		terminals.add(terminal);
	}

	public void notifyAllTerminals() {
		for (Terminal terminal : terminals) {
			terminal.update();
		}
	}
}