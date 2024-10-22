let txt = document.querySelector('.txt');
let list = document.querySelector('.list');

txt.addEventListener("keyup", function(event){
    if(event.key == "Enter"){
        addItem(this.value)
        this.value = ""
    }
})

let addItem = (txt) => {
    let listItem = document.createElement("li");
    listItem.innerHTML = `${txt}<i></i>`;

    list.appendChild(listItem);
}