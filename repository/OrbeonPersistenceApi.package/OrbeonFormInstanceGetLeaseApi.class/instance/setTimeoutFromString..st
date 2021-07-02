other
setTimeoutFromString: stringTimeout
	"<stringTimeout> format: Second-600 "
	| stringSeconds |

	stringSeconds := (stringTimeout subStrings: '-') last.

	[timeout := Number fromString: stringSeconds] on: Error do: [TimeoutBadFormatException signal: ('[', stringTimeout ,'] is not a valid timeout value')].

	^timeout