other
incomingTransitionsAreDone
	"Answer whether or not the receiver has ALL incoming transitions done. Which means that ALL incoming transitions in the definition has been instanciated"
	| inTransitionDefinitions |

	"collect the definitions of all concrete incoming transitions"
	inTransitionDefinitions := inTransitions collect: [:each | each definition]. 

	"all <inTransitions> in the definition of the receiver has been instanciated ?"
	^definition inTransitions allSatisfy: [:each | inTransitionDefinitions includes: each]