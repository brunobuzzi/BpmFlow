other
addDraftAudit: anOrbeonFormInstance
	"The receiver add to the audit collection the form draft <anOrbeonFormInstance>"

	^((drafts at: anOrbeonFormInstance getApplicationName ifAbsentPut: [RcKeyValueDictionary new])
		at: anOrbeonFormInstance formName ifAbsentPut: RcIdentityBag new) add: anOrbeonFormInstance