other
initialize

	super initialize.

	"true - WALinkedAssignmentManager, false - WAEmbeddedAssignmentManager"
	orbeonWebIsLinked := true.
	languageName := #english.
	initialTransitionDisplayMode := #expanded.
	lateralListPagingSize := 5.
	regularListPagingSize := 5.
	applicationOptions := Dictionary new.
	pinnedProcessesDefinitions := Dictionary new.

	self initializeProperties.