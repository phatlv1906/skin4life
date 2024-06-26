package model;

public class User {
	private int id;
	private String name;
	private String password;
	private String address;
	private String phone;
	
	public User() {
		super();
	}
	public User(String name, String password, String address, String phone) {
		super();
		this.name = name;
		this.password = password;
		this.address = address;
		this.phone = phone;
	}
	public User(int id, String name, String password, String address, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.address = address;
		this.phone = phone;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	

}
