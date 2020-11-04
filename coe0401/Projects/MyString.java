public class MyString
{
	private char[] letters;
	private final int NOT_FOUND = -1;

	public MyString( String other )
	{
		letters = other.toCharArray();
	}

	public MyString( MyString other )
	{
		this(other.toString());
	}

	public int length()
	{
		return this.letters.length;
	}

	public char charAt(int index)
	{
		if (index >= this.letters.length) System.exit(0);
		return this.letters[index];
	}

	private int helpToCompare (MyString other, int shortestLength) {
		for (int i = 0; i < shortestLength; i++) {
			if (this.letters[i] > other.letters[i]) return 1;
			if (this.letters[i] < other.letters[i]) return -1;
		}
		 return 0; // MyStrings are equal for length of shorter string if entire for loop is traversed, meaning shorter string is less or strings are equal
	}

	int compareTo(MyString other)
	{
		if (this.letters.length < other.letters.length) {
				if (this.helpToCompare(other, this.letters.length) != 0) return this.helpToCompare(other, this.letters.length);
				return -1;
		}

		else if (this.letters.length > other.letters.length) {
			if (this.helpToCompare(other, other.letters.length) != 0) return this.helpToCompare(other, other.letters.length);
			return 1;
		}
			return this.helpToCompare(other, this.letters.length);
	}

	public boolean equals(MyString other)
	{
		if (this.compareTo(other) == 0) return true;
		return false;
	}

	public int indexOf(int startIndex, char ch)
	{
		for (int i = startIndex; i < this.letters.length; i++) {
			if (this.letters[i] == ch) return i;
		}
		return -1;
	}
	public int indexOf(MyString other)
	{
		int i = 0;
		int j = -1;

		while (i < other.letters.length) {
			j = indexOf(j+1, other.letters[i]);
			if (j == NOT_FOUND) return -1;
			i++;
		}

		if (charAt(j-other.letters.length+1) != other.letters[0]) return -1;
		return j-other.letters.length+1;
	}
	public String toString()
	{
		return new String(letters);
	}
} // END MYSTRING CLASS
