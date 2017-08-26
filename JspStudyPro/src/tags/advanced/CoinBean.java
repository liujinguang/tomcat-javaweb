package tags.advanced;

import java.io.Serializable;

/**
 * Bean that represents a coin. It has a single method that simulates a random
 * coin flip.
 * 
 * @author bob
 *
 */
public class CoinBean implements Serializable {
	public String getFlip() {
		if (Math.random() < 0.5) {
			return "Heads";
		} else {
			return "Tails";
		}
	}
}
