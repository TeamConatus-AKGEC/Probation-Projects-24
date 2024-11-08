const canvas = document.getElementById("game.area");
const ctx = canvas.getContext('2d');
canvas.width = 900;
canvas.height = 600;

const cellSize = 100; //size of each cell
const cellGap = 3;

const plant = []; //for collection of plants
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
}
