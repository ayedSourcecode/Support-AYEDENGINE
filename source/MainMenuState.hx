package;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.system.debug.Window;
import flixel.text.FlxText;
import flixel.ui.FlxBitmapTextButton;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

// import js.html.File;
class MainMenuState extends FlxState
{
	var uiCamera:FlxCamera;
	var bg:FlxSprite;
	var about:FlxText;
	var yes:FlxButton;
	var no:FlxButton;

	override public function create()
	{
		uiCamera = new FlxCamera(0, 0, 1390, 720);
		uiCamera.bgColor = FlxColor.TRANSPARENT;

		bg = new FlxSprite(0, 0);
		bg.makeGraphic(-100, 300, FlxColor.BLUE, true);
		bg.screenCenter();
		// bg.color = FlxColor.BLUE;
		add(bg);

		about = new FlxText(0, 0, 0, 'Are you wanna support engine', 32);
		about.color = FlxColor.RED;
		add(about);

		yes = new FlxButton(0, 0, "Yes", ClickContinue);
		yes.color = FlxColor.CYAN;
		yes.screenCenter();
		add(yes);

		no = new FlxButton(0, 300, 'not', ClickExit);
		no.screenCenter(X);
		no.color = FlxColor.RED;
		add(no);

		super.create();
	}

	private function ClickContinue()
	{
		// exit motherfucker
		// Sys.exit(1);
		FlxG.switchState(new MainMenuState());
	}

	public function ClickExit()
	{
		// Sys.time(10);
		Sys.exit(1);
	}
}
