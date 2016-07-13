other
renderCurrentDictionaryTranslationsOn: html
	| currentDictionary |

	searchValues at: 'selected-language' ifAbsent: [^self].

	self renderAddNewTranslationOn: html.

	currentDictionary := self getInternationalization getTranslationsOf: (searchValues at: 'selected-language').

	html div id: 'inter-current-dictionary'; with: [
		currentDictionary keys asSortedCollection do: [:key | 
			html output: key, ' | '.
			html span: (currentDictionary at: key).
			html break.
		].
	].