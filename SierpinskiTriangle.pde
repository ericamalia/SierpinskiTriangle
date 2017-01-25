public void setup()
{
	size(300,300);
}

int x=20; 

public void draw()
{
 	sierpinski(x, 180, 100);
}
int limit= 20;
public void mouseDragged()//optional
{
	limit ++;
}
public void sierpinski(int x, int y, int len) 
{
	
	if(len <= limit){
		fill(70, 178, 134);
		triangle(x, y, x+ len/2, y-len, x+len, y);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x +len/2, y, len/2);
		sierpinski( x+ len/4, y+ len/2, len/2);
	}

}