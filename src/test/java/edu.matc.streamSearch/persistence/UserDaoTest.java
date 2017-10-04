package edu.matc.streamSearch.persistence;

import edu.matc.streamSearch.entity.User;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class UserDaoTest {

    UserDao dao;

    @Before
    public void setup() {
        dao = new UserDao();
    }

    @Test
    public void getAllUsersTest() throws Exception {
        List<User> users = dao.getAllUsers();
        assertTrue(users.size() > 0);
    }

    @Test
    public void getUserTest() throws Exception {
        User expectedUser = new User();
        expectedUser.setUserName("testuser2");
        expectedUser.setUserPass("password2");
        expectedUser.setUserEmail("test2@test.edu");

        User actualUser = dao.getUser("testuser2");
        assertTrue(expectedUser.equals(actualUser));
    }

    @Test
    public void addUserTest() throws Exception {
        User insertedUser = new User();
        insertedUser.setUserName("testuser4");
        insertedUser.setUserPass("password4");
        insertedUser.setUserEmail("test4@test.edu");

        dao.addUser(insertedUser);

        User returnedUser = dao.getUser("testuser4");
        assertTrue(insertedUser.equals(returnedUser));
    }

}