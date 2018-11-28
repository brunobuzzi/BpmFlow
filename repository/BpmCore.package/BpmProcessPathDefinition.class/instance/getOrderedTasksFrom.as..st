other
getOrderedTasksFrom: anArtifactDefinition as: anOrderedCollection
	| newArtifacts |

	newArtifacts := anArtifactDefinition outTransitions collect: [:each | each endArtifact].

	anArtifactDefinition hasAttachedEvents ifTrue: [
		anArtifactDefinition attachedEvents do: [:eventDefinition | 
			newArtifacts  addAll: (eventDefinition outTransitions collect: [:each | each endArtifact])]].

	newArtifacts := newArtifacts difference: anOrderedCollection.

	anOrderedCollection addAll: (newArtifacts select: [:each | each isTaskDefinition]).

	newArtifacts do: [:each | self getOrderedTasksFrom: each as: anOrderedCollection].

	^anOrderedCollection