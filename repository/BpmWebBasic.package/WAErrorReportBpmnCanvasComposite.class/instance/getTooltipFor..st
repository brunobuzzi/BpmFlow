other
getTooltipFor: aXPDLActivityNode
	"The receiver answer <aString> as tooltip for activity <aXPDLActivityNode>.
	If the activity is an Orbeon Form the tooltip is get directly from the <OrbeonFormInstance> with #printStructure.
	If the activity is a Seaside Form then the Seaside componente must implement #getTooltipOrNil"

	^nil