package com.subbu.Todo.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.subbu.Todo.dao.TodoDAO;
import com.subbu.Todo.model.Todo;

public class TodoTest {
	
	public static void main(String[] args) {
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.subbu.Todo");
		context.refresh();

		TodoDAO todoDAO = (TodoDAO) context.getBean("todoDAO");
		Todo todo = (Todo) context.getBean("todo");
		
		todo.setTitle("task2");
		todo.setDescription("complete task2");
		todoDAO.saveOrUpdate(todo);
	

}
}
