package com.nayan.todo.repo;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.nayan.todo.dao.Tasks;
import com.nayan.todo.dao.Users;

@RunWith(SpringRunner.class)
@DataJpaTest
public class UsersRepoTest {
	
	@Autowired
	private UsersRepo userreo;
	
	@Autowired
	private TaskRepo taskrepo;

	@Test
	public void testFindByUserName() {
		
		List<Users> count=userreo.findByUserName("todo", "todo123");
		assertThat(count.size()==0);
		
	}
	
	@Test
	public void testfindAllByUserID() {
		List<Tasks> tasks=taskrepo.findAllByUserID(1);
		System.out.println("Task size::"+tasks.size());
		assertThat(tasks.size()==1);
	}

}
