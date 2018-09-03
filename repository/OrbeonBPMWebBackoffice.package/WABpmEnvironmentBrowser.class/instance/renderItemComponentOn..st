other
renderItemComponentOn: html
	| point |

	self renderAddApplicationToEnvironmentOn: html.

	selectedLateralItem ifNil: [^self].

	point := 10@10.
	self selectedLateralItem applications do: [:application |
		self renderApplicationNameOn: html at: point application: application.
	].