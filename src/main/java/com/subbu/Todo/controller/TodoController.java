package com.subbu.Todo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.subbu.Todo.dao.TodoDAO;
import com.subbu.Todo.model.Todo;
import com.subbu.Todo.service.TodoService;

@Controller
public class TodoController {
	@Autowired
	Todo todo;
	@Autowired
	TodoDAO todoDAO;
	@Autowired
	TodoService todoservice;

	@RequestMapping("/")
	public ModelAndView onLoad(HttpSession session) {

		ModelAndView mv = new ModelAndView("index");
		session.setAttribute("todo", todo);
		session.setAttribute("todoList", todoDAO.list());
		/*
		 * boolean taskcompleted = todoDAO.taskcompleted(id1, status); if
		 * (taskcompleted) { mv = new ModelAndView("index");
		 * mv.addObject("completed", "true"); } else { mv = new
		 * ModelAndView("index"); mv.addObject("completed", "false"); }
		 */
		return mv;
	}

	@RequestMapping("/addtask")
	public ModelAndView taskcompleted(@ModelAttribute("todo1") Todo todo1, HttpSession session) {
		ModelAndView mv = new ModelAndView("index");

		
		todoDAO.saveOrUpdate(todo1);
		session.setAttribute("todo", todo);
		session.setAttribute("todoList", todoDAO.list());

		return mv;
	}

	@RequestMapping("/{id}")
	public ModelAndView deletetask(@PathVariable int id, HttpSession session) {

		ModelAndView mv = new ModelAndView("index");
		todoDAO.delete(id);
		mv.addObject("deleted", "true");
		session.setAttribute("todo", todo);

		session.setAttribute("todoList", todoDAO.list());

		return mv;
	}

}
