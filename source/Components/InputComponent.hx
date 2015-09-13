package components;

import flixel.FlxSprite;
import flixel.FlxG;

// Requires rigidbody component
class InputComponent extends Component
{
    var rigidbody:RigidbodyComponent;

    public function new() {
        super();
    }

    override public function update():Void {
        super.update();

        if(FlxG.keys.pressed.LEFT){
            entity.acceleration.x = -rigidbody.movespeed;
        } else if(FlxG.keys.pressed.RIGHT){
            entity.acceleration.x = rigidbody.movespeed;
        } else {
            entity.acceleration.x = 0;
        }
    }

    override public function set(Params:Map<String, Dynamic>):Void{
        rigidbody = entity.getComponent("RigidbodyComponent");
    }
}