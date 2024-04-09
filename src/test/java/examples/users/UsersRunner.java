package examples.users;

import java.io.IOException;

import com.intuit.karate.Json;
import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() throws IOException {
    	System.setProperty("karate.env", "uat");
    	String j =  DataReader.getData();
    	System.setProperty("excelData", j);
        return Karate.run("E2E_Itr").relativeTo(getClass());
    }
}	
