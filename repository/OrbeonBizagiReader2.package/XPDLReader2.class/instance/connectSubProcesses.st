other
connectSubProcesses
	"The receiver connect each <XPDLSubProcess> node with it's process definition <XPDLPoolNode>"

	self getAllSubProcessNodes do: [:subProcNode | 
		subProcNode subProcess: (self getAllPools detect: [:each | each workflowId = subProcNode subProcessId] ifNone: [nil])]