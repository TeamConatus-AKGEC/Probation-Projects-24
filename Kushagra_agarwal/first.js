const addBtn = document.querySelector("#add-button");
const taskList = document.querySelector(".task-list");


addBtn.addEventListener("click",addTask)
function addTask(){
    const input = document.querySelector("#input");
    const taskValue = input.value;

    if (taskValue === ""){
        alert("please enter a task");
    }
    else{
        const listItem = document.createElement("li")
        const taskSpan = document.createElement("span")

        taskSpan.textContent = taskValue
        listItem.appendChild(taskSpan)
        const ul = document.querySelector(".task-list")
        ul.appendChild(listItem);



        const dltBtn = document.createElement("button")
        dltBtn.setAttribute("id","delete-btn")
        dltBtn.textContent = "Delete";
        // dltBtn.style.marginLeft = "10px";
        listItem.appendChild(dltBtn);
        dltBtn.addEventListener("click", function (){
            listItem.remove();
        })



        const taskDone = document.createElement("button")
        taskDone.setAttribute("id","done-btn")
        taskDone.textContent = "Done";
        listItem.appendChild(taskDone)
        taskDone.addEventListener("click", function(){
            taskSpan.style.textDecoration="line-through";
        })

    }
    input.value = "";

};