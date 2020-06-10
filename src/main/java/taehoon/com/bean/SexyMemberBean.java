package taehoon.com.bean;

public class SexyMemberBean {

  private String id;
  private String name;
  private String nickname;
  private String password;
  private String gender;
  private String tel;
  private String birthdate;
  private String email;
  private String address;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getNickname() {
	return nickname;
}
public void setNickname(String nickname) {
	this.nickname = nickname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getBirthdate() {
	return birthdate;
}
public void setBirthdate(String birthdate) {
	this.birthdate = birthdate;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
@Override
public String toString() {
	return "SexyMemberBean [id=" + id + ", name=" + name + ", nickname=" + nickname + ", password=" + password
			+ ", gender=" + gender + ", tel=" + tel + ", birthdate=" + birthdate + ", email=" + email + ", address="
			+ address + "]";
}
  
}
