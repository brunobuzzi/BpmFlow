other
renderContentOn: html

	html div class: 'main-static-msg-div'; with: [
		html div class: 'static-msg-title'; with: [html output: msgTitle].
		html div class: 'static-msg-text'; with: [html output: msgText].
		html div class: 'static-msg-data'; with: [html output: msgData].
	].