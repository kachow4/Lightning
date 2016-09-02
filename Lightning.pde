int startX = 300;
int startY = 0;
int endX = 300;
int endY = 0;

void setup(){
	background(0);
	strokeWeight(1);	
	size(600,600);
	stars();
}

void draw(){
	strokeWeight(1);
	fill(0);
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

void stars(){
	for(int starX = 0; starX < 610; starX = starX + 20){
		for(int starY = 0; starY < 610; starY = starY + 20){
		stroke(255, 153, 153);	
		strokeWeight(5);
		point(starX, starY);
		}
	}
}