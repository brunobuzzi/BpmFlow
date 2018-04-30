inform
on: actionName informTo: aBpmRole
	"The receiver register the role <aBpmRole> to be informed when action <actionName> is performed.
	actionName values: (#creation , #modification, #finalization)"

	(informTo includesKey: aBpmRole) ifFalse: [informTo at: aBpmRole put: Set new].

	^(informTo at: aBpmRole) add: actionName