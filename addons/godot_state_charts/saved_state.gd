## This represents the saved state of a state chart (or a part of it).
## It is used to save the state of a state chart to a file and to restore it later.
## It is also used in History states.
class_name SavedState
extends Resource

## The saved states of any active child states
## Key is the name of the child state, value is the SavedState of the child state
@export var child_states: Dictionary = {} 

## The path to the currently pending transition, if any
@export var pending_transition_name: NodePath 

## The remaining time of the active transition, if any
@export var pending_transition_time: float = 0

## History of the state, if this state is a history state, otherwise null
@export var history:SavedState = null