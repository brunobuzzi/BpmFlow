rectangle area
absoluteRectangleIncludesActivity: aXPDLObject
	"Answer whether or not the xpdl object <aXPDLObject> is graphically contained inside the receiver"

	^self getAbsoluteRectangle containsPoint: aXPDLObject originPoint