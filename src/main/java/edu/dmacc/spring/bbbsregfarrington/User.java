package edu.dmacc.spring.bbbsregfarrington;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstname;
	private String lastname;
	private String hobbies;
	private String gradematch;
	private String subjects;
	private Background backgroundCheck;

	public String getFirstName() {
		return firstname;
	}

	public void setFirstName(String firstName) {
		this.firstname = firstName;
	}

	public String getLastName() {
		return lastname;
	}

	public void setLastName(String lastName) {
		this.lastname = lastName;
	}

	public String getHobbies() {
		return hobbies;
	}

	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	public String getGradeMatch() {
		return gradematch;
	}

	public void setGradeMatch(String gradeMatch) {
		this.gradematch = gradeMatch;
	}

	public String getSubjects() {
		return subjects;
	}

	public void setSubjects(String subjects) {
		this.subjects = subjects;
	}

	public Background getBackgroundCheck() {
		return backgroundCheck;
	}

	public void setBackgroundCheck(Background backgroundCheck) {
		this.backgroundCheck = backgroundCheck;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
