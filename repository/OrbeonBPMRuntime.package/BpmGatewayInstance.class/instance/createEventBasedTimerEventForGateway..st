other
createEventBasedTimerEventForGateway: aBpmEventDefinition
	"The receiver create a Timer from the event defintion <aBpmEventDefinition>.
	This method is used only with Event Based Gateways where one of the events is a Timer"
	| eventInstance |

	eventInstance := aBpmEventDefinition createInstanceOn: process parentArtifact: self.
	eventInstance trigger: self.

	eventInstance performInitializationOn: process. "the timer is register in <BpmTimerEventMonitor> singleton"
 
	^eventInstance