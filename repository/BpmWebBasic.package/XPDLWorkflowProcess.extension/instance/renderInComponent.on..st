*bpmWebBasic
renderInComponent: aWABpmnCanvasComposite on: html

	self elementsToRender do: [:each | each renderInComponent: aWABpmnCanvasComposite on: html]