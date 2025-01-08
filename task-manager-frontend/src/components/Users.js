import React, { useEffect, useState } from 'react';
import axios from 'axios';

const Users = () => {
    const [users, setUsers] = useState([]);

    useEffect(() => {
        axios.get('http://localhost:8080/users')
            .then(response => {
                setUsers(response.data);
            })
            .catch(error => {
                console.error('Es gab einen Fehler beim Abrufen der Benutzerdaten:', error);
            });
    }, []);

    return (
        <div>
            <h2>Benutzer</h2>
            <ul>
                {users.map(user => (
                    <li key={user.id}>
                        {user.username} - {user.email} - {user.role}
                    </li>
                ))}
            </ul>
        </div>
    );
};

export default Users;
