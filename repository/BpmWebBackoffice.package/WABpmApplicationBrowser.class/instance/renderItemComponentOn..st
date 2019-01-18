other
renderItemComponentOn: html
	| point |

	selectedLateralItem ifNil: [^self].

	point := 10@10.
	html div with: [
		(BpmProcessDefinition getAllProcessNamesIn: selectedLateralItem applicationName) do: [:procName |
			self renderProcessWithLinkOn: html at: point name: procName.
		].
	].