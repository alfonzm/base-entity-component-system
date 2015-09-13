package components;

import entities.*;

class Component
{
    public var entity:Entity;
    public var name:String = "Component";

    public function new() {
        // components.ClassName
        name = Type.getClassName(Type.getClass(this));

        // removes "components", returns ClassName
        name = name.substr(11,name.length);
    }

    public function update():Void {
    }

    public function destroy():Void {
    }

    public function set(Params:Map<String, Dynamic>):Void{
    }
}