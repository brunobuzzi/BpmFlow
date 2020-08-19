import
createBpmProcessesDefinitions
	"The receiver create instances of <BpmProcessDefinition> but are NOT stored on the global Cache.
	See: #storeBpmProcessDefinition method"

	processGenerator generateAllProcess.

	processesAsTree := self generatedCollect: [:each | each asTree].