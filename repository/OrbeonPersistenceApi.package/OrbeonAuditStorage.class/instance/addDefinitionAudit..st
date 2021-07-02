other
addDefinitionAudit: anOrbeonFormInstanceDefinition
	"The receiver add to the audit collection the form definition <anOrbeonFormInstanceDefinition>"

	^((definitions at: anOrbeonFormInstanceDefinition getApplicationName ifAbsentPut: [RcKeyValueDictionary new])
		at: anOrbeonFormInstanceDefinition formName ifAbsentPut: RcIdentityBag new) add: anOrbeonFormInstanceDefinition