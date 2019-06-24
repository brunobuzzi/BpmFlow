clone
clone
	| newDistribution |

	newDistribution := super clone.

	newDistribution fieldsCollection: (fieldsCollection collect: [:each | each clone]).

	^newDistribution