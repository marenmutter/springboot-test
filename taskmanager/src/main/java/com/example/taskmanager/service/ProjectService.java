package com.example.taskmanager.service;

import com.example.taskmanager.dto.ProjectDTO;
import com.example.taskmanager.model.Project;
import com.example.taskmanager.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ProjectService {


    @Autowired
    private ProjectRepository projectRepository;

    public Page<Project> findAll(Pageable pageable) {
        return projectRepository.findAll(pageable);
    }

    public Project createProject(ProjectDTO projectDTO) {
        Project project = new Project();
        project.setName(projectDTO.getName());
        project.setDescription(projectDTO.getDescription());
        project.setCreatedDate(projectDTO.getCreatedDate());
        return projectRepository.save(project);
    }

    public Project updateProject(Long id, ProjectDTO projectDTO) {
        Project existingProject = projectRepository.findById(id).orElseThrow(() -> new RuntimeException("Project not found"));
        existingProject.setName(projectDTO.getName());
        return projectRepository.save(existingProject);
    }

    public Project findById(Long id) {
        return projectRepository.findById(id).orElseThrow(() -> new RuntimeException("Project not found"));
    }

    public void deleteProject(Long id) {
        projectRepository.deleteById(id);
    }

    public Project getProjectByName(String name) {
        return projectRepository.findByName(name);
    }

    public void getProjectByProjectId() {

    }

    public void getProjectByTaskId() {

    }
}
