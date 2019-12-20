other
printSatisfyingCodeBlock

	satisfyingBlock ifNil: [^'nil'].

	(satisfyingBlock blockSource size <= 35) ifTrue: [^satisfyingBlock blockSource].

	^satisfyingBlock blockSource allButFirst: 35 "remove the inlined text: " "This is source for a block. ^  "