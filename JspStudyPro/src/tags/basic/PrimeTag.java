package tags.basic;

public class PrimeTag extends SimplePrimeTag {
	public void setLength(String length) {
		try {
			this.length = Integer.parseInt(length);
		} catch (NumberFormatException e) {
			// Do nothing as length is already set to 50
		}
	}
}
