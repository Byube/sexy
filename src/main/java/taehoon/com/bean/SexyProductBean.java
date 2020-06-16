package taehoon.com.bean;

public class SexyProductBean {
	private int pno;
	private int cno;
	private String pname;
	private int pprice;
	private String pcolor;
	private int pqty;
	private String pcategory;
	private String purl;
	private String pdate;
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public int getPqty() {
		return pqty;
	}
	public void setPqty(int pqty) {
		this.pqty = pqty;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getPurl() {
		return purl;
	}
	public void setPurl(String purl) {
		this.purl = purl;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	@Override
	public String toString() {
		return "SexyProductBean [pno=" + pno + ", cno=" + cno + ", pname=" + pname + ", pprice=" + pprice + ", pcolor="
				+ pcolor + ", pqty=" + pqty + ", pcategory=" + pcategory + ", purl=" + purl + ", pdate=" + pdate + "]";
	}
	

}
