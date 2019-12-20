fields update
updateFieldsOf: formInstanceOrStModel
	"The receiver update the dictionary <formFieldInstances> for each field value in the form <formInstanceOrStModel>"

	formInstanceOrStModel fieldValuesDo: [:fieldValueHolder | 
		"is the first time that fields are going to be processed ? (enter in -false- block only once)"
		fieldValueHolder alreadyAddedToProcessDefinition 
		ifFalse: [fieldValueHolder alreadyAddedToProcessDefinition: true.
					fieldValueHolder currentValues do: [:each | self addTo: formInstanceOrStModel getObjectName fieldValue: each]]
		ifTrue: [
			fieldValueHolder hasElementsToAdd 
			ifTrue: [fieldValueHolder fieldsToAddDo: [:fieldValue |
				self addTo: formInstanceOrStModel getObjectName fieldValue: fieldValue]].

			fieldValueHolder hasElementsToRemove 
			ifTrue: [fieldValueHolder fieldsToRemoveDo: [:fieldValue |
				self removeFrom: formInstanceOrStModel getObjectName fieldValue: fieldValue]].
		].
	].