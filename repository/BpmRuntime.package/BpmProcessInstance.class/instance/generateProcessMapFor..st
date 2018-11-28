xpdl
generateProcessMapFor: aBpmUser
	"The receiver generate an XML String which is a XPLD file.
	This file must be imported as XPDL in Bizagi and it shows the execution path of the receiver.
	Map executed transitions with XML nodes"
	| xmlDocument executedNodes transitionsNodes |

	xmlDocument := XMLDOMParser parse: definition xmlString.

	executedNodes := OrderedCollection new.
	(executedActivities select: [:each | each isTask and:[each isDone]]) do: [:eachArt | | node |
		node := (xmlDocument allElementsNamed: 'Activity') detect: [:each | (each attributeAt: 'Name') = eachArt getDefinitionName].
		executedNodes add: node.
		self changeColorTo: node fillColor: (aBpmUser getProperty: 'bizagi.task.fillColor.done') borderColor: (aBpmUser getProperty: 'bizagi.task.borderColor.done')].

	(currentActivities select: [:each | each isTask]) do: [:eachArt | | node |
		node := (xmlDocument allElementsNamed: 'Activity') detect: [:each | (each attributeAt: 'Name') = eachArt getDefinitionName].
		executedNodes add: node.
		self changeColorTo: node fillColor: (aBpmUser getProperty: 'bizagi.task.fillColor.pending') borderColor: (aBpmUser getProperty: 'bizagi.task.borderColor.pending')].

	(subprocesses select: [:each | each hasFinalized]) do: [:eachProc | | node |
		node := (xmlDocument allElementsNamed: 'Activity') detect: [:each | (each attributeAt: 'Name') = eachProc getDefinitionName].
		executedNodes add: node.
		self changeColorTo: node fillColor: (aBpmUser getProperty: 'bizagi.subprocess.fillColor.done') borderColor: (aBpmUser getProperty: 'bizagi.subprocess.borderColor.done')].

	transitionsNodes := self changeColorOfTransitionsReaching: executedNodes in: xmlDocument for: aBpmUser.

	self changeColorOfGatewaysOf: transitionsNodes in: xmlDocument for: aBpmUser.

	^xmlDocument