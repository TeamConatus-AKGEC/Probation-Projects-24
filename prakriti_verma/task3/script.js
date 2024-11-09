const canvas = document.getElementById("game.area");
const ctx = canvas.getContext('2d');
canvas.width = 900;
canvas.height = 600;

const cellSize = 100; //size of each cell
const cellGap = 3;
const resources = 200; //initial value of the resources available to the player
const plant = []; //for collection of plants
const zombie = [];
const interval = 400;
let frame = 0;
let gameOver = false;

//to keep track of movement of mouse over the grid
const mouse = {
    x: undefined,
    y: undefined,
}

class plants{ //template for creation of plants
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
canvas.addEventListener('click', function(){ //event of setting plants in the game grid
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
        for(let j = 0 ; j < zombie.length ; j++){
            if(collision(plant[j], zombie[j])){ //when plant and zombie are next to each other 
                zombie[j].move = 0;
                plant[i].health -= 0.2;
            }
            if(plant[i] && plant[i].health <= 0)
            {
                plant.splice(i, 1); //removal of the plant from array after being eaten by zombie
                i--;
                zombie[j].move = zombie[j].speed;
            }
        }     
    }
}

class zombies{ //template for creation of zombies
    constructor(verticalPos){
        this.x = canvas.width;
        this.y = verticalPos;
        this.width = cellSize;
        this.height = cellSize;
        this.speed = Math.random()* 0.2 + 0.4; //a random speed between 0.4 and 0.6
        this.move = this.speed;
        this.health = 90; //current health of a zombie
        this.maxHealth = 90; //to keep track of initial health of every zombie
    }
    update(){ //to update the moving state of the zombie
        this.x -= this.move; //modification in the position of zombie
    }
    draw(){ //to render the zombie on the canvas
        ctx.fillStyle = 'brown';
        ctx.fillRect(this.x, this.y, this.width, this.height);
        ctx.font = '30px Arial';
        ctx.fillText(Math.floor(this.health), 20, 55);
        ctx.fillStyle = 'green yellow';
    }
}

function handleZombies(){
    for(let i = 0 ; i < zombie.length ; i++)
    {
        {
            zombie[i].update;
            zombie[i].draw;
            if(zombie[i].x < 0) gameOver = true
        }
        if(frame % interval === 0) //new zombie will be added after every interval
        {
            let verticalPos = Math.floor(Math.random() * 5 + 1) * cellSize; 
            //for random selection of row for zombie movement
            zombie.push(new zombies(verticalPos));
        }
        if(interval > 120) interval -= 100;
    }
}

function gameStatus(){
    fillStyle = 'green yellow';
    ctx.font = '30px Arial';
    ctx.fillText(`Power: ${resources}`, 20 , 55);
    if(gameOver)
    {
        ctx.fillStyle = 'black';
        ctx.font = '50px Arial';
        ctx.fillText('GAME OVER', 150, 330);
    }
}

function animate(){
    handlePlants();
    gameStatus();
    frame++;
    if(!gameOver) requestAnimationFrame(animate);
}
animate();
