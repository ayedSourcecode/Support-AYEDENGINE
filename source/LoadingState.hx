package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import openfl.sensors.Accelerometer;

class LoadingState extends FlxState
{
	var loading:FlxText;

	override public function create()
	{
		new FlxTimer().start(10.0, myCallback, 3);

		loading = new FlxText(0, 0, 0, '', 21);
		loading.text = "LOADING . . .";
		loading.color = FlxColor.CYAN;
		loading.screenCenter();
		add(loading);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	function myCallback(timer:FlxTimer):Void
	{
		FlxG.switchState(new MainMenuState());
		// #else
		{
			FlxG.switchState(new MainMenuTwo());
		}
		// #end
	}
}
