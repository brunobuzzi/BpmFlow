other
renderShowLateralListJsIconOn: html
	| jsEcElement |

	jsEcElement := self createEcLateralMenuJsObject.
	jsEcElement callInitIconFunction; callExpandCollapseElementWithSiblingFunction.

	html div class: 'hide-lateral-left-list'; with: [
		html anchor 
			class: 'cursor-pointer';
			onClick: jsEcElement;
			with: [html image id: 'collapseLateralListIcon'].
	].

	jsEcElement := self createEcLateralMenuJsObject.
	jsEcElement callInitIconFunction.
	html script: jsEcElement.