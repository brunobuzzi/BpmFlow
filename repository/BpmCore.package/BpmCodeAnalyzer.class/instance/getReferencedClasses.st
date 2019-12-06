ast queries
getReferencedClasses

	^parser allChildren select: [:each | each isMessage and: [each receiver isVariable and:[each receiver name first isUppercase]]] thenCollect: [:each | each receiver name]