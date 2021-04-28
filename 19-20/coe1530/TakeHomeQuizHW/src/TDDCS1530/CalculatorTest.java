/**
 * 
 */
package TDDCS1530;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * @author Avery Peiffer
 *
 */
class CalculatorTest {
	float[] operands1 = {(float) .2, 2, (float) .3, 4};
	float[] operands2 = {(float) -1.5, -2, -3, 5};
	float[] operands3 = {1, 0, 1};
	Calculator calculator;
	
	@BeforeEach
	void setUp() throws Exception {
		calculator = new Calculator();
	}

	@Test
	void testAdder() {
		assertEquals(calculator.add(operands1), 6.5);
		assertEquals(calculator.add(operands2), -1.5);
		assertEquals(calculator.add(operands3), 2);
	}
	
	@Test
	void testSubtractor() {
		assertEquals(calculator.subtract(operands1), -6.1, .01);
		assertEquals(calculator.subtract(operands2), -1.5);
		assertEquals(calculator.subtract(operands3), 0);
	}
	
	@Test
	void testMultiplier() {
		assertEquals(calculator.multiply(operands1), .48, .01);
		assertEquals(calculator.multiply(operands2), -45);
		assertEquals(calculator.multiply(operands3), 0);
	}
	
	@Test
	void testDivider() {
		assertEquals(calculator.divide(operands1), .083, .01);
		assertEquals(calculator.divide(operands2), -.05, .01);
	}
	
	@Test()
	void testDividerWithDivisorOfZero() {
		IllegalArgumentException exception = assertThrows(IllegalArgumentException.class, () -> calculator.divide(operands3));
		
		String expectedMessage = "Divisor cannot be zero.";
		String actualMessage = exception.getMessage();
		
		assertEquals(actualMessage, expectedMessage);
	}
}
