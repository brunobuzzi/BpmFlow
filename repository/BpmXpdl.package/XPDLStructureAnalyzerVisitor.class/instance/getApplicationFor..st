mapping
getApplicationFor: aXPDLObject
	"The receiver answer <anApplication> associated with the element <aXPDLObject>"
	| application |

	application := packageApplication at: aXPDLObject package ifAbsent: [self addMissingAppicationItem: aXPDLObject description: aXPDLObject getName].

	application ifNil: [self addMissingAppicationItem: aXPDLObject description: aXPDLObject getName].

	^application