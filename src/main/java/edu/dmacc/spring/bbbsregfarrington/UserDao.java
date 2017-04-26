package edu.dmacc.spring.bbbsregfarrington;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class UserDao {

	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("BBBSRegFarrington");

	public void insertUser(User userToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(userToAdd);
		em.getTransaction().commit();
		em.close();
		emfactory.close();
	}

	public List<User> getAllUsers() {
		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("BBBSRegFarrington");
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from User u";
		TypedQuery<User> typedQuery = em.createQuery(q, User.class);
		List<User> all = typedQuery.getResultList();

		/*
		 * /for (User u:all) { System.out.print(u.getId() + "--");
		 * System.out.print(u.getFirstName()+ "--");
		 * System.out.print(u.getLastName()+ "--");
		 * System.out.print(u.getHobbies()+ "--");
		 * System.out.print(u.getGradeMatch()+ "--");
		 * System.out.print(u.getSubjects()+ "--");
		 * System.out.println(u.getBackgroundCheck()+ "--");
		 * System.out.println(); } /
		 */

		return all;
	}
}
