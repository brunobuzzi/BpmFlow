other
renderUserAutocompletionOn: html

	html div id: 'environment-user-autocompletion'; with: [
		html form with: [
			html fieldSet with: [
				html label for: html nextId; with: ('Type username:' translateIn: self session).

			   html textInput id: html lastId;
					script: (html jQuery this autocomplete sourceCallback: [:userName | self getUsersNamesFor: userName]);
					callback: [:value | self addNewUserNamed: value].
			].
		].
	].