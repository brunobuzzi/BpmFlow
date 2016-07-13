other
createFieldIndexFor: anAppFieldValue on: aRcIdentityBag
	"The receiver create (initialization - executed only once) an Index for the field named <anAppFieldValue> name.
	The index is created if the field is a search field if not only answer the holder collection <aRcIdentityBag>"

	(self isSearchField: anAppFieldValue name)
	ifTrue: [GsIndexSpec new
				equalityIndex: 'each.value' lastElementClass: (self stTypeOf: anAppFieldValue name);
				createIndexesOn: aRcIdentityBag].

	^aRcIdentityBag