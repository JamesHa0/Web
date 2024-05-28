package com.demo;


import java.io.Serializable;

public class Student implements Serializable{
	
	private static final long serialVersionUID = 1L;
		private String sno;
	    private String sname;
	    private String sex;
	    private String birthday;

	    private String institute;
	    
	    
	    public Student() {
			
		}
	    
		public Student(String sno, String sname, String sex, String birthday, String email, String institute) {
			super();
			this.sno = sno;
			this.sname = sname;
			this.sex = sex;
			this.birthday = birthday;
		
			this.institute = institute;
		}
		public String getSno() {
			return sno;
		}
		public void setSno(String sno) {
			this.sno = sno;
		}
		public String getSname() {
			return sname;
		}
		public void setSname(String sname) {
			this.sname = sname;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getBirthday() {
			return birthday;
		}
		public void setBirthday(String birthday) {
			this.birthday = birthday;
		}
		
		
		public String getInstitute() {
			return institute;
		}
		public void setInstitute(String institute) {
			this.institute = institute;
		}
		@Override
		public String toString() {
			return "Student [sno=" + sno + ", sname=" + sname + ", sex=" + sex + ", birthday=" + birthday + ", institute=" + institute + "]";
		}
		
	    
}

