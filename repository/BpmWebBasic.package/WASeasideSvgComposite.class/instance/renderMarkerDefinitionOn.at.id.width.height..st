marker
renderMarkerDefinitionOn: html at: aPoint id: id width: width height: height

	^html tag: 'defs' with: [self renderMarkerOn: html at: aPoint id: id width: width height: height]