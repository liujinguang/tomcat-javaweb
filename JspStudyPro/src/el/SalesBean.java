package el;

public class SalesBean {
	private double q1, q2, q3, q4;

	public SalesBean(double q1, double q2, double q3, double q4) {
		super();
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.q4 = q4;
	}

	public double getQ1() {
		return q1;
	}

	public double getQ2() {
		return q2;
	}

	public double getQ3() {
		return q3;
	}

	public double getQ4() {
		return q4;
	}

	public double getTotal() {
		return q1 + q2 + q3 + q4;
	}
}
