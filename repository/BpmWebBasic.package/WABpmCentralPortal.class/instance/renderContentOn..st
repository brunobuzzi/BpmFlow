render
renderContentOn: html

	html div id: 'flags'; with: [self renderLanguageFlagsOn: html].

	html div id: 'header'; with:[html header with: ('BPM Flow Applications' translateTo: selectedLanguage)].

	html div id: 'application-links'; with: [
		html div with: [self renderLinkToBackofficeApplicationOn: html].
		html div with: [self renderLinkToFrontofficeApplicationOn: html].
		html div with: [self renderLinkToBusinessIntelligenceApplicationOn: html].
		"html div with: [self renderLinkToGemStoneAdminApplicationOn: html]."
	].