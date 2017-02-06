other
getValueOfProcessField: fieldName
	"The receiver answer the value of the field named <fieldName> , if none anwer <nil>"

	(executedSteps reverse select: [:each | each hasForm]) 
		do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

	^nil