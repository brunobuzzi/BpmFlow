other
renderCalendarHoursOn: html
	| svgCanvas |

	svgCanvas := JASVGIGraphCanvas newWidth: '1400px' height: '200px'.

	html div with: [html html: (svgCanvas drawHourCalendar: selectedLateralItem at: 20@20 width: 50 color: 'red' dayHasContent: true) contents].