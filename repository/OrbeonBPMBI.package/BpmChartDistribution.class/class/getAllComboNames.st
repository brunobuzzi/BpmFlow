other
getAllComboNames

	^self instanciableDistributionSubclasses collect: [:each | each getComboName]