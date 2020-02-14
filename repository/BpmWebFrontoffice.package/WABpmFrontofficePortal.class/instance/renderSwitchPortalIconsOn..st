other
renderSwitchPortalIconsOn: html
	"The receiver render the icon to switch from Frontoffice Application to Backoffice Application"

	(self session user isBackofficeUserIn: self session bpmEnvironment) ifTrue: [layout renderBackOfficeSwitchIconOn: html].