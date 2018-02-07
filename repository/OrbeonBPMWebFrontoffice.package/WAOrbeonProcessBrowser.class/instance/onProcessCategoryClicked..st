categories
onProcessCategoryClicked: aProcessInstanceUserCategory

	self hasSelectedLateralItem ifFalse: [^self filterProcessDefinitionByCategory: aProcessInstanceUserCategory].

	(aProcessInstanceUserCategory includes: selectedLateralItem)
	ifTrue: [aProcessInstanceUserCategory remove: selectedLateralItem]
	ifFalse: [aProcessInstanceUserCategory add: selectedLateralItem]