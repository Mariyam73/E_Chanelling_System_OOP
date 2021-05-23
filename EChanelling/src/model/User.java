package model;

public class User {
	
	
	//declaring variables of user class
	
			private int id;
			private String name;
			private String userName;
			private String email;
			private String password;
			private String phone;
			
			
			//default constructor
			public User()
			{
				super();
			}
			
			//parameterized constructor (method overloading)
			
			public User(int id, String name, String userName, String email, String password, String phone) {
				super();
				this.id = id;
				this.name = name;
				this.userName = userName;
				this.email = email;
				this.password = password;
				this.phone = phone;
			}

			//generate getters and setters
			
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

			public String getUserName() {
				return userName;
			}

			public void setUserName(String userName) {
				this.userName = userName;
			}

			public String getEmail() {
				return email;
			}

			public void setEmail(String email) {
				this.email = email;
			}

			public String getPassword() {
				return password;
			}

			public void setPassword(String password) {
				this.password = password;
			}

			public String getPhone() {
				return phone;
			}

			public void setPhone(String phone) {
				this.phone = phone;
			}
			
			

}
