other
keepTempObjectsInSystem
	"This class variable is used to execute #tearDown method or not. By default is <false> and in this case the #tearDown will be executed.
	When set to <true> the temporary objects created in the system won't be removed because #tearDown execution is avoided.
	This is manage in each subclass and it can be used or not "

	^self class keepTempObjectsInSystem