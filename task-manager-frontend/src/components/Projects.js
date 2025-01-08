import React, { useEffect, useState } from 'react';
import axios from 'axios';

const Projects = () => {
    const [projects, setProjects] = useState([]);

    useEffect(() => {
        axios.get('http://localhost:8080/projects')
            .then(response => {
                setProjects(response.data);
            })
            .catch(error => {
                console.error('Es gab einen Fehler beim Abrufen der Projektdaten:', error);
            });
    }, []);

    return (
        <div>
            <h2>Projekte</h2>
            <ul>
                {projects.map(project => (
                    <li key={project.id}>
                        {project.name} - {project.description} - Erstellungsdatum: {project.createdDate}
                    </li>
                ))}
            </ul>
        </div>
    );
};

export default Projects;

