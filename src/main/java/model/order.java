package model;

public class order {
	private int id;
	private int uid;
	private int did;
	private String date;
	public order() {
		super();
	}
	public order(int id, int uid, int did, String date) {
		super();
		this.id = id;
		this.uid = uid;
		this.did = did;
		this.date = date;
	}
	public order(int uid, int did, String date) {
		super();
		this.uid = uid;
		this.did = did;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
