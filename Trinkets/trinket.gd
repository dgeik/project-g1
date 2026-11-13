class_name BaseTrinket
extends RefCounted

var id: String = ""

func _init(trinket_id: String) -> void:
	id = trinket_id

func equip() -> void:
	var target : Dictionary = G.player.stats
	if not G.trinketsData.has(id):
		return
	
	var modifiers: Dictionary = G.trinketsData[id].get("modifiers", {})
	for stat in modifiers:
		if target.has(stat):
			target[stat] += modifiers[stat] # Изменяем значение в G.player / G.enemy

func unequip() -> void:
	var target : Dictionary = G.player.stats
	if not G.trinketsData.has(id):
		return
		
	var modifiers: Dictionary = G.trinketsData[id].get("modifiers", {})
	for stat in modifiers:
		if target.has(stat):
			target[stat] -= modifiers[stat] # Откатываем значение в G.player / G.enemy

func process_active(context: Dictionary) -> void:
	pass
