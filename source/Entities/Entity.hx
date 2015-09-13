package entities;

import flixel.FlxBasic;
import flixel.FlxSprite;
import components.*;


class Entity extends FlxSprite
{
    public var components:Map<String, Component>;

    public function new() {
        super();
        components = new Map<String, Component>();
    }

    override public function update():Void
    {

        for(key in components.keys()){
            components[key].update();
        }
        super.update();
    }

    public function addComponent(Component:Component):Bool{
        if(!components.exists(Component.name)){
            Component.entity = this;

            components[Component.name] = Component;

            return true;
        }

        trace("Component already exists");
        return false;
    }

    public function getComponent(Component:String):Dynamic{
        return components[Component];
    }

    public function removeComponent(ComponentName:String){
        components.remove(ComponentName);
    }

    override public function destroy():Void {
        super.destroy();
    }
}