embedded procs
setLaneToXpdlObjectsInEmbeddedProcesses
	"The receiver set <lane> instance variable to <XPDLObject>s in embedded processes.
	See issue: #1054 , #1055 and #1059"

	embeddedSubprocesses do: [:embeddedProc | | creatorActivity |
		creatorActivity := embeddedProc getCreatorSubProcessActivity.
		embeddedProc startNode lane: creatorActivity lane.
		embeddedProc activitiesDo: [:each | each lane: creatorActivity lane]. 
		embeddedProc endNodes do: [:each | each lane: creatorActivity lane]. 

		embeddedProc setLaneToXpdlObjectsInEmbeddedProcesses. "fix #1059 - set lane of emebedded subprocesses of embedded processes"
	].