summary
getArrayOfOrbeonHeaders
	"The receiver creates a collection with the header of the XML to show in the Summary page"

	^OrderedCollection new
		add: 'xmlns:ev' -> 'http://www.w3.org/2001/xml-events';
		add: 'xmlns:f' -> 'http//www.orbeon.com/function';
		add: 'xmlns:frf' -> 'java:org.orbeon.oxf.fr.FormRunner';
		add: 'xmlns:odt' -> 'http://orbeon.org/oxf/xml/datatypes';
		add: 'xmlns:oxf' -> 'http://www.orbeon.com/oxf/processors';
		add: 'xmlns:p' -> 'http://www.orbeon.com/oxf/pipeline';
		add: 'xmlns:saxon' -> 'http://saxon.sf.net/';
		add: 'xmlns:sql' -> 'http://orbeon.org/oxf/xml/sql';
		add: 'xmlns:xf' -> 'http://www.w3.org/2002/xforms';
		add: 'xmlns:xi' -> 'http://www.w3.org/2001/XInclude';
		add: 'xmlns:xpl' -> 'java:org.orbeon.oxf.pipeline.api.FunctionLibrary';
		add: 'xmlns:xs' -> 'http://www.w3.org/2001/XMLSchema';
		add: 'xmlns:xxf' -> 'http://orbeon.org/oxf/xml/xforms';
		add: 'page-size' -> summary printPageSize;
		add: 'total' -> summary printTotalForms;
		add: 'search-total' -> summary printReturnedForms;
		asArray