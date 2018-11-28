bizagi colors
renderBizagiExportBackcolorsOn: html

	html fieldSet with:[
		html legend with: [html strong: ('Color Options' translateFor: self session user)].

		html label attributeAt: 'for' put: 'task.fillColor.done'; with: ('Task Done Fill Color' translateFor: self session user).
		html textInput attributeAt: 'id' put: 'task.fillColor.done'; 
			value: self session user getTaskDoneFillColor;
			callback: [:value | self session user setTaskDoneFillColor: value].

		html label attributeAt: 'for' put: 'task.borderColor.done'; with: ('Task Done Border Color' translateFor: self session user).
		html textInput attributeAt: 'id' put: 'task.borderColor.done'; 
			value: self session user getTaskDoneBorderColor;
			callback: [:value | self session user setTaskDoneBorderColor: value].

		html label attributeAt: 'for' put: 'subprocess.fillColor.done'; with: ('Subprocess Done Fill Color' translateFor: self session user).
		html textInput attributeAt: 'id' put: 'subprocess.fillColor.done'; 
			value: self session user getSubprocessDoneFillColor;
			callback: [:value | self session user setSubprocessDoneFillColor: value].

		html label attributeAt: 'for' put: 'subprocess.borderColor.done'; with: ('Subprocess Done Border Color' translateFor: self session user).
		html textInput attributeAt: 'id' put: 'subprocess.borderColor.done'; 
			value: self session user getSubprocessDoneBorderColor;
			callback: [:value | self session user setSubprocessDoneBorderColor: value].

		html label attributeAt: 'for' put: 'gateway.fillColor.done'; with: ('Gateway Done Fill Color' translateFor: self session user).
		html textInput attributeAt: 'id' put: 'gateway.fillColor.done'; 
			value: self session user getGatewayDoneFillColor;
			callback: [:value | self session user setGatewayDoneFillColor: value].

		html label attributeAt: 'for' put: 'gateway.borderColor.done'; with: ('Gateway Done Border Color' translateFor: self session user).
		html textInput attributeAt: 'id' put: 'gateway.borderColor.done'; 
			value: self session user getGatewayDoneBorderColor;
			callback: [:value | self session user setGatewayDoneBorderColor: value].

		html label attributeAt: 'for' put: 'transition.borderColor.done'; with: ('Transition Done Border Color' translateFor: self session user).
		html textInput attributeAt: 'id' put: 'transition.borderColor.done'; 
			value: self session user getTransitionDoneBorderColor;
			callback: [:value | self session user setTransitionDoneBorderColor: value].
	].