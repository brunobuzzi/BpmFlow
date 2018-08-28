search area
searchMatchingMessages
	| processId |

	processId := self searchValueAt: 'id'.

	processId ifNil: [
		searchApplied := false.
		searchResult := #().
		^self.
	].

	processId := [Number fromString: processId] on: Error do: [:ex | 0].

	searchResult := self getCurrentCollection select: {:eachMessage | eachMessage.processId = processId}.

	searchApplied := true.