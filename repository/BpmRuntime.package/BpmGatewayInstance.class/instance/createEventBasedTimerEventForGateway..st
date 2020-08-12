other
createEventBasedTimerEventForGateway: aBpmEventDefinition
	"The receiver create a Timer from the event defintion <aBpmEventDefinition>.
	This method is used only with Event Based Gateways where one of the events is a Timer"
	| eventInstance eventTransitionDefinition transitionInstance |

	eventTransitionDefinition := definition outTransitionsDetect: [:each | each endNodeIsIdenticalTo: aBpmEventDefinition] ifNone: [NoTransitionException signal: 'No Transition to Timer found'].

	transitionInstance := process createNewTransition: eventTransitionDefinition from: self.

	transitionInstance endArtifactDo: [:endArtifact | endArtifact trigger: self.
		eventInstance := endArtifact].
 
	^eventInstance