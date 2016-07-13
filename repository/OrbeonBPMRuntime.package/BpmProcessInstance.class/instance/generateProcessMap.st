xpdl
generateProcessMap
	"The receiver generate an XML String which is a XPLD file.
	This file must be imported as XPDL in Bizagi and it shows the execution path of the receiver.
	Map executed transitions with XML nodes"
	| xmlDocument executedNodes transitionsNodes |

	xmlDocument := XMLDOMParser parse: definition xmlString.

	executedNodes := OrderedCollection new.
	(executedActivities select: [:each | each isTask and:[each isDone]]) do: [:eachArt | | node |
		node := (xmlDocument allElementsNamed: 'Activity') detect: [:each | (each attributeAt: 'Name') = eachArt getDefinitionName].
		executedNodes add: node.
		self changeColorTo: node fillColor: '-6998220' borderColor: '-6998220'].

	(currentActivities select: [:each | each isTask]) do: [:eachArt | | node |
		node := (xmlDocument allElementsNamed: 'Activity') detect: [:each | (each attributeAt: 'Name') = eachArt getDefinitionName].
		self changeColorTo: node fillColor: '-16384' borderColor: '-5279744'].

	(subprocesses select: [:each | each hasFinalized]) do: [:eachProc | | node |
		node := (xmlDocument allElementsNamed: 'Activity') detect: [:each | (each attributeAt: 'Name') = eachProc getDefinitionName].
		executedNodes add: node.
		self changeColorTo: node fillColor: '-6998220' borderColor: '-6998220'].

	transitionsNodes := self changeColorOfTransitionsReaching: executedNodes in: xmlDocument.

	self changeColorOfGatewaysOf: transitionsNodes in: xmlDocument.

	^xmlDocument