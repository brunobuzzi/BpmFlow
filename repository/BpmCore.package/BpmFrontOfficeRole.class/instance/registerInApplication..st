applications
registerInApplication: anApplication
	"The receiver register it self in the application <anApplication>"

	application := anApplication.
	^anApplication addFrontOfficeRole: self