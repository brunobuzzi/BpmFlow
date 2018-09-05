other
renderItemComponentOn: html
	| point |

	selectedLateralItem ifNil: [^self].

	html div id: 'environment-applications'; with: [
		self renderAddApplicationToEnvironmentOn: html.
		html div id: 'enviroment-applications-title'; with: [html output: ('Applications' translateFor: self session user)]. 
		point := 10@10.
		self selectedLateralItem applications do: [:application |
			self renderApplicationNameOn: html at: point application: application.
		]
	].

	html div id: 'environment-users'; with: [
		self renderAddUserToEnvironmentOn: html.
		html div id: 'enviroment-users-title'; with: [html output: ('Users' translateFor: self session user)]. 
		self renderUsersOfSelectedEnvironmentOn: html.
	].