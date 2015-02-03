/**
 * 
 */
package com.spaneos.po.pojo;

/**
 * @author THIRU
 *
 */
public class Details {
	private String fname;
	private String lname;
	private String email;
	private String pwd;
	private String mobile;
	private String doorno;
	private String city;
	private String street;
	private String state;
	private String pincode;
	
	
	/**
	 * @return the street
	 */
	public String getStreet() {
		return street;
	}

	/**
	 * @param street the street to set
	 */
	public void setStreet(String street) {
		this.street = street;
	}

	
	public Details(){
		
	}

	/**
	 * @return the fname
	 */
	public String getFname() {
		return fname;
	}

	/**
	 * @param fname the fname to set
	 */
	public void setFname(String fname) {
		this.fname = fname;
	}

	/**
	 * @return the lname
	 */
	public String getLname() {
		return lname;
	}

	/**
	 * @param lname the lname to set
	 */
	public void setLname(String lname) {
		this.lname = lname;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the pwd
	 */
	public String getPwd() {
		return pwd;
	}

	/**
	 * @param pwd the pwd to set
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}

	/**
	 * @param mobile the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	/**
	 * @return the doorno
	 */
	public String getDoorno() {
		return doorno;
	}

	/**
	 * @param doorno the doorno to set
	 */
	public void setDoorno(String doorno) {
		this.doorno = doorno;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the pincode
	 */
	public String getPincode() {
		return pincode;
	}

	/**
	 * @param pincode the pincode to set
	 */
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	/**
	 * @param fname
	 * @param lname
	 * @param email
	 * @param pwd
	 * @param mobile
	 * @param doorno
	 * @param city
	 * @param street
	 * @param state
	 * @param pincode
	 */
	public Details(String fname, String lname, String email, String pwd,
			String mobile, String doorno, String city,String street, String state,
			String pincode) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.pwd = pwd;
		this.mobile = mobile;
		this.doorno = doorno;
		this.city = city;
		this.street=street;
		this.state = state;
		this.pincode = pincode;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Details [fname=" + fname + ", lname=" + lname + ", email="
				+ email + ", pwd=" + pwd + ", mobile=" + mobile + ", doorno="
				+ doorno + ", city=" + city + ", state=" + state + ", pincode="
				+ pincode + "]";
	}
	
	

}

