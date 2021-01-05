package com.softserve.itacademy.controller;

import com.softserve.itacademy.model.Priority;
import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Locale;


@WebServlet(value = "/create-task")
    public class CreateTaskServlet extends HttpServlet {

        private TaskRepository taskRepository;

        @Override
        public void init() {
            taskRepository = TaskRepository.getTaskRepository();
        }

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/create-task.jsp");
            requestDispatcher.forward(request, response);

        }
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String title = request.getParameter("title");
            String priority = request.getParameter("priority");

            Task task = new Task(title, Priority.valueOf(priority.toUpperCase()));

            taskRepository.create(task);
            response.sendRedirect("/task-list");
        }
    }
