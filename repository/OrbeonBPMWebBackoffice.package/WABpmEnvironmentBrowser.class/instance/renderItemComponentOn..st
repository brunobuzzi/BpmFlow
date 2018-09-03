other
renderItemComponentOn: html
	| point |

	self renderAddApplicationToEnvironmentOn: html.

	html div id: 'enviroment-applications-title'; with: [html output: ('Applications' translateFor: self session user)]. 

	selectedLateralItem ifNil: [^self].

	point := 10@10.
	self selectedLateralItem applications do: [:application |
		self renderApplicationNameOn: html at: point application: application.
	].