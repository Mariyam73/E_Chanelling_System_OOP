package model;

public class Appointment {
	
	//declaring variables of the appointment class
	private int id;
	private int user;
	private String patient;
	private String contact;
	private String gender;
	private String doctor;
	private String special;
	private String date;
	
	
	//overloaded constructor
	public Appointment(int id, String patient, String contact, String doctor,
			String special, String date ,String gender, int user) {
		super();
		this.id = id;
		this.user = user;
		this.patient = patient;
		this.contact = contact;
		this.gender = gender;
		this.doctor = doctor;
		this.special = special;
		this.date = date;
	}


	//using getters and setters to set values and retrieve values
	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getUser() {
		return user;
	}



	public void setUser(int user) {
		this.user = user;
	}



	public String getPatient() {
		return patient;
	}



	public void setPatient(String patient) {
		this.patient = patient;
	}



	public String getContact() {
		return contact;
	}



	public void setContact(String contact) {
		this.contact = contact;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getDoctor() {
		return doctor;
	}



	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}



	public String getSpecial() {
		return special;
	}



	public void setSpecial(String special) {
		this.special = special;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}
	

}
