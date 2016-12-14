package com.subbu.Todo.service;

import java.util.List;

import com.subbu.Todo.model.Todo;

public interface TodoService {
	 List<Todo> list();

	    Todo get (int id);

	    void saveOrUpdate(Todo todo);


}
