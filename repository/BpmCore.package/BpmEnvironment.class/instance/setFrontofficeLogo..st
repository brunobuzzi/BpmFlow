env logos
setFrontofficeLogo: aSymbol
	"The receiver set is logo with symbol <aSymbol> referencing image.
	Image should be 32x32 png file otherwise CSS disarrangement can happend"

	^applicationsLogos at: 'frontoffice' put: aSymbol