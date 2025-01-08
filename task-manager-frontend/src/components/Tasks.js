import React, { useEffect, useState } from 'react';
import axios from 'axios';

const Tasks = () => {
    const [tasks, setTasks] = useState([]);

    useEffect(() => {
        axios.get('http://localhost:8080/tasks')
            .then(response => {
                setTasks(response.data);
            })
            .catch(error => {
                console.error('Es gab einen Fehler beim Abrufen der Aufgaben:', error);
            });
    }, []);

    return (
        <div>
            <h2>Aufgaben</h2>
            <ul>
                {tasks.map(task => (
                    <li key={task.id}>
                        {task.title} - {task.description} - Status: {task.status}
                    </li>
                ))}
            </ul>
        </div>
    );
};

export default Tasks;
