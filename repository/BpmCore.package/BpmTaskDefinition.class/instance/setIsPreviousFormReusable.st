extended attributes
setIsPreviousFormReusable
	"The receiver set whether or not reuse an already completed form.
	This option is used only by assignable task and in <BpmProcess> with task cycles"
	| attrValue |

	attrValue := self extendedValueOf: 'isPreviousFormReusable' ifAbsent: [^self].

	(attrValue asLowercase = 'false') ifTrue: [isPreviousFormReusable := false]