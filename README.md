This is the demo that shows a datasheet.

<img src="https://images2018.cnblogs.com/blog/359743/201806/359743-20180603225915973-2039825735.png" />

* Java8
* Spring Boot2 v2.0.3
* JPA
* MySQL
* Thymeleaf
* React(Optional)

## Table of Contents

- [App](#app)
- [PC](#pc)
- [Package](#package)

## App
```java
	@CrossOrigin(origins = "http://localhost:3000")
	@GetMapping(value = "/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<UserDetails>> getAllUser() {
		List<UserDetails> user = userService.getUsers();
		return new ResponseEntity<List<UserDetails>>(user, HttpStatus.OK);
	}
```


## Pc
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

## Package
```bash
mvn package
```