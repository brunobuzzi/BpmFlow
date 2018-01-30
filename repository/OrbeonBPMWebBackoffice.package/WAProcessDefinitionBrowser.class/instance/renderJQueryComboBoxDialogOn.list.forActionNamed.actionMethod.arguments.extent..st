jquery
renderJQueryComboBoxDialogOn: html list: list forActionNamed: actionName actionMethod: actionMethod arguments: arguments extent: aPoint
   | id |

   html div
      id: (id := html nextId);
      script: (html jQuery new dialog
		draggable: true;
		resizable: true;
		modal: true;
		width: aPoint x;
		height: aPoint y;
         title: ('Select Assignation Policy' translateFor: self session user);
         autoOpen: false);
      with: [self renderComboBoxDialogOn: html list: list forActionNamed: actionName actionMethod: actionMethod arguments: arguments].

	^id