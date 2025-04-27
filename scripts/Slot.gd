extends PanelContainer

@onready var texture_slot: TextureRect = $slot_margin/texture_slot
@onready var quantity_label: Label = $quantity_label

func _set_slot_data(slot_data: SlotData) -> void:
	var item_data = slot_data.item_data
	texture_slot.texture = item_data.texture
	tooltip_text = "%s\n%s\n%s\n%s" % [item_data.name, item_data.description, item_data.item_type, item_data.item_effect]
	
	if slot_data.quantity > 1:
		quantity_label.text = "%s" % slot_data.quantity
		quantity_label.show()
