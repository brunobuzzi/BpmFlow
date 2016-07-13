categories
onProcessCategoryClicked: aBpmProcessDefinitionCategory

	self hasSelectedLateralItem ifFalse: [^self filterProcessDefinitionByCategory: aBpmProcessDefinitionCategory].

	(aBpmProcessDefinitionCategory includes: selectedLateralItem)
	ifTrue: [aBpmProcessDefinitionCategory remove: selectedLateralItem]
	ifFalse: [aBpmProcessDefinitionCategory add: selectedLateralItem]