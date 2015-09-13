package components;

import flixel.FlxSprite;

// Requires Sprite component
class RigidbodyComponent extends Component
{
    // Physics stuff
    public var maxSpeedX:Int = 100; // actual movespeed. change this if you want player to move faster/slower
    public var maxSpeedY:Int = 220;
    public var movespeed:Float = 800; // used to set velocity when pressing move keys. normally 10-50 times the maxSpeedX, depending on if you want friction

    public function new() {
        super();
    }

    override public function update():Void {
        super.update();
    }

    override public function set(Params:Map<String, Dynamic>):Void{
        entity.acceleration.y = Reg.GRAVITY * maxSpeedY;

        entity.maxVelocity.set(maxSpeedX, maxSpeedY);
        entity.drag.x = movespeed;
    }
}