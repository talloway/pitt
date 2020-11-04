/**
 * 
 */
package TDDCS1530;

/**
 * @author Avery Peiffer
 *
 */
public class Calculator implements Adder, Subtractor, Multiplier, Divider {

	@Override
	public float add(float... operands) {
		float result = operands[0];
		
		for(int ndx = 1; ndx < operands.length; ndx++) {
			result += operands[ndx];
		}
		
		return result;
	}

	@Override
	public float subtract(float... operands) {
		float result = operands[0];
		
		for (int ndx = 1; ndx < operands.length; ndx++) {
			result -= operands[ndx];
		}
		
		return result;
	}
	
	@Override
	public float multiply(float... operands) {
		float result = operands[0];
		
		for (int ndx = 1; ndx < operands.length; ndx++) {
			result *= operands[ndx];
		}
		
		return result;
	}
	
	@Override
	public float divide(float... operands) {
		float result = operands[0];
		
		for (int ndx=1; ndx < operands.length; ndx++) {
			if (operands[ndx] == 0) {
				throw new IllegalArgumentException("Divisor cannot be zero.");
			}
			result /= operands[ndx];
		}
		
		return result;
	}	
}
