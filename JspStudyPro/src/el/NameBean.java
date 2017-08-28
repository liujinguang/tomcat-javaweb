package el;

public class NameBean {
	public NameBean() {
		super();
	}

	public NameBean(String firstName, String lastName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	private String firstName = "Missing first name";
	private String lastName = "Missing last name";
}
