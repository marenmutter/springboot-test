import React from 'react';
import './App.css';
import Users from './components/Users';
import Tasks from './components/Tasks';
import Projects from './components/Projects';

function App() {
  return (
      <div className="App">
        <h1>Task Manager Frontend</h1>
        <Users />
        <Tasks />
        <Projects />
      </div>
  );
}

export default App;
