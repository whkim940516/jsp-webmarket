<%@page import="dao.TodoRepository"%>
<%@page import="dto.Todo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 한글 안 깨지게
//request.setCharacterEncoding("UTF-8");
String task = request.getParameter("task");
Todo todo = new Todo(task);
TodoRepository repository = TodoRepository.getInstance();
repository.addTodo(todo);
response.sendRedirect("todolist.jsp");
%>

