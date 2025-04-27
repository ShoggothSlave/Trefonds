extends Resource
class_name SlotData

const MAX_STACK_SIZE: int = 99

@export var item_data: ItemData
@export_range(1, MAX_STACK_SIZE) var quantity: int = 1: set = _set_quantity

func _set_quantity(value: int) -> void:
	quantity = value
	if quantity > 1 and not item_data.stockable:
		quantity = 1
