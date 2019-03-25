other
clone
	"The receiver is cloned with a new version number"
	| xpdlReader processGenerator |

	xpdlReader := self defaultXpdlReaderClass forProcessNamed: processName withString: xmlString.

	subProcesses do: [:each | xpdlReader addXPDLDocument:  (XMLDOMParser parse: each xmlString) namedAs: each processName].

	xpdlReader connectProcesses.

	processGenerator :=  BpmProcessGenerator on: xpdlReader xpdlPackages.

	processGenerator mapProcess: processName toApplication: application.

	subProcesses do: [:each | processGenerator mapProcess: each processName toApplication: each application].

	processGenerator generateAllProcess.

	"processGenerator processes do: [:each | each addToCache]."

	^processGenerator processes