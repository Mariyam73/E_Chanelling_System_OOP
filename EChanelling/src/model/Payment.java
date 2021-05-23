package model;

public class Payment {
	
	private int  id;
	private int user;
	private String b_name;
	private String c_type;
	private String c_num;
	private String exp_year;
	private String exp_month;
	private String cvv;
	private String date;
	private double amount;
	
	public Payment(int id, String b_name, String c_type, String c_num, String exp_year, String exp_month, String cvv,
			String date , double amount, int user) {
		super();
		this.id = id;
		this.user = user;
		this.b_name = b_name;
		this.c_type = c_type;
		this.c_num = c_num;
		this.exp_year = exp_year;
		this.exp_month = exp_month;
		this.cvv = cvv;
		this.date = date;
		this.amount = amount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getC_type() {
		return c_type;
	}

	public void setC_type(String c_type) {
		this.c_type = c_type;
	}

	public String getC_num() {
		return c_num;
	}

	public void setC_num(String c_num) {
		this.c_num = c_num;
	}

	public String getExp_year() {
		return exp_year;
	}

	public void setExp_year(String exp_year) {
		this.exp_year = exp_year;
	}

	public String getExp_month() {
		return exp_month;
	}

	public void setExp_month(String exp_month) {
		this.exp_month = exp_month;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getUser() {
		return user;
	}

	public void setUser(int user) {
		this.user = user;
	}
	
	

}
