public void setup()
{
	size(800,800);
	
}


int x=20; 
int length =50;
public void draw()
{
    background(0);
 	sierpinski(x, 40, length);
}
int limit= 20;
public void mouseDragged()//optional
{
	//limit+=2;
	length++;
	//background(0);
}
public void mouseClicked(){
	redraw();
}
public void sierpinski(int x, int y, int len) 
{
	int one= (int)(Math.random()*265);
	int two= (int)(Math.random()*265);
	stroke(one, two, 170);

	if(len <= limit){
		
		noFill();
		strokeWeight(3);
		triangle(x, y, x+ len/2, y-len, x+len, y);
	}
	else{
		int less= x-1; 

		sierpinski(less, y, len/2);
		sierpinski(less +len/2, y, len/2);
		sierpinski( less+ len/4, y+ len/2, len/2);
	}

}