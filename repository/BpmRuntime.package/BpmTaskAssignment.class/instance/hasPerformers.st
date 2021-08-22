performers
hasPerformers
	"Answer whether or not the task of the receiver has performers.
	Regular task consist in one form or one Seaside Component.
	Task with performers enable to more than one role work in the same task (in sequential way)"

	task ifNil: [^false].

	^task hasPerformers