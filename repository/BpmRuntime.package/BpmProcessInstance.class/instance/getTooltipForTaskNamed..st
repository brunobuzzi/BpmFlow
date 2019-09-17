tasks
getTooltipForTaskNamed: aString
	"Answer a tooltip for the task named <aString>.
	If the receiver has a cycle answer the last performed task"
	| tasks |

	tasks := self getTasksNamed: aString.
	tasks ifEmpty: [^nil].
 
	^tasks last externalObjectAsXmlString