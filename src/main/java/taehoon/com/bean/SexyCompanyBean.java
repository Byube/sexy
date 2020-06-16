package taehoon.com.bean;

public class SexyCompanyBean {
	private int cno;
	private String cname;
	private String ctel;
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
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
	@Override
	public String toString() {
		return "SexyCompanyBean [cno=" + cno + ", cname=" + cname + ", ctel=" + ctel + "]";
	}
	

}
