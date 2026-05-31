extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
    if body.is_in_group("Player"):
        print("You died!")
        timer.start() # Start the timer to handle any post-death events, such as resetting the level or showing a game over screen.


func _on_timer_timeout() -> void:
    get_tree().reload_current_scene() # Reload the current scene to reset the game after the player has died.
