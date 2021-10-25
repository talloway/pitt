import java.util.Random;
import java.math.BigInteger;

public class LargeInteger {

	private final byte[] ONE = {(byte) 1};
	private static final int BITS_IN_BYTE = 8;
	private byte[] val;

	/**
	 * Construct the LargeInteger from a given byte array
	 * @param b the byte array that this LargeInteger should represent
	 */
	public LargeInteger(byte[] b) {
		val = b;
	}

	/**
	 * Construct the LargeInteger by generatin a random n-bit number that is
	 * probably prime (2^-100 chance of being composite).
	 * @param n the bitlength of the requested integer
	 * @param rnd instance of java.util.Random to use in prime generation
	 */
	public LargeInteger(int n, Random rnd) {
		val = BigInteger.probablePrime(n, rnd).toByteArray();
	}

	/**
	 * Return this LargeInteger's val
	 * @return val
	 */
	public byte[] getVal() {
		return val;
	}

	/**
	 * Return the number of bytes in val
	 * @return length of the val byte array
	 */
	public int length() {
		return val.length;
	}

	/**
	 * Add a new byte as the most significant in this
	 * @param extension the byte to place as most significant
	 */
	public void extend(byte extension) {
		byte[] newv = new byte[val.length + 1];
		newv[0] = extension;
		for (int i = 0; i < val.length; i++) {
			newv[i + 1] = val[i];
		}
		val = newv;
	}

	/**
	 * If this is negative, most significant bit will be 1 meaning most
	 * significant byte will be a negative signed number
	 * @return true if this is negative, false if positive
	 */
	public boolean isNegative() {
		return (val[0] < 0);
	}

	/**
	 * Computes the sum of this and other
	 * @param other the other LargeInteger to sum with this
	 */
	public LargeInteger add(LargeInteger other) {
		byte[] a, b;
		// If operands are of different sizes, put larger first ...
		if (val.length < other.length()) {
			a = other.getVal();
			b = val;
		}
		else {
			a = val;
			b = other.getVal();
		}

		// ... and normalize size for convenience
		if (b.length < a.length) {
			int diff = a.length - b.length;

			byte pad = (byte) 0;
			if (b[0] < 0) {
				pad = (byte) 0xFF;
			}

			byte[] newb = new byte[a.length];
			for (int i = 0; i < diff; i++) {
				newb[i] = pad;
			}

			for (int i = 0; i < b.length; i++) {
				newb[i + diff] = b[i];
			}

			b = newb;
		}

		// Actually compute the add
		int carry = 0;
		byte[] res = new byte[a.length];
		for (int i = a.length - 1; i >= 0; i--) {
			// Be sure to bitmask so that cast of negative bytes does not
			//  introduce spurious 1 bits into result of cast
			carry = ((int) a[i] & 0xFF) + ((int) b[i] & 0xFF) + carry;

			// Assign to next byte
			res[i] = (byte) (carry & 0xFF);

			// Carry remainder over to next byte (always want to shift in 0s)
			carry = carry >>> 8;
		}

		LargeInteger res_li = new LargeInteger(res);

		// If both operands are positive, magnitude could increase as a result
		//  of addition
		if (!this.isNegative() && !other.isNegative()) {
			// If we have either a leftover carry value or we used the last
			//  bit in the most significant byte, we need to extend the result
			if (res_li.isNegative()) {
				res_li.extend((byte) carry);
			}
		}
		// Magnitude could also increase if both operands are negative
		else if (this.isNegative() && other.isNegative()) {
			if (!res_li.isNegative()) {
				res_li.extend((byte) 0xFF);
			}
		}
		// Note that result will always be the same size as biggest input
		//  (e.g., -127 + 128 will use 2 bytes to store the result value 1)
		return res_li;
	}

	/**
	 * Negate val using two's complement representation
	 * @return negation of this
	 */
	public LargeInteger negate() {
		byte[] neg = new byte[val.length];
		int offset = 0;

		// Check to ensure we can represent negation in same length
		//  (e.g., -128 can be represented in 8 bits using two's
		//  complement, +128 requires 9)
		if (val[0] == (byte) 0x80) { // 0x80 is 10000000
			boolean needs_ex = true;
			for (int i = 1; i < val.length; i++) {
				if (val[i] != (byte) 0) {
					needs_ex = false;
					break;
				}
			}
			// if first byte is 0x80 and all others are 0, must extend
			if (needs_ex) {
				neg = new byte[val.length + 1];
				neg[0] = (byte) 0;
				offset = 1;
			}
		}

		// flip all bits
		for (int i  = 0; i < val.length; i++) {
			neg[i + offset] = (byte) ~val[i];
		}

		LargeInteger neg_li = new LargeInteger(neg);

		// add 1 to complete two's complement negation
		return neg_li.add(new LargeInteger(ONE));
	}

