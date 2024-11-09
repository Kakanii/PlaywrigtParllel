package utility;

import java.util.ArrayList;
import java.util.List;

public class UserUtils {
	public static List<User> users = new ArrayList<>();
	public static List<Role> roles = new ArrayList<>();

	public static void save_information_new_user(String status) {

	}

	public static List<User> getUsers() {
		return users;
	}

	public static void setUsers(List<User> users) {
		UserUtils.users = users;
	}

	public static List<Role> getRoles() {
		return roles;
	}

	public static void setRoles(List<Role> roles) {
		UserUtils.roles = roles;
	}

}
