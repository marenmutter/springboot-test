package com.example.taskmanager.controller;

import com.example.taskmanager.dto.ProjectDTO;
import com.example.taskmanager.model.Project;
import com.example.taskmanager.service.ProjectService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/projects")
public class ProjectController {

    @Autowired
    private ProjectService projectService;

    @PostMapping
    public ResponseEntity<ProjectDTO> createProject(@Valid @RequestBody ProjectDTO projectDTO) {
        Project project = projectService.createProject(projectDTO);
        ProjectDTO createdProjectDTO = mapToDTO(project);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdProjectDTO);
    }

    @GetMapping
    public List<Project> getAllProjects() {
        return projectService.findAll(Pageable.unpaged()).getContent();
    }

    @GetMapping("/{id}")
    public ProjectDTO getProjectById(@PathVariable Long id) {
        Project project = projectService.findById(id);
        return mapToDTO(project);
    }

    @PutMapping("/{id}")
    public Project updateProject(@PathVariable Long id, @Valid @RequestBody ProjectDTO projectDTO) {
        return projectService.updateProject(id, projectDTO);
    }

    @DeleteMapping("/{id}")
    public void deleteProject(@PathVariable Long id) {
        projectService.deleteProject(id);
    }

    private ProjectDTO mapToDTO(Project project) {
        ProjectDTO dto = new ProjectDTO();
        dto.setName(project.getName());
        dto.setDescription(project.getDescription());
        //dto.setTasks(project.getTasks());
        dto.setCreatedDate(project.getCreatedDate());
        return dto;
    }

}
