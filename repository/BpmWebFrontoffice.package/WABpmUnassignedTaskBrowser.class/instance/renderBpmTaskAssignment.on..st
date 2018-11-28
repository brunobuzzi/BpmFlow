other
renderBpmTaskAssignment: aBpmTaskAssignment on: html 

	"self renderTakeTaskIconOn: html for: eachProcess."

		html div class: 'monitor-list-item-summary'; with: [
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Top Application:' translateFor: self session user)].
				html output: aBpmTaskAssignment applicationName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Process Id:' translateFor: self session user)].
				html output: aBpmTaskAssignment processId.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Process Name:' translateFor: self session user)].
				html output: aBpmTaskAssignment processName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Creation Date:' translateFor: self session user)].
				html output: aBpmTaskAssignment creationDate.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Task Name:' translateFor: self session user)].
				html output: aBpmTaskAssignment taskName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Role:' translateFor: self session user)].
				html output: aBpmTaskAssignment getRoleName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Parent Process:' translateFor: self session user)].
				html output: aBpmTaskAssignment printParentName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('And Context:' translateFor: self session user)].
				html output: aBpmTaskAssignment printAndContext.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Or Context:' translateFor: self session user)].
				html output: aBpmTaskAssignment printOrContext.].
			self renderTakeTaskIconOn: html for: aBpmTaskAssignment.
		].