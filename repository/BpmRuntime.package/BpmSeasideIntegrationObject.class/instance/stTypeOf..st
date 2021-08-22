other
stTypeOf: attributeName
	"Answer the type (Smalltalk class) of the for the field named <attributeName> if field name is absent answer nil"

	^(self classOf: attributeName) stType