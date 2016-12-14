package com.subbu.Todo.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.subbu.Todo.model.Todo;


@SuppressWarnings({ "deprecation" })
@Repository("todoDAO")
public class TodoDAOImpl implements TodoDAO{
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public TodoDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory= sessionFactory;
	}
	
	@Transactional
	public void saveOrUpdate(Todo todo){
		sessionFactory.getCurrentSession().saveOrUpdate(todo);
		
	}
	
	@Transactional
	public void delete(int id){
		Todo todo = new Todo();
		todo.setId(id);;;
		sessionFactory.getCurrentSession().delete(todo);
		
	}

	@Transactional
	public Todo get(int id){
		String hql = "from Todo where id="+"'"+id+"'";
		@SuppressWarnings({ "rawtypes" })
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings({ "unchecked" })
		List<Todo> listTodo =(List<Todo>) query.list();
		
		if (listTodo !=null && !listTodo.isEmpty()){
			return listTodo.get(0);
			
		}
		return null;
	}
	
	@Transactional
	public List<Todo> list(){
		@SuppressWarnings({ "unchecked" })
		List<Todo> listTodo = (List<Todo>)
				sessionFactory.getCurrentSession().createCriteria(Todo.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listTodo;
		
	}
	
	public boolean taskcompleted(int id, String status) {
		String hql = "from User where id='"+ id + "' and status = ' y '";
		@SuppressWarnings("rawtypes")
		Query q = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("rawtypes")
		List list = q.list();
		if (list == null || list.isEmpty()) {
			return false;

		} else {
			return true;

		}
	}



}
