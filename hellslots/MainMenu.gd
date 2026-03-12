extends Node

# Экспортируем переменные, чтобы они появились в инспекторе
@export var button_to_connect: Button  # Кнопка, которую можно выбрать в инспекторе
@export var scene_to_load: PackedScene  # Сцена для загрузки (перетащите сцену сюда)

func _ready():
	# Проверяем, выбрана ли кнопка в инспекторе
	if button_to_connect:
		# Подключаем сигнал нажатия кнопки
		button_to_connect.pressed.connect(_on_button_pressed)
	else:
		# Если кнопка не выбрана, выводим предупреждение
		print("Ошибка: кнопка не выбрана в инспекторе!")

func _on_button_pressed():
	# Проверяем, выбрана ли сцена для загрузки
	if scene_to_load:
		# Меняем сцену на выбранную
		get_tree().change_scene_to_packed(scene_to_load)
	else:
		# Если сцена не выбрана, выводим предупреждение
		print("Ошибка: сцена для загрузки не выбрана в инспекторе!")
