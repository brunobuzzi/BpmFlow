other
renderProcessWithLinkOn: html at: aPoint name: procName
	| canvas |

	canvas := JASVGIBpmCanvas newWidth: '170px' height: '72px'.
	canvas cancelDefaultGroupTranslation.

	canvas drawSubProcessActivityNamed: procName at: aPoint extent: 150@60.

	html div class: 'float-left'; with: [
		html div with: [html html: canvas contents].
		html div class: 'float-right margin-right-10px'; with: [
			self renderDownloadProcessMapOn: html for: procName.
		].
	].