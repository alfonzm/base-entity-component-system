package components;

class HealthComponent extends Component
{
	var hp:Int;

    public function new() {
    	super();
    }

    override public function update():Void {
    	super.update();
    }

    override public function set(Params:Map<String, Dynamic>):Void{
    	hp = Params["hp"];
    }

    public function takeDamage(Damage:Int):Void{
    	hp -= Damage;

    	if(hp <= 0){
    		die();
    	}
    }

    public function die():Void{
    	entity.kill();
    }
}