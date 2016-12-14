package com.subbu.Todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.subbu.Todo.dao.TodoDAO;
import com.subbu.Todo.model.Todo;

@Service
public class TodoServiceImpl implements TodoService {
	
	@Autowired
	private TodoDAO todoDAO;
	
	public Todo get(int id){
		return todoDAO.get(id);
		
	}
	
	
	
	public void saveOrUpdate(Todo todo){
		todoDAO.saveOrUpdate(todo);
	}



	@Override
	public List<Todo> list() {
		
		return todoDAO.list();
	}




}
