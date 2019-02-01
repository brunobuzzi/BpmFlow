other
renderItemComponentOn: html
	| point |

	selectedLateralItem ifNil: [^self].

	html div class: 'display-flex'; with: [
		html div id: 'environment-applications'; with: [
			html div id: 'environment-applications-title'; with: [html output: ('Applications' translateIn: self session)].
			self renderAddApplicationToEnvironmentOn: html.
			point := 10@10.
			html div with: [
				self selectedLateralItem applications do: [:application |
					self renderApplicationNameOn: html at: point application: application.
				].
			].
		].

		html div id: 'environment-users'; with: [
			html div id: 'environment-users-title'; with: [html output: ('Users' translateIn: self session)]. 
			self renderAddUserToEnvironmentOn: html.
			self renderUsersOfSelectedEnvironmentOn: html.
		].
	].