other
doIt
	"The receiver send a message to process named <processName> in application named <appName> at gateway event named <gatewayName> for event named <eventName>.
	The process id or values to identify the target processes and the values to set in target processes are in the body"
	| message |

	message := self createExternalMessage.

	self setValuesFromBodyTo: message.

	[message send] on: Exception do: [:ex | ^(BpmProcessMessageException newWithErrorMessage: ex printString) signal]