	/**
	 * Implement subtraction as simply negation and addition
	 * @param other LargeInteger to subtract from this
	 * @return difference of this and other
	 */
	public LargeInteger subtract(LargeInteger other) {
		return this.add(other.negate());
	}

	/**
	 * Compute the product of this and other
	 * @param other LargeInteger to multiply this by
	 * @return product of this and other
	 */
	public LargeInteger multiply(LargeInteger other) {
		int n = (this.length() > other.length()) ? this.length() : other.length();
		byte[] ans = new byte[2*n];
		LargeInteger largeAns = new LargeInteger(ans);

		// If they have equal length, token is other and toShift is this
		byte[] token = (this.length() < other.length()) ? this.getVal() : other.getVal();
		byte[] toShift = (this.length() >= other.length()) ? this.getVal() : other.getVal();

		for (int i = token.length - 1; i >= 0; i--) {
			int i_fac = (token.length - (i + 1)) * BITS_IN_BYTE;
			String bitStr = Integer.toBinaryString(token[i]);

			for (int j = bitStr.length() - 1; j >= 0; j--) {

				if (bitStr.charAt(j) == '1') {
					byte[] tempShift = upsizeArr(toShift, 0); // Avoid compounding shifts
					byte[] temp = leftShift(tempShift, i_fac + bitStr.length() - (j + 1));

					// Normalize lengths
					if (temp.length < ans.length)
						temp = upsizeArr(temp, ans.length - temp.length);

					LargeInteger tempInt = new LargeInteger(temp); // Seems like temp
					largeAns = largeAns.add(tempInt);
				}
			}
		}
		return largeAns;
	}
	/**
	 * Print out a byte array with each byte as a bit string
	 * @param toPrint byte array to be printed
	 */
	public void bytePrint(byte[] toPrint) {
		for (int i = 0; i < toPrint.length; i++)
			System.out.print(Integer.toBinaryString((int) toPrint[i] & 0xFF) + " ");
		System.out.println();
	}

	/**
	 * Implement left shifting
	 * @param n number of bits by which LargeInteger will be shifted
	 * @return shifted byte array
	 */
	public byte[] leftShift(byte[] toShift, int n) {
		boolean carryCond = false;

		for (int i = 0; i < n; i++) {
				if (((toShift[0] & 0x80) >> 7) == 1) {
					toShift = upsizeArr(toShift, 1);
					carryCond = true;
				}

				for (int j = toShift.length - 1; j >= 0; j--) {
					byte msb = (byte) ((toShift[j] & 0x80) >> 7);
					toShift[j] <<= 1;

					if (carryCond) 	toShift[j] |= 1;
					if (msb == 1) 	carryCond = true;
				}
		}

		return toShift;
	}

	/**
	 * Upsize a byte array (also serves to copy a byte array)
	 * @param oldArr array to be upsized
	 * @param delta number of bytes to upsize by (0 copies)
	 * @return upsized array
	 */
	public byte[] upsizeArr(byte[] oldArr, int delta) {
		byte[] newArr = new byte[oldArr.length + delta];

		for (int i = oldArr.length - 1; i >= 0; i--)
			newArr[i + delta] = oldArr[i];
		for (int i = delta - 1; i >= 0; i--)
			newArr[i] = 0;

		return newArr;
	}

	/**
	 * Run the extended Euclidean algorithm on this and other
	 * @param other another LargeInteger
	 * @return an array structured as follows:
	 *   0:  the GCD of this and other
	 *   1:  a valid x value
	 *   2:  a valid y value
	 * such that this * x + other * y == GCD in index 0
	 */
	 public LargeInteger[] XGCD(LargeInteger other) {
		 byte[][] bezoutNums = XGCD(this.getVal(), other.getVal());
		 byte[] gcd = bezoutNums[2];
		 byte[] x = bezoutNums[0];
		 byte[] y = bezoutNums[1];

		 LargeInteger gcdInt = new LargeInteger(gcd);
		 LargeInteger xInt = new LargeInteger(x);
		 LargeInteger yInt = new LargeInteger(y);

		 LargeInteger[] ans = {gcdInt, xInt, yInt};
		 return ans;
	 }

