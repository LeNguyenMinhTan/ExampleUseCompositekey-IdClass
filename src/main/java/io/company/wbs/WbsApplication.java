package io.company.wbs;

import io.company.wbs.entity.Role;
import io.company.wbs.entity.User;
import io.company.wbs.service.UserService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.ArrayList;

@SpringBootApplication
public class WbsApplication {

	public static void main(String[] args) {
		SpringApplication.run(WbsApplication.class, args);
	}

	@Bean
	PasswordEncoder passwordEncoder(){
		return new BCryptPasswordEncoder();
	}

	@Bean
	CommandLineRunner run(UserService userService) {
		return args -> {
//			userService.saveRole(new Role(null, "ROLE_USER", null,null,null,null));
//			userService.saveRole(new Role(null, "ROLE_MANAGER", null,null,null,null));
//			userService.saveRole(new Role(null, "ROLE_ADMIN", null,null,null,null));
//			userService.saveRole(new Role(null, "ROLE_SUPER_ADMIN", null,null,null,null));

			userService.saveRole(new Role(null, "ROLE_USER", null,null,null,null,new ArrayList<>()));
			userService.saveRole(new Role(null, "ROLE_MANAGER", null,null,null,null,new ArrayList<>()));
			userService.saveRole(new Role(null, "ROLE_ADMIN", null,null,null,null,new ArrayList<>()));
			userService.saveRole(new Role(null, "ROLE_SUPER_ADMIN", null,null,null,null,new ArrayList<>()));

			userService.saveUser(new User(null, "Alexrole@gmail.com","Alexrole","0906300300","Alexrole@gmail.com","1234","25012","email",null,new ArrayList<>(), null,null,null,null));
			userService.saveUser(new User(null, "IamTan@gmail.com","IamTan","0906300301","IamTan@gmail.com","1234","25012","email",null,new ArrayList<>(), null,null,null,null));
			userService.saveUser(new User(null, "Tan@gmail.com","Tan","0906300302","Tan@gmail.com","1234","25012","email",null,new ArrayList<>(), null,null,null,null));
			userService.saveUser(new User(null, "MidTan@gmail.com","MidTan","0906300303","MidTan@gmail.com","1234","25012","email",null,new ArrayList<>(), null,null,null,null));
			userService.saveUser(new User(null, "Bean@gmail.com","Bean","0906300304","Bean@gmail.com","1234","25012","email",null,new ArrayList<>(), null,null,null,null));

//			userService.saveUser(new User(null, "Alexrole@gmail.com","Alexrole","0906300300","Alexrole@gmail.com","1234","25012","email",null, null,null,null,null));
//			userService.saveUser(new User(null, "IamTan@gmail.com","IamTan","0906300301","IamTan@gmail.com","1234","25012","email",null, null,null,null,null));
//			userService.saveUser(new User(null, "Tan@gmail.com","Tan","0906300302","Tan@gmail.com","1234","25012","email",null, null,null,null,null));
//			userService.saveUser(new User(null, "MidTan@gmail.com","MidTan","0906300303","MidTan@gmail.com","1234","25012","email",null, null,null,null,null));
//			userService.saveUser(new User(null, "Bean@gmail.com","Bean","0906300304","Bean@gmail.com","1234","25012","email",null, null,null,null,null));

			userService.addRoleToUser("IamTan@gmail.com","ROLE_USER");
			userService.addRoleToUser("Tan@gmail.com","ROLE_USER");
			userService.addRoleToUser("MidTan@gmail.com","ROLE_USER");
			userService.addRoleToUser("IamTan@gmail.com","ROLE_ADMIN");
			userService.addRoleToUser("Bean@gmail.com","ROLE_MANAGER");
			userService.addRoleToUser("Alexrole@gmail.com","ROLE_ADMIN");
			userService.addRoleToUser("Alexrole@gmail.com","ROLE_MANAGER");
			userService.addRoleToUser("Alexrole@gmail.com","ROLE_SUPER_ADMIN");

		};
	}
}
