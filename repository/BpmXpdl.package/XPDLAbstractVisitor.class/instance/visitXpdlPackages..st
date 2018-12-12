other
visitXpdlPackages: aCollection
	"The receiver start visiting the XPDL package <aXPDLPackageNode> and from this XPDL element all way down"

	aCollection do: [:eachPackage | self visitXpdlPackage: eachPackage].