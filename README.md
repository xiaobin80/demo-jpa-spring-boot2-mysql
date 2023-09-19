This is the demo that shows a datasheet.

<img src="https://images2018.cnblogs.com/blog/359743/201806/359743-20180603225915973-2039825735.png" />

EOL: [2023-11-18](https://spring.io/projects/spring-boot#support)

* [Java8](https://adoptium.net/temurin/releases/?version=8)
* Spring Boot2    
>> [2.x](https://spring.io/projects/spring-boot#learn)
* JPA
* MySQL
>> [redis-server](https://tdtc-hrb.github.io/csdn/post/ops_dc_redis_ubuntu/)
* Thymeleaf
* ReactJS    
>> [userDetails-saga](https://github.com/xiaobin80/userDetails-saga)    
>> [userDetails-thunk](https://github.com/xiaobin80/userDetails-thunk)    

## Table of Contents

- [App](#app)
- [PC](#pc)
- [Package](#package)
- [Run PC](#run)

### App
```java
	//@CrossOrigin(origins = "http://localhost:3000")
	@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3030"})
	@GetMapping(value = "/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<UserDetails>> getAllUser() {
		List<UserDetails> user = userService.getUsers();
		return new ResponseEntity<List<UserDetails>>(user, HttpStatus.OK);
	}
```


### Pc
```java
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public String findAll(Model model) {
		List<UserDetails> users = userService.getUsers();
		
		model.addAttribute("users", users);
		
		for(UserDetails user : users) {
			System.out.println(user.getEmail() + " " + user.getName());
		}
		return "userList";
	}
```

### Package
```bash
mvn package -DskipTests
```

### Run
[pc side](http://localhost:8080/user/listPage)
