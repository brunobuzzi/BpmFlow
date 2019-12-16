ast queries
getReferencedSelectorsByClasses
	"The receiver answer a dictionary where the key is the class name and the value is the referenced selector in <blockCode> instance variable"
	| referencedSelectors |

	referencedSelectors := Dictionary new.
	self allChildren do: [:each |
		(each isMessage and: [each receiver isVariable and:[each receiver name first isUppercase]]) 
		ifTrue: [referencedSelectors at: (each receiver name, ' class') ifAbsentPut: [OrderedCollection new].
					(referencedSelectors at: (each receiver name, ' class')) add: each selector]
		ifFalse: [(each isMessage and: [each receiver isVariable]) 
					ifTrue: [referencedSelectors at: each receiver name ifAbsentPut: [OrderedCollection new].
								(referencedSelectors at: each receiver name) add: each selector.
					].
		].
	].
	
	^referencedSelectors