package components;

import flixel.FlxSprite;

class PlayerComponent extends Component
{
    var sprite:FlxSprite;

    public function new() {
        super();
    }

    override public function update():Void {
        super.update();
    }

    override public function set(Params:Map<String, Dynamic>):Void{
        sprite = entity.getComponent("SpriteComponent").sprite;

        sprite.acceleration.y = Reg.GRAVITY * maxSpeedY;

        sprite.maxVelocity.set(maxSpeedX, maxSpeedY);
        sprite.drag.x = movespeed;
    }
}