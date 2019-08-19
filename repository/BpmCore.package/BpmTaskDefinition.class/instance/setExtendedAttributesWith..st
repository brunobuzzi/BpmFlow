extended attributes
setExtendedAttributesWith: attributesDictionary

	super setExtendedAttributesWith: attributesDictionary.

	self setCanUnassignAttribute.

	self setReuseExternalObjectOfTaskNamed.

	self setIsPreviousFormReusable.