other
newWithMapping: packageApplicationDictionary
	"The receiver create a new instance with dictionary <packageApplicationDictionary> where the key is <aXPDLPackageNode> and the value is <anApplication>"

	^super new initialize
		packageApplication: packageApplicationDictionary;
		yourself