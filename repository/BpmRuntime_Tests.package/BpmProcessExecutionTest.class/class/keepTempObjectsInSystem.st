other
keepTempObjectsInSystem
	"This class variable is used to execute #tearDown method or not. By default is <false> and in this case the #tearDown will be executed.
	When set to <true> the temporary objects created in the system won't be removed because #tearDown execution is avoided.
	This is manage in each subclass and it can be used or not.
	Keep create temporary objects can be useful during the Development phase. To execute test and populate the System to access object using any GUI"

	KeepTempObjectsInSystem ifNil: [KeepTempObjectsInSystem := false].

	^KeepTempObjectsInSystem