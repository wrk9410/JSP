
public class Country {
	private String name;
	private int popul;
	private String contin;

	public Country() {}

	public Country(String name, int popul) {
		super();
		this.name = name;
		this.popul = popul;
	}
	
	public Country(String name, int popul, String contin) {
		super();
		this.name = name;
		this.popul = popul;
		this.contin = contin;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPopul() {
		return popul;
	}

	public void setPopul(int popul) {
		this.popul = popul;
	}

	public String getContin() {
		return contin;
	}

	public void setContin(String contin) {
		this.contin = contin;
	}

	@Override
	public String toString() {
		return "Country [name=" + name + ", popul=" + popul + ", contin=" + contin + "]";
	}

}
