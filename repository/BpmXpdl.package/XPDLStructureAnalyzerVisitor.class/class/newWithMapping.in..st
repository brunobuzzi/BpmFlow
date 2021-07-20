other
newWithMapping: packageApplicationDictionary in: aBpmEnvironment
	"The receiver create a new instance with dictionary <packageApplicationDictionary> where the key is <aXPDLPackageNode> and the value is <anApplication>"

	^self new setMapping: packageApplicationDictionary in: aBpmEnvironment