	 public byte[][] XGCD(byte[] thisVal, byte[] otherVal) {
		 if (isAllZeroes(otherVal)) {
			 byte[][] baseAns = new byte[3][];
			 byte[] gcd = thisVal;
			 baseAns[0] = thisVal;
			 baseAns[1] = otherVal;
			 baseAns[2] = gcd;

			 return baseAns;
		 }
		 LargeInteger thisValInt = new LargeInteger(thisVal);
		 LargeInteger otherValInt = new LargeInteger(otherVal);

		 byte[] div = thisValInt.divide(otherValInt);

		 byte[] rem = new byte[div.length / 2];
		 for (int i = 0; i < rem.length; i++)
		 		rem[i] = div[i];
		 byte[][] ans = XGCD(otherVal, rem);

		 byte[][] toReturn = new byte[3][];
		 toReturn[0] = ans[1];
		 LargeInteger divInt = new LargeInteger(div);
		 LargeInteger tempInt = new LargeInteger(ans[1]);
		 byte[] result = divInt.multiply(tempInt).getVal();
		 LargeInteger l1 = new LargeInteger(ans[0]);
		 LargeInteger l2 = new LargeInteger(result);
		 LargeInteger l3 = l1.subtract(l2);
		 byte[] sub = l3.getVal();
		 toReturn[1] = sub;
		 toReturn[2] = ans[2];
		 return toReturn;
	 }

	 public boolean isAllZeroes(byte[] test) {
		 for (int i = 0; i < test.length; i++)
			 if (test[i] != 0) return false;
		 return true;
	 }

	 public boolean isAllOnes(byte[] test) {
		 for (int i = 0; i < test.length; i++)
		 	 if (test[i] != -1) return false;
		 return true;
	 }

	 public boolean isNegative(byte[] test) {  return ((test[0] & 0x80) >> 7) == 1;  }

	/**
	 * Divide two LargeIntegers
	 * @param other LargeInteger to divide this by
	 * @return array that contains the quotient and remainder
	 */
	 public byte[] divide(LargeInteger other) {
		 LargeInteger tempInt;
		 LargeInteger result;
		 byte[] frontHalf;
		 byte[] temp;
		 byte[] truncatedArr;
		 boolean isPos;
		 int longestLen = val.length > other.length() ? val.length : other.length();
		 byte[] ans = new byte[2 * longestLen]; // Will store both quotient and remainder

		 byte[] a = val, b = other.getVal();

		 // Make everything positive - look into pos/neg conventions for quotient and remainder
		 if (isNegative(a)) a[0] &= ((byte) 0x7F);
		 if (isNegative(b)) b[0] &= ((byte) 0x7F);

		 // Normalize lengths
		 if (b.length < a.length) {
			 int diff = a.length - b.length;
			 byte pad = (byte) 0;
			 if (b[0] < 0)
			 	 pad = (byte) 0xFF;
			 byte[] newb = new byte[a.length];
			 for (int i = 0; i < diff; i++)
			   newb[i] = pad;
			 for (int i = 0; i < b.length; i++)
			 	 newb[i + diff] = b[i];
			 b = newb;
		 }

		 else if (a.length < b.length) {
			 int diff = b.length - a.length;
			 byte pad = (byte) 0;
			 if (a[0] < 0)
			 		pad = (byte) 0xFF;
			 byte[] newa = new byte[b.length];
			 for (int i = 0; i < diff; i++)
				  newa[i] = pad;
			 for (int i = 0; i < a.length; i++)
				  newa[i + diff] = a[i];
			 a = newa;
		 }

		 LargeInteger divisor = new LargeInteger(b);

		 // Load dividend into back half of array
		 for (int i = 0; i < a.length; i++)
			 ans[ans.length/2 + i] = a[i];
		 for (int i = 0; i < a.length / 2; i++)
		 	 a[i] = (byte) 0;


		 // Init step. SHL 1, bringing in a 0
		 ans = leftShift(ans, 1);

		 for (int i = 1; i <= longestLen * BITS_IN_BYTE; i++) {

			 // Extract first half
			 temp = new byte[ans.length / 2];
			 for (int j = 0; j < temp.length; j++) {
				 temp[j] = ans[j];
			 }

			 tempInt = new LargeInteger(temp);

			 if (isNegative(ans))
				 result = tempInt.add(divisor);

			 else
			 	 result = tempInt.subtract(divisor);

			 for (int j = 0; j < temp.length; j++)
				 ans[j] = result.getVal()[j];

			 if (isNegative(ans))
			 		isPos = false;
			 else
					isPos = true;

				ans = truncatedLeftShift(ans);

				// Truncate ans down to ignore extra byte from left shifting
				truncatedArr = new byte[2*longestLen];
				for (int j = truncatedArr.length - 1; j >= 0; j--)
					truncatedArr[j] = ans[j];
				ans = truncatedArr;
				if (isPos) ans[ans.length - 1] |= 1;
		 }

		 // Shift the remainder part right by one
		 // Extract front half, shift everything, & [0] with 0x7F
		 frontHalf = new byte[ans.length / 2];
		 for (int i = 0; i < frontHalf.length; i++)
			 frontHalf[i] = ans[i];
		 frontHalf = rightShift(frontHalf);
		 if (isAllOnes(frontHalf)) {
			 for (int i = 0; i < frontHalf.length; i++)
			 		frontHalf[i] = (byte) 0;
		 }
		 for (int i = 0; i < ans.length / 2; i++)
		 	 ans[i] = frontHalf[i];

		 return ans;

	 }

