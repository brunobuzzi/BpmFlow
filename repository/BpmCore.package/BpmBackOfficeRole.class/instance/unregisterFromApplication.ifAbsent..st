applications
unregisterFromApplication: anApplication ifAbsent: aBlock
	"The receiver unregister it self from the application <anApplication>"

	^anApplication removeBackOfficeRole: self ifAbsent: aBlock