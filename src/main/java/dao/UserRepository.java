package dao;

import java.util.ArrayList;

import dto.User;

public class UserRepository {
	
	private ArrayList<User> listOfUsers = new ArrayList<User>();
	private static UserRepository instance = new UserRepository();
	
	public UserRepository() {
		User u1 = new User("이석현", "경기컴공18","admin","admin1234","a@kyonggi.ac.kr", "수원시 이의동"); 

		addUser(u1);
	}
	
	public ArrayList<User> getAllBooks(){
		return this.listOfUsers;
	}

	public User checkUser(String id, String pw) {
		User userById = null;
		
		for(int i = 0 ; i < listOfUsers.size() ;i++) {
			User user = listOfUsers.get(i);
			if (user != null && user.getId() != null && user.getId().equals(id)) {
				if( user.getPassword().equals(pw)) {
					userById = user;
					break;	
				}
			}
		}  
		
		return userById;
	}
	
	public static UserRepository getInstance() {
		return instance;
	}
	public void addUser(User user) {
		listOfUsers.add(user);
	}
}