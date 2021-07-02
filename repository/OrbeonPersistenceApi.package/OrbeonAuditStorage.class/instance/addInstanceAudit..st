other
addInstanceAudit: anOrbeonFormInstance
	"The receiver add to the audit collection the form instance <anOrbeonFormInstance>"

	^((instances at: anOrbeonFormInstance getApplicationName ifAbsentPut: [RcKeyValueDictionary new])
		at: anOrbeonFormInstance formName ifAbsentPut: RcIdentityBag new) add: anOrbeonFormInstance