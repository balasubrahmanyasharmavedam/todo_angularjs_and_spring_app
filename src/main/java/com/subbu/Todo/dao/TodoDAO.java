package com.subbu.Todo.dao;

import java.util.List;

import com.subbu.Todo.model.Todo;


public interface TodoDAO {
	public List<Todo> list();
	public Todo get(int id);
	public void saveOrUpdate(Todo todo);
	public void delete(int id);
	public boolean taskcompleted(int id, String status);

}
