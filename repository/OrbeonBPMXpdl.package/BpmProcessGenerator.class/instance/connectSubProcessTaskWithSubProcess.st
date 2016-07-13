process definition creation
connectSubProcessTaskWithSubProcess
	"The receiver connect all sub process tasks <BpmSubProcessTaskDefinition> with the related process definition <BpmProcessDefinition>"
	| subProcessTasks |

	subProcessTasks := OrderedCollection new.

	processes do: [:procDefinition | 
		procDefinition getSubProcessTasks do: [:subProcTaskDefinition | | subProcess |
			subProcess := subProcTaskDefinition isEmbedded
					ifFalse: [processes detect: [:each | each sheetName = subProcTaskDefinition name] ifNone:  [nil]]
					ifTrue: [| subProc |
						processes do: [:each | (each getSubProcessNamed: subProcTaskDefinition name ifAbsent: [nil]) ifNotNil: [:value | subProc := value]].
						subProc].
			subProcTaskDefinition setSubProcessDefinition: subProcess.
			subProcessTasks add: subProcTaskDefinition.
		].
	].
	subProcessTasks do: [:each | each setRolesOfUnderlineProcess] "set roles for embedded processes -that has no Lanes-"