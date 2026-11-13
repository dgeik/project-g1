extends BaseCreature
class_name Enemy

@export var hp : int = 0

func take_damage(damage : int) -> void:
	hp -= damage
