other
hasMixedStartConditions
	"Answer whether or not the receiver has mixed start conditions.
	Some out Transitions has start condition and some Transitions has NO start condition"

	^(outTransitions anySatisfy: [:each | each startCondition notNil])
		and:[outTransitions anySatisfy: [:each | each startCondition isNil]]