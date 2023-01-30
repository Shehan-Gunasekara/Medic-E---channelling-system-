package com.admin;

public class hospital extends Users {
	
	private String HID;
	private String Location;
	private String LogoName;
	public hospital(String name, String phone, String email, String password, String hID, String location,
			String logoName) {
		super(name, phone, email, password);
		HID = hID;
		Location = location;
		LogoName = logoName;
	}
	
	public String getHID() {
		return HID;
	}

	public String getLocation() {
		return Location;
	}

	public String getLogoName() {
		return LogoName;
	}


	
	
	
	

}
