class Bullet extends Floater
{
	Bullet(SpaceShip nigel)
	{
		myCenterX = nigel.getX();
		myCenterY = nigel.getY();
		myPointDirection = nigel.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + nigel.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + nigel.getDirectionY();
	}
	public void show()
	{
		
		stroke(255,255,255);
		ellipse((int)myCenterX,(int)myCenterY,3,3);
	}
	public void move()
	{
		myCenterX+=myDirectionX;
		myCenterY+=myDirectionY;
	}
	public void setX(int x){myCenterX = x;}  
  	public int getX(){return (int)myCenterX;}   
  	public void setY(int y){myCenterY = y;}   
  	public int getY(){return (int)myCenterY;}   
  	public void setDirectionX(double x){myDirectionX = x;}   
  	public double getDirectionX(){return myDirectionX;}   
  	public void setDirectionY(double y){myDirectionY = y;}   
  	public double getDirectionY(){return myDirectionY;}   
  	public void setPointDirection(int degrees){myPointDirection = degrees;}   
  	public double getPointDirection(){return myPointDirection;} 
}