other
renderItemComponentOn: html
	| point |

	selectedLateralItem ifNil: [^self].

	point := 10@10.
	(BpmProcessDefinition getAllProcessNamesIn: selectedLateralItem applicationName) do: [:procName |
		self renderProcessWithLinkOn: html at: point name: procName.
	].