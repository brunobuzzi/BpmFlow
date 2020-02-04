applications
unregisterFromApplication: anApplication ifAbsent: aBlock
	"The receiver unregister it self from the application <anApplication>"

	^anApplication removeFrontOfficeRole: self ifAbsent: aBlock