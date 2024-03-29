import
createXpdlFileApplicationMapping
	"The receiver create a dictionary where the key is the xpdl file name and the value is subinstance of <AbstractApplication>"
	| dictionary |

	dictionary := Dictionary new.

	indexXpdlFileMapper keysAndValuesDo: [:index :xpdlFileName |
		dictionary at: xpdlFileName put: (systemRoot applicationNamed: (indexApplicationMapper at: index)).
	].

	^dictionary