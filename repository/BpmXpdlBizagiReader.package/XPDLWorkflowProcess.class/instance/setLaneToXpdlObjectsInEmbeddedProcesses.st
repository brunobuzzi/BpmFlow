embedded procs
setLaneToXpdlObjectsInEmbeddedProcesses
	"The receiver set <lane> instance variable to <XPDLObject>s in embedded processes.
	See issue: #1054 and #1055"

	embeddedSubprocesses do: [:embeddedProc | | creatorActivity |
		creatorActivity := embeddedProc getCreatorSubProcessActivity.
		embeddedProc startNode lane: creatorActivity lane.
		embeddedProc activities do: [:each | each lane: creatorActivity lane]. 
		embeddedProc endNodes do: [:each | each lane: creatorActivity lane]. 
	].