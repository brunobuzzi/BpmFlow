other
getOrderedTasksFrom: anArtifactDefinition as: anOrderedCollection
	"The receiver answer <anOrderedCollection> with ordered task from <anArtifactDefinition>.
	It recursively iterate over all out transitions storing each <endArtifact> in <anOrderedCollection>"
	| newArtifacts |

	newArtifacts := anArtifactDefinition outTransitionsCollect: [:each | each endArtifact].

	anArtifactDefinition attachedEvents do: [:eventDefinition | 
		newArtifacts addAll: (eventDefinition outTransitionsCollect: [:each | each endArtifact])].

	newArtifacts := newArtifacts difference: anOrderedCollection.

	anOrderedCollection addAll: (newArtifacts select: [:each | each isTaskDefinition]).

	newArtifacts do: [:each | self getOrderedTasksFrom: each as: anOrderedCollection].

	^anOrderedCollection