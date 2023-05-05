package;

import flixel.FlxBasic.FlxType;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxBar;
import flixel.ui.FlxButton;

class MainMenuTwo extends FlxState
{
	var bg:FlxSprite;
	var type:FlxType;
	var support:FlxButton;

	override public function create()
	{
		if (FlxG.sound.music == null) // don't restart the music if it's already playing
		{
			// 	FlxG.sound.playMusic(AssetPaths.MusicApp__ogg, 1, true);
		}

		super.create();
	}
}
