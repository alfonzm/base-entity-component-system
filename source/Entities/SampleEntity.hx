package entities;

import components.*;
import flixel.FlxG;

/**
 *  A sample entity with health, rigidbody and input components.
 *  Basically, a "player" entity
 */
class SampleEntity extends Entity
{
    public function new()
    {
        super();

        addComponent(new HealthComponent());
        addComponent(new RigidbodyComponent());
        addComponent(new InputComponent());

        getComponent("HealthComponent").set(["hp" => 1]);
        getComponent("RigidbodyComponent").set([]);
        getComponent("InputComponent").set([]);

        makeGraphic(Reg.T_WIDTH, Reg.T_HEIGHT, 0xffffffff);
    }

    override public function update():Void
    {
        super.update();
    }
}