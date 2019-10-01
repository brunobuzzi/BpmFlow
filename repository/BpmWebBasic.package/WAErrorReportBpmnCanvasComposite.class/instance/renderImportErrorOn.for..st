render xpdl
renderImportErrorOn: html for: anXPDLObject
	| xCoordinate |

	xCoordinate := anXPDLObject getXcoordinate.
	(importProcess getItemsImportReportFor: anXPDLObject) do: [:itemImportReport| 
			self renderSvgElementOn: html 
					tag: html svgCircle 
					attributes: (self circleAttributesForItemErrorAt: (xCoordinate @ anXPDLObject getYcoordinate))
					with: [html tag: 'title' with: itemImportReport printAll].

			self renderTextOn: html text: itemImportReport code at: (xCoordinate - 12 @ anXPDLObject getYcoordinate + 4).

			xCoordinate := xCoordinate + 32.
	].