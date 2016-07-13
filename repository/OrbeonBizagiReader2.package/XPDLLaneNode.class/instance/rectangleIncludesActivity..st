rectangle area
rectangleIncludesActivity: aXPDLObject
	"Answer whether or not the xpdl object <aXPDLObject> is graphically contained inside the receiver"

	^self rectangle containsPoint: aXPDLObject originPoint