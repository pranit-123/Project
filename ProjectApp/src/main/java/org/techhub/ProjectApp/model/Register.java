package org.techhub.ProjectApp.model;

public class Register {

	private String rid;
	private String name;
	private String email;
	private String password;
	private String contact;
	private String role;

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Register [name=" + name + ", email=" + email + ", password=" + password + ", contact=" + contact
				+ ", role=" + role + "]";
	}
	
}
