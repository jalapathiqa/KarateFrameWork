package testRunner;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	@Karate.Test
	Karate getAPITest() {
		return Karate.run("GET_UserDetails").relativeTo(getClass());
		
	}
	
	@Karate.Test
	Karate postAPITest() {
		return Karate.run("POST_CreateNewUser").relativeTo(getClass());
		
	}

}
