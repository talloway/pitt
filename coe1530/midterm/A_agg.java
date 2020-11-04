/*
 * Avery Peiffer
 * COE 1530
 * Midterm
 */

public interface Int() {
	public void doThis();
}

public class A implements Int{
	B b;
	C c;
	D d;
	E e;

	public A (B obj1, C obj2, D obj3, E obj4) {
		b = obj1;
		c = obj2;
		d = obj3;
		e = obj4;
	}

	public void doThis() {

	}
}