search area
searchMatchingMessages
	| processId |

	processId := self searchValueAt: 'id'.

	processId ifNil: [
		searchApplied := false.
		searchResult := #().
		^self.
	].

	processId := Number fromString: processId.

	searchResult := self getCurrentCollection select: {:eachMessage | eachMessage.processId = processId}.

	searchApplied := true.