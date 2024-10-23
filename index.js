const inputBox = document.getElementById("input-box");
const listContainer = document.getElementById("list-container");
function AddTask(){
    if(inputBox.value === ''){
        alert("You must write something!");
    }
    else{
        let li = document.createElement("li");
        li.innerHTML = inputBox.value;
        listContainer.appendChild(li);
        let span = document.createElement("span");
        span.innerHTML = "\u00d7";
        li.appendChild(span);
    }
    inputBox.value = "";
    saveData();
}
listContainer.addEventListener("click", function(e){
    if(e.target.tagName === "LI"){
        e.target.classList.toggle("checked");
        saveData();
    }
    else if(e.target.tagName === "SPAN"){
        e.target.parentElement.remove();
        saveData();
    }
},false);
function saveData(){
    localStorage.setItem("data", listContainer.innerHTML);
}
function showTask(){
    listContainer.innerHTML = localStorage.getItem("data");
}
showTask();
let img2 = document.getElementById("img2");
img2.onclick = function(){
    document.body.classList.toggle("dark-theme");
    if(document.body.classList.contains("dark-theme")){
        img2.src = "image/sun.png";
    }
    else{
        img2.src = "image/moon.png";
    }
}
let time = document.getElementById("current-time");
setInterval(() =>{
    let dt = new Date();
    time.innerHTML = dt.toLocaleDateString()+ " " + dt.toLocaleTimeString();
},1000)

