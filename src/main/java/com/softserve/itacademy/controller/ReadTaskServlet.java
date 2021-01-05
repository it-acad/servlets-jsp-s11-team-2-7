package com.softserve.itacademy.controller;

import com.softserve.itacademy.model.Task;
import com.softserve.itacademy.repository.TaskRepository;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

    @WebServlet("/task-read")
    public class ReadTaskServlet extends HttpServlet {
        private TaskRepository taskRepository;

        @Override
        public void init() throws ServletException {
            taskRepository = TaskRepository.getTaskRepository();
        }
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Task task = taskRepository.read(Integer.parseInt(request.getParameter("id")));
            request.setAttribute("task", task);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/pages/task-read.jsp");
            requestDispatcher.forward(request, response);
        }


    }

