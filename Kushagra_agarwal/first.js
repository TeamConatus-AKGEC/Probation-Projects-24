const addBtn = document.querySelector("#add-button");
const taskList = document.querySelector(".task-list");


addBtn.addEventListener("click",addTask)
function addTask(){
    const input = document.querySelector("#input")
    const taskValue = input.value;
    if (taskValue === ""){
        alert("please enter a task");
    }
    else{
        const listItem = document.createElement("li")
        listItem.textContent = taskValue
        const ul = document.querySelector(".task-list")
        ul.appendChild(listItem);
    }
};