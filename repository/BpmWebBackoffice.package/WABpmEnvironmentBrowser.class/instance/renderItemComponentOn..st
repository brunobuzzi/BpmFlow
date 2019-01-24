other
renderItemComponentOn: html
	| point |

	selectedLateralItem ifNil: [^self].

	html div class: 'display-flex'; with: [
		html div id: 'environment-applications'; with: [
			html div id: 'environment-applications-title'; with: [html output: ('Applications' translateFor: self session user)].
			self renderAddApplicationToEnvironmentOn: html.
			point := 10@10.
			html div with: [
				self selectedLateralItem applications do: [:application |
					self renderApplicationNameOn: html at: point application: application.
				].
			].
		].

		html div id: 'environment-users'; with: [
			html div id: 'environment-users-title'; with: [html output: ('Users' translateFor: self session user)]. 
			self renderAddUserToEnvironmentOn: html.
			self renderUsersOfSelectedEnvironmentOn: html.
		].
	].