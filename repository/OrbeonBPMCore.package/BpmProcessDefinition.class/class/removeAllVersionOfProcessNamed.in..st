cache
removeAllVersionOfProcessNamed: procName in: appName
	"The receiver remove all versions of BpmProcessDefinition named <procName> in Application named <appName>. Answer <nil> if not found"
	| dictionaryOfProcessVersions |

	dictionaryOfProcessVersions := self cache at: appName ifAbsent: [^nil].

	dictionaryOfProcessVersions removeKey: procName ifAbsent: [^nil].

	^dictionaryOfProcessVersions