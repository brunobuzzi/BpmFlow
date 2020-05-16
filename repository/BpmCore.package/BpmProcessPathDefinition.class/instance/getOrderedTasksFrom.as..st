other
getOrderedTasksFrom: anArtifactDefinition as: anOrderedCollection
	"The receiver answer <anOrderedCollection> with ordered task from <anArtifactDefinition>.
	It recursively iterate over all out transitions storing each <endArtifact> in <anOrderedCollection>"
	| newArtifacts |

	newArtifacts := anArtifactDefinition outTransitions collect: [:each | each endArtifact].

	anArtifactDefinition attachedEvents do: [:eventDefinition | 
		newArtifacts addAll: (eventDefinition outTransitions collect: [:each | each endArtifact])].

	newArtifacts := newArtifacts difference: anOrderedCollection.

	anOrderedCollection addAll: (newArtifacts select: [:each | each isTaskDefinition]).

	newArtifacts do: [:each | self getOrderedTasksFrom: each as: anOrderedCollection].

	^anOrderedCollection