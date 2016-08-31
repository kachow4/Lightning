int startX = 300;
int startY = 0;
int endX = 300;
int endY = 0;

void setup(){
	background(0);
	strokeWeight(1);	
	size(600,600);
}

void draw(){
	fill(15, 15, 15);
	ellipse(300, 0, 100, 100);
	stroke((int)(Math.random()*255) + 100,(int)(Math.random()*255) + 100,(int)(Math.random()*255) + 100);
	while(endX < 600){
		endX = startX + (int)(Math.random()*19) - 9;
		endY = startY + (int)(Math.random()*20) + 1;
		line(startX, startY, endX, endY);	
		startX = endX;
		startY = endY;
	}
}

void mousePressed(){
	startX = 300;
	startY = 0;
	endX = ((int)(Math.random()*601));
	endY = 0;
}

