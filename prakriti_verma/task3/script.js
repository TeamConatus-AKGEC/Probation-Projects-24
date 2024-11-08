const canvas = document.getElementById("game.area");
const ctx = canvas.getContext('2d');
canvas.width = 900;
canvas.height = 600;

const cellSize = 100; //size of each cell
const cellGap = 3;
const resources = 200; //initial value of the resources available to the player
const plant = []; //for collection of plants

//to keep track of movement of mouse over the grid
const mouse = {
    x: undefined,
    y: undefined,
}

class plants{
    constructor(x, y){
        this.x = x;
        this.y = y;
        this.height = cellSize;
        this.width = cellSize;
        this.shooting = false;
        this.health = 100;
        this.projectiles = [];
        this.timer = 0;
    }
    draw(){
        ctx.fillStyle = 'light green';
        ctx.fillRect(this.x, this.y, this.width, this.height);
        ctx.font = '20px Arial';
        ctx.fillText(Math.floor(this.health), this.x, this.y);
    }
}
canvas.addEventListener('click', function(){
    const positionX = mouse.x - (mouse.x % cellSize);
    const positionY = mouse.y - (mouse.y % cellSize);
    
    //To prevent setting a plant in the resource area
    if(positionY < cellSize)return;
    let plantCost = 60;

    //creation of an empty plant object based on resources available
    if(resources > plantCost){
        plant.push(new plants(positionX, positionY));
        resources -= plantCost; 
    }
})
