other
setLoop: aStringBlock

	loopCardinalityBock := BpmBlockCode newFromBlock: aStringBlock for: self.
	loopCardinalityBock resultClass: Integer.