stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);
stage.addEventListener(KeyboardEvent.KEY_UP, keyUpHandler);
stage.addEventListener(Event.ENTER_FRAME, loop);

var leftPressed:Boolean = false;
var rightPressed:Boolean = false;
var upPressed:Boolean = false;
var downPressed:Boolean = false;

var xScrollSpeed:int = 10;
var yScrollSpeed:int = 10;

function keyDownHandler(e:KeyboardEvent):void
{
	if(e.keyCode == Keyboard.LEFT)
	{
		leftPressed = true;
	}
	else if(e.keyCode == Keyboard.RIGHT)
	{
		rightPressed = true;
	}
	else if(e.keyCode == Keyboard.UP)
	{
		upPressed = true;
	}
	else if(e.keyCode == Keyboard.DOWN)
	{
		downPressed = true;
	}
}

function keyUpHandler(e:KeyboardEvent):void
{
	if(e.keyCode == Keyboard.LEFT)
	{
		leftPressed = false;
	}
	else if(e.keyCode == Keyboard.RIGHT)
	{
		rightPresed = false;
	}
	else if(e.keyCode == Keyboard.UP)
	{
		upPressed = false;
	}
	else if(e.keyCode == Keyboard.DOWN)
	{
		downPressed = false;
	}
}

function loop(e:Event):void
{
	if(leftPressed)
	{
		background.x += xScrollSpeed;
	}
	else if(rightPressed)
	{
		background.y -= xScrollSpeed;
	}
	if(upPressed)
	{
		background.y += yScrollSpeed;
	}
	else if(downPressed)
	{
		background.y -= yScrollSpeed;
	}
}
