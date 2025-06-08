extends Node

@export_category("Variáveis do tipo String")
@export var HelloWorld: String

@export_category("Variáveis do tipo Int")
@export var Age: int = 0

@export_category("Variávels do tipo Boolean")
@export var IsTrue: bool = false

@export_category("Variáveis do tipo Float")
@export var IsFloat: float = 0.0


@export_category("Objetos")
@export var childNode1: Node
@export var childNode2: Node

var hp: int = 10
var dmg: int = 1

var list: Array = []

func _ready() -> void:
	list = [childNode1, childNode2]
	print(list)

func _process(delta) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("atacar"):
		if hp == 0:
			print("Tá morto, já era!")
			return
		hp -= dmg
		print("HP atual:", hp)
	pass
