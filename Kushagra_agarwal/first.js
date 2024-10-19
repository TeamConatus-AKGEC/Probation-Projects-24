const addBtn = document.querySelector("#add-button");
const taskList = document.querySelector(".task-list");
const numr = document.querySelector("#nr");
const denr = document.querySelector("#dr");
let count = 0; 
let done = 0 

addBtn.addEventListener("click",addTask)
function addTask(){
    
    const input = document.querySelector("#input");
    const taskValue = input.value;

    if (taskValue === ""){
        alert("please enter a task");
    }
    else{
        denr.textContent = ++count;
        // console.log(count);
        
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
        // listItem.appendChild(dltBtn);
        dltBtn.addEventListener("click", function (){
            listItem.remove();
            denr.textContent = --count;
            numr.textContent = --done;
            dltBtn.disabled=true;
        })



        const taskDone = document.createElement("button")
        taskDone.setAttribute("id","done-btn")
        taskDone.textContent = "Done";
        // listItem.appendChild(taskDone)
        taskDone.addEventListener("click", function(){
            taskSpan.style.textDecoration="line-through";
            numr.textContent = ++done;
            taskDone.disabled=true;
        })

        const divBtn = document.createElement("div")
        divBtn.setAttribute("id","button-container")
        divBtn.append(dltBtn,taskDone);
        listItem.appendChild(divBtn)

    }
    input.value = "";

};