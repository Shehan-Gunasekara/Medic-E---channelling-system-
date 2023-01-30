package com.admin;

public class doctor extends Users{
	
	private String DID;
	private String NIC;
	private String address;
	private String gender;
	private String specialization;
	private String picName;
	public doctor(String name, String phone, String email, String password, String dID, String nIC, String address,
			String gender, String specialization, String picName) {
		super(name, phone, email, password);
		DID = dID;
		NIC = nIC;
		this.address = address;
		this.gender = gender;
		this.specialization = specialization;
		this.picName = picName;
	}
	public String getDID() {
		return DID;
	}

	public String getNIC() {
		return NIC;
	}

	public String getAddress() {
		return address;
	}

	public String getGender() {
		return gender;
	}

	public String getSpecialization() {
		return specialization;
	}

	public String getPicName() {
		return picName;
	}
	
	
	
	
}
