Updating
exceptionBlock: aBlockClosure

	exceptionBlock := aBlockClosure.

	blockSource := (aBlockClosure blockSource size <= 35)  
						ifTrue: [aBlockClosure blockSource] 
						ifFalse: [aBlockClosure blockSource allButFirst: 35]. "remove the inlined text: " "This is source for a block. ^  "