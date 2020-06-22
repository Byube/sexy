package taehoon.com.bean;

public class SexyCompanyBean {
	private int cno;
	private String cid;
	private String cpassword;
	private String cname;
	private String ctel;
	private String cfilename;
	private String cdate;
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCtel() {
		return ctel;
	}
	public void setCtel(String ctel) {
		this.ctel = ctel;
	}
	public String getCfilename() {
		return cfilename;
	}
	public void setCfilename(String cfilename) {
		this.cfilename = cfilename;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	@Override
	public String toString() {
		return "SexyCompanyBean [cno=" + cno + ", cid=" + cid + ", cpassword=" + cpassword + ", cname=" + cname
				+ ", ctel=" + ctel + ", cfilename=" + cfilename + ", cdate=" + cdate + "]";
	}
	

	

}
