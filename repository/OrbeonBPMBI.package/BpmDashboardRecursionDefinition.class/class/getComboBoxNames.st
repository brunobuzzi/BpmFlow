other
getComboBoxNames

	^self subclasses collect: [:each | each comboBoxName]