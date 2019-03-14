other
outTransitions
	"The receiver answer a collection with all out transitions which includes <endArtifact> out transitions and <attachedEvents> out transitions"
	| attachedTransitions |

	attachedTransitions := OrderedCollection new.

	transition endArtifact hasAttachedEvents 
	ifTrue: [transition endArtifact attachedEvents do: [:event | attachedTransitions addAll: event outTransitions] ].
	
	^transition endArtifact outTransitions, attachedTransitions