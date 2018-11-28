other
createReverseTranslation

	recursionNames := BpmDashboardRecursionDefinition getComboBoxNames collect: [:string | | translation |
									translation := string translateFor: self session user.
									parent reverseTranslation atTransatedString: translation put: string.
									translation].