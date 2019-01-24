other
renderApplicationNameOn: html at: aPoint application: anApplication
	| svgCanvas |

	svgCanvas := WABpmEnvironmentComposite parent: self.
	svgCanvas model: anApplication.
	html div id: 'environment-svg'; with: [html render: svgCanvas].