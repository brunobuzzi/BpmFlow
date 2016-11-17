other
generateReportFrom: reportCreationBlock canvasRenderBlock: canvasRenderBlock width: width height: height text: text
	| report |

	report := reportCreationBlock value.

	canvas := self svgCanvasClass newWidth: width height: height.

	canvas drawText: text at: 10@30 textSizePx: '18px'.

	canvasRenderBlock value: report.

	report svgContents: canvas contents.