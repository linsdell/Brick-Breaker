// Create a space in memory for many Mover objects
Mover movers[] = new Mover[25];
Brick bricks[] = new Brick[10];

float hor[] = {30, 160, 290, 420, 550};
float ver[] = {30, 60};

// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);

  // Actually make an instance of a Mover
  for (int i = 0; i < movers.length; i+=1) {
    movers[i] = new Mover(); 
  }
  
    for(int j = 0; j < hor.length; j++){
      for(int k = 0; k < ver.length; k++){
        for (int i = 0; i < bricks.length; i+=1) {
          bricks[i] = new Brick(hor[j],ver[k]); 
  }
  }
}
  
  
}

// Runs forever
void draw() {

  // Clear the background
  background(255);

  // Make the mover move!
  for (int i = 0; i < movers.length; i+=1) {
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
  for (int i = 0; i < bricks.length; i+=1) {
    bricks[i].create();
  }
}