package edu.matc.streamSearch.persistence;

import edu.matc.streamSearch.entity.User;
import edu.matc.streamSearch.entity.UserRoles;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class UserRolesDaoTest {

    UserRolesDao dao;

    @Before
    public void setUp() throws Exception {
        dao = new UserRolesDao();
    }

    @Test
    public void getAllUserRolesTest() throws Exception {
        List<UserRoles> userRoles = dao.getAllUserRoles();
        assertTrue(userRoles.size() > 0);
    }

    @Test
    public void getUserRolesTest() throws Exception {
        UserRoles expectedUserRole = new UserRoles();
        expectedUserRole.setUserName("testuser2");
        expectedUserRole.setRoleName("user");

        UserRoles actualUserRole = dao.getUserRoles("testuser2");
        assertTrue(expectedUserRole.equals(actualUserRole));
    }

    @Test
    public void addUserRolesTest() throws Exception {
        User user = new User();
        user.setUserName("testuser4");
        user.setUserPass("password4");
        user.setUserEmail("test4@test.edu");

        UserDao userDao = new UserDao();
        userDao.addUser(user);

        UserRoles insertedUserRole = new UserRoles();
        insertedUserRole.setUserName("testuser4");
        insertedUserRole.setRoleName("user");

        dao.addUserRoles(insertedUserRole);

        UserRoles returnedUserRole = dao.getUserRoles("testuser4");
        assertTrue(insertedUserRole.equals(returnedUserRole));
    }

}