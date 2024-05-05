package model;

public class doctor {
	private int id;
	private String name;
	private String hosital;
	private String special;
	private int exp;
	private String des;
	private String image;
	
	public doctor() {
		super();
	}
	public doctor(String name, String hosital, String special, int exp, String des, String image) {
		super();
		this.name = name;
		this.hosital = hosital;
		this.special = special;
		this.exp = exp;
		this.des = des;
		this.image = image;
	}
	public doctor(int id, String name, String hosital, String special, int exp, String des, String image) {
		super();
		this.id = id;
		this.name = name;
		this.hosital = hosital;
		this.special = special;
		this.exp = exp;
		this.des = des;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHosital() {
		return hosital;
	}
	public void setHosital(String hosital) {
		this.hosital = hosital;
	}
	public String getSpecial() {
		return special;
	}
	public void setSpecial(String special) {
		this.special = special;
	}
	public int getExp() {
		return exp;
	}
	public void setExp(int exp) {
		this.exp = exp;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "doctor [id=" + id + ", name=" + name + ", hosital=" + hosital + ", special=" + special + ", exp=" + exp
				+ ", des=" + des + ", image=" + image + "]";
	}
	
	
}
