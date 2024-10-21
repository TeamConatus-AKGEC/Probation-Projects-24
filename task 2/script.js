document.getElementById('addButton').addEventListener('click', addTask);
document.getElementById('taskInput').addEventListener('keypress', function(event) {
    if (event.key === 'Enter') {
        addTask();
    }
});

function addTask() {
    const taskInput = document.getElementById('taskInput');
    const taskText = taskInput.value.trim();
    
    if (taskText !== '') {
        const li = document.createElement('li');
        li.textContent = taskText;
        
        li.addEventListener('click', function() {
            li.classList.toggle('completed');
        });
        
        const deleteButton = document.createElement('button');
        deleteButton.textContent = 'Delete';
        deleteButton.classList.add('delete-button');
        deleteButton.addEventListener('click', function() {
            li.remove();
        });
        
        li.appendChild(deleteButton);
        document.getElementById('taskList').appendChild(li);
        taskInput.value = '';
    }
}
