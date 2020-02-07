other
renderItemComponentOn: html
	| point |

	selectedLateralItem ifNil: [^self].

	selectedProcess ifNotNil: [^self renderSelectedProcessOn: html].
 
	point := 10@10.
	html div with: [
		selectedLateralItem getAllProcessDefinitionsNames do: [:procName |
			self renderProcessWithLinkOn: html at: point name: procName.
		].
	].