/*
 * Avery Peiffer
 * COE 1530
 * Midterm
 */

public class Terminal1 extends Terminal {
	public Terminal1(Shuttle shuttle) {
		this.shuttle = shuttle;
		this.shuttle.subscribe(this);
	}

	@Override
	public void update() {
		System.out.println("State: " + shuttle.getState());
	}
}