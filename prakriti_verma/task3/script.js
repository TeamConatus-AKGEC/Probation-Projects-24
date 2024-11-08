const canvas = document.getElementById("game.area");
const ctx = canvas.getContext('2d');
canvas.width = 900;
canvas.height = 600;

const cellSize = 100; //size of each cell
const cellGap = 3;
const resources = 200; //initial value of the resources available to the player
const plant = []; //for collection of plants
const zombie = [];
let frame = 0;

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
        ctx.fillStyle = 'light green'; //color of plant
        ctx.fillRect(this.x, this.y, this.width, this.height);
        ctx.font = '30px Arial';
        ctx.fillText(Math.floor(this.health), this.x , this.y);
        ctx.fillStyle = 'gold'; //color of text inside
    }
}
canvas.addEventListener('click', function(){
    const positionX = mouse.x - (mouse.x % cellSize);
    const positionY = mouse.y - (mouse.y % cellSize);
    
    //To prevent setting a plant in the resource area
    if(positionY < cellSize)return;
    //to prevent stacking of plants on the same cell
    for(let i = 0 ; i < plant.length ; i++)
    {
        if(plant[i].x === positionX && plant[i].y === positionY)
            return;
    }

    let plantCost = 60;

    //creation of an empty plant object based on resources available
    if(resources >= plantCost){
        plant.push(new plants(positionX, positionY));
        resources -= plantCost; 
    }
})

function handlePlants(){
    for(let i = 0 ; i < plant.length ; i++){
        plant[i].draw();
    }
}

class zombies{
    constructor(verticalPos){
        this.x = canvas.width;
        this.y = verticalPos;
        this.width = cellSize;
        this.height = cellSize;
        this.speed = Math.random()* 0.2 + 0.4;
        this.move = this.speed;
        this.health = 90; //current health of a zombie
        this.maxHealth = 90; //to keep track of initial health of every zombie
    }
    update(){
        this.x -= this.movement;
    }
    draw(){
        ctx.fillStyle = 'brown';
        ctx.fillRect(this.x, this.y, this.width, this.height);
        ctx.font = '30px Arial';
        ctx.fillText(Math.floor(this.health), 20, 55);
        ctx.fillStyle = 'greenyellow';
    }
}

function handleZombies(){
    for(let i = 0 ; i < zombie.length ; i++)
        {
            zombie[i].update;
            zombie[i].draw;
        }
        if(frame % 100 === 0)
        {
            let verticalPos = Math.floor(Math.random() * 5 + 1) * cellSize; //for random selection of row for zombie movement
            zombie.push(new zombies(verticalPos));
        }
}

function gameStatus(){
    fillStyle = 'gold';
    ctx.font = '30px Arial';
    ctx.fillText(`Power: ${resources}`, 20 , 55);
}

function animate(){
    handlePlants();
    gameStatus();
    frame++;
}
animate();
