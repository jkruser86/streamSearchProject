package edu.matc.streamSearch.persistence;

import edu.matc.streamSearch.entity.*;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.*;

public class UserDao {
    private final Logger log = Logger.getLogger(this.getClass());

    /**
     * Return a list of all users
     *
     * @return All users
     */
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        users = session.createCriteria(User.class).list();
        return users;
    }

    public User getUser(String userName) {
        User user = null;
        Session session = null;

        try {
            session = SessionFactoryProvider.getSessionFactory().openSession();
            user = (User) session.get(User.class, userName);
        } catch (HibernateException he) {
            log.error("Error retrieving username: " + userName, he);
        } finally {
            if (session != null) {
                session.close();
            }
        }

        return user;
    }

    /**
     * Adds a user to the database
     *
     * @param user
     */
    public void addUser (User user) {
        Transaction transaction = null;
        Session session = null;

        try {
            session = SessionFactoryProvider.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
        } catch (HibernateException he) {
            log.error("Error saving user " + user, he);
            if (transaction != null) {
                try {
                    transaction.rollback();
                } catch (HibernateException he2) {
                    log.error("Error rolling back save of user " + user, he2);
                }
            }
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
}
