other
doIt
	| message |

	message := self createExternalMessage.

	self setValuesFromBodyTo: message.

	[message send] on: Exception do: [:ex | ^(BpmProcessMessageException newWithErrorMessage: ex printString) signal]