	 /**
	 	* Shift byte array one place to left, ignoring sign preservation for MSB
		* Used in division algorithm
		* @param toShift byte array to be shifted
		* @return shifted byte array
		*/
	 public byte[] truncatedLeftShift(byte[] toShift) {
		 	boolean carryCond = false;
   		for (int i = toShift.length - 1; i >= 0; i--) {
				byte msb = (byte) ((toShift[i] & 0x80) >> 7);
				toShift[i] <<= 1;
				if (carryCond)
					toShift[i] |= 1;
				if (msb == 1)
					carryCond = true;
				else
					carryCond = false;
			}
			return toShift;
	 }

	 /**
	 	* Shift byte array to right by one place
		* @param toShift byte array to be shifted
		* @return shifted byte array
		*/
	 public byte[] rightShift(byte[] toShift) {
		 boolean carryCond = false;
		 for (int i = 0; i < toShift.length; i++) {
			 byte lsb = (byte) (toShift[i] & 0x1);
			 toShift[i] >>= 1;
			 if (carryCond)
				 toShift[i] |= 0x80;
			 if (lsb == 1)
			 	 carryCond = true;
			 else
			 	 carryCond = false;
		 }
		 return toShift;
	 }

	 /**
	  * Compute the result of raising this to the power of y mod n
	  * @param y exponent to raise this to
	  * @param n modulus value to use
	  * @return this^y mod n
	  */
	 public LargeInteger modularExp(LargeInteger y, LargeInteger n) {
		byte[] init = {(byte) 1};

		LargeInteger ans = new LargeInteger(init);

		for (int i = 0; i < y.getVal().length; i++) {
			byte b = y.getVal()[i];
			String str = Integer.toBinaryString((b & 0xFF));

			// Pad front with zeroes
			int x = 8 - str.length();
			while (x > 0) {
				str = "0" + str;
				x--;
			}

			for (int j = 0; j < BITS_IN_BYTE; j++) {
				byte[] temp = new byte[ans.getVal().length];

				for (int k = 0; k < ans.getVal().length; k++)
					temp[k] = ans.getVal()[k];
				LargeInteger tempLarge = new LargeInteger(temp);
				System.out.println("doing the multiply.");
				ans = ans.multiply(tempLarge);



				if (str.charAt(j) == '1')
					ans = ans.multiply(this);

				// byte[] result = ans.divide(n);
				//
				// byte[] newB = new byte[result.length / 2];
				// for (int k = (result.length / 2 - this.getVal().length); k < result.length / 2; k++) {
				// 	newB[k] = result[k];
				// }
				//
				// LargeInteger newLarge = new LargeInteger(newB);
				// ans = newLarge;
				// System.out.println("ans length = " + ans.getVal().length);
			}

		}

		return ans;
	 }
}
