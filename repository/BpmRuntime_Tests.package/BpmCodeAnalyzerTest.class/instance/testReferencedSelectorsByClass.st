other
testReferencedSelectorsByClass
	| references |

	analyzer 
		enableValidClasses;
		addDefaultValidClasses;
		enableValidSelectors;
		addDefaultValidSelectors.
	
	analyzer blockCode: '[:proc :script| ZnClient new https; post: ''test.url.info'' contents: ''some data'']'.

	references := analyzer getReferencedSelectorsByClasses.

	self assert: (references includesKey: 'ZnClient').

	self assert: ((references at: 'ZnClient') includes: #new).
	self assert: ((references at: 'ZnClient') includes: #https).
	self assert: ((references at: 'ZnClient') includes: #post:contents:).