package;

import flixel.util.FlxSave;

class Reg
{
	public static var levels:Array<Dynamic> = [];
	public static var level:Int = 1;
	public static var scores:Array<Dynamic> = [];
	public static var score:Int = 0;
	public static var saves:Array<FlxSave> = [];

	public inline static var GRAVITY:Float = 2.4;

	// Files
	public inline static var TILESET:String = "assets/images/tiles.png";

	public inline static var T_WIDTH:Int = 16;
	public inline static var T_HEIGHT:Int = 16;
}