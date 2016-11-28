package myblog

class Login {

	String username;
	String password;
    static constraints = {
		username(nullable:false)
		password(nullable:false)
		
    }
}
