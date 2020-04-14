other
createReverseTranslation

	recursionNames := BIDashboardRecursionDefinition getComboBoxNames collect: [:string | | translation |
									translation := string translateIn: self session.
									parent reverseTranslation atTransatedString: translation put: string.
									translation].