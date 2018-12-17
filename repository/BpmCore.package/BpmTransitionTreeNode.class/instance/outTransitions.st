other
outTransitions
	| attachedTransitions |

	attachedTransitions := Set new.

	transition endArtifact hasAttachedEvents 
	ifTrue: [transition endArtifact do: [:event | attachedTransitions addAll: event outTransitions] ].
	
	^transition endArtifact outTransitions, attachedTransitions