## This represents the saved state of a state chart (or a part of it).
## It is used to save the state of a state chart to a file and to restore it later.
## It is also used in History states.
class_name GDSSavedState
extends Resource

## The saved states of any active child states
## Key is the name of the child state, value is the GDSSavedState of the child state
@export var child_states: Dictionary = {} 

## The path to the currently pending transition, if any
@export var pending_transition_name: NodePath 

## The remaining time of the active transition, if any
@export var pending_transition_time: float = 0

## History of the state, if this state is a history state, otherwise null
@export var history:GDSSavedState = null


## Adds the given substate to this saved state
func add_substate(state:GDSState, saved_state:GDSSavedState):
	child_states[state.name] = saved_state

## Returns the saved state of the given substate, or null if it does not exist
func get_substate_or_null(state:GDSState) -> GDSSavedState:
	return child_states.get(state.name)

