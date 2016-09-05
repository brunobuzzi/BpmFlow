other
isMultiInstance
	"Answer whether or not the receiver has multi instance behavior.

	false: the process always use the same model/form if the task is executed more than once.
	true: the process create a new model/form if the task is executed more than once "

	^self hasLoop and: [loop isMultiInstance]