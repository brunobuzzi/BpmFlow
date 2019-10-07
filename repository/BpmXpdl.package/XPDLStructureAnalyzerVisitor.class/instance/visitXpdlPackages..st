visiting
visitXpdlPackages: aCollection
	"The receiver start visiting the XPDL package <aXPDLPackageNode> and from this XPDL element all way down"
	| allPackagesNames |

	aCollection do: [:eachPackage | 
		self visitXpdlPackage: eachPackage.
		xpdlObjects := Dictionary new.
		visitedTransitions := Set new.
		hasStartNode := false.	
		hasEndNode := false.
		].

	allPackagesNames := aCollection collect: [:each | each getName]. "package node name <Package Name='xxx'>"

	aCollection do: [:eachPackage | 
		(eachPackage getAllSubProcessNodes reject: [:eachSubProcAct | eachSubProcAct isEmbedded or: [allPackagesNames includes: eachSubProcAct getName]]) 
			do: [:eachSubProcAct | self addSubProcessActivityWithoutProcessDefinition: eachSubProcAct]
	].