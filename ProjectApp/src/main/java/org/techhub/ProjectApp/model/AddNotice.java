package org.techhub.ProjectApp.model;

public class AddNotice {

	@Override
	public String toString() {
		return "AddNotice [nid=" + nid + ", nname=" + nname + ", ndescription=" + ndescription + ", ndate=" + ndate
				+ ", location=" + location + ", organizeFor=" +  organizeFor + "]";
	}

	private int nid;
	private String nname;
	private String ndescription;
	private String ndate;
	private String location;
	private String organizeFor;

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public String getNname() {
		return nname;
	}

	public void setNname(String nname) {
		this.nname = nname;
	}

	public String getNdescription() {
		return ndescription;
	}

	public void setNdescription(String ndescription) {
		this.ndescription = ndescription;
	}

	public String getNdate() {
		return ndate;
	}

	public void setNdate(String ndate) {
		this.ndate = ndate;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getOrganizeFor() {
		return organizeFor;
	}

	public void setOrganizeFor(String organizeFor) {
		this.organizeFor = organizeFor;
	}
	

}
