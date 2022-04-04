rot += 2;

if start = 1
{
	if global.dark < 1
	{
		global.dark += 0.01;
	}
	else
	{
		if pressed = 1
		{
			start = 0;
			alarm[2] = 1;
		}
	}
}


if alphaPress = 0
{
	canPress = 0;
}
if alphaPress = 1
{
	canPress = 1;
}

if canPress = 0
{
	alphaPress += 0.01;
}
if canPress = 1
{
	alphaPress -= 0.01;
}
