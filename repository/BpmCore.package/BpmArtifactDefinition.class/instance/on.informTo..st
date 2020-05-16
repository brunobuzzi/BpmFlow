inform
on: actionName informTo: aBpmRole
	"The receiver register the role <aBpmRole> to be informed when action <actionName> is performed.
	actionName values: (#creation , #modification, #finalization, #take, #untake , #cancelation)"

	(informTo includesKey: actionName) ifFalse: [informTo at: actionName put: Set new].

	^(informTo at: actionName) add: aBpmRole