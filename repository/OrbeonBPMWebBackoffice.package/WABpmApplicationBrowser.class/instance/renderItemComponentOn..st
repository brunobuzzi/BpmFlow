other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	selectedLateralItem canDelete ifTrue: [self renderDeleteApplicationOn: html].

	html unorderedList with:[
		(BpmProcessDefinition getAllVersionsIn: selectedLateralItem applicationName) do: [:procDefinition |
			html listItem with: [html text: procDefinition processName.
				html horizontalRule].
		].
	].