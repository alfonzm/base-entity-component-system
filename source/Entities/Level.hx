package entities;

import openfl.Assets;
import components.*;
import flixel.FlxG;
import flixel.tile.FlxTilemap;

class Level
{
    public var map:FlxTilemap;

    public function new()
    {
        map = new FlxTilemap();
        map.loadMap(Assets.getText("assets/data/" + Reg.level + ".csv"), Reg.TILESET, Reg.T_WIDTH, Reg.T_HEIGHT,0,0,0);
    }
}