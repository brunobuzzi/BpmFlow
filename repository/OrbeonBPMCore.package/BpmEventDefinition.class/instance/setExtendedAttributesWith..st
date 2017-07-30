other
setExtendedAttributesWith: attributesDictionary
	"The receiver copy the extended attributes from XPDL elements"

	super setExtendedAttributesWith: attributesDictionary.

	type setValuesOfExtendedAttributes.