package supplier;

public class Supplier {
	
    // Member variables to store supplier information

    private int ID;
    private String UserType;
    private String First_Name;
    private String Last_Name;
    private String UserName;
    private String DOB;
    private String City; 
    private String PhoneNumber; 
    private String Email ;
    private String Password;
    
    // Constructor to initialize the Supplier object with provided information

	public Supplier(int ID,String UserType, String First_Name, String Last_Name, String UserName, String DOB, String City,
			String PhoneNumber, String Email, String Password) {
		this.ID = ID;
		this.UserType=UserType;
		this.First_Name = First_Name;
		this.Last_Name = Last_Name;
		this.UserName = UserName;
		this.DOB = DOB;
		this.City = City;
		this.PhoneNumber = PhoneNumber;
		this.Email = Email;
		this.Password = Password;
	}

    // Getter methods to retrieve specific attributes of the Supplier object


	public int getID() {
		return ID;
	}
	
	public String getUserType() {
		return UserType;
	}

	public String getFirst_Name() {
		return First_Name;
	}

	public String getLast_Name() {
		return Last_Name;
	}

	public String getUserName() {
		return UserName;
	}


	public String getDOB() {
		return DOB;
	}



	public String getCity() {
		return City;
	}



	public String getPhoneNumber() {
		return PhoneNumber;
	}



	public String getEmail() {
		return Email;
	}



	public String getPassword() {
		return Password;
	}



}