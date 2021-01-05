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


    @WebServlet(value = "/delete-task")
    public class DeleteTaskServlet extends HttpServlet {

        private TaskRepository taskRepository;

        @Override
        public void init() {
            taskRepository = TaskRepository.getTaskRepository();
        }

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            taskRepository.delete(Integer.parseInt(request.getParameter("id")));
            response.sendRedirect("/task-list");

        }

    }
