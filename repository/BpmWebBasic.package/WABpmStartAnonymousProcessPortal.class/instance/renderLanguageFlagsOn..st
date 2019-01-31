language
renderLanguageFlagsOn: html
	| languageFlagsIconsAndNames |

	languageFlagsIconsAndNames := self languageFlagsIconsAndNames.

	languageFlagsIconsAndNames do: [:arrayOfThree | | cssClasses |
		cssClasses := (languageFlagsIconsAndNames last == arrayOfThree) ifTrue: ['flag flag-last'] ifFalse: ['flag'].
		html div class: cssClasses; with: [
			html anchor callback: [selectedLanguage := arrayOfThree third]; with: [
				html image url: (SEWAFIconLibrary / arrayOfThree first); 
					style: 'filter: grayscale(', ((selectedLanguage = arrayOfThree third) ifTrue:['0%'] ifFalse: ['85%']), ');';
					altText: arrayOfThree second; 
					title: arrayOfThree second.
			].
		].
	].