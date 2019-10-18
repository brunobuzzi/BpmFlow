tests
testSubProcessTypes

	self assert: self getEmbeddedSubProcess isEmbedded.

	self deny: self getReusableSubProcess isEmbedded.