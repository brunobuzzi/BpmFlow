baseline
baseline: spec
  <baseline>
   spec
     for: #'common'
     do: [
		spec project: 'XMLParser' with: [
			spec className: 'ConfigurationOfXMLParser';
				loads: #('default');
				versionString: #stable;
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main'].
		spec project: 'XPath' with: [
			spec className: 'ConfigurationOfXPath';
				loads: #('default');
				versionString: #stable;
				file: 'ConfigurationOfXPath';
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XPath/main'].
		spec project: 'XMLWriter' with: [
			spec className: 'ConfigurationOfXMLWriter';
				versionString: #stable;
				file: 'ConfigurationOfXMLWriter';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main';
				loads: #('Core').
				].

		spec baseline: 'AbstractApplicationObjects' with: [
			spec repository: 'github://brunobuzzi/AbstractApplicationObjects:master/repository' ].
"		spec baseline: 'Jasvgi' with: [
			spec repository: 'github://brunobuzzi/JASVGI:master/repository']."
		spec baseline: 'OrbeonPersistenceLayer' with: [
			spec repository: 'github://brunobuzzi/OrbeonPersistenceLayer:master/repository' ].
		spec baseline: 'Seaside3' with: [
			spec loads: #('Core' 'REST' 'Seaside-Tools-Web');
				repository: 'github://SeasideSt/Seaside:master/repository' ].
		spec baseline: 'Sewaf' with: [
			spec repository: 'github://brunobuzzi/SEWAF:master/repository' ].
"		spec baseline: 'HighchartsSt' with: [
			spec repository: 'github://brunobuzzi/HighchartsSt:v6.0.0gs/repository' ]."

		spec package: 'BpmCore' with: [spec requires: #('AbstractApplicationObjects' 'XPath' 'OrbeonPersistenceLayer')].
		spec package: 'BpmRuntime' with: [spec requires: #('BpmCore')].
		spec package: 'BpmXpdlBizagiReader' with: [spec requires: #('XMLParser' 'XPath')].
		spec package: 'BpmXpdl' with: [spec requires: #('BpmCore' 'BpmXpdlBizagiReader')].
		spec package: 'BpmBusinessIntelligence' with: [spec requires: #('BpmCore' 'BpmRuntime')].
		spec package: 'BpmWebSvgIntegration' with: [spec requires: #('Seaside3' 'BpmCore' 'BpmRuntime')].
		spec package: 'BpmWebBasic' with: [spec requires: #('Seaside3' 'BpmCore' 'BpmRuntime' 'BpmWebSvgIntegration')].
		spec package: 'BpmWebFrontoffice' with: [spec requires: #('Seaside3' 'Sewaf' 'BpmXpdlBizagiReader' 'BpmCore' 'BpmRuntime' 'BpmWebBasic')].
		spec package: 'BpmWebBackoffice' with: [spec requires: #('Seaside3' 'Sewaf' 'BpmXpdlBizagiReader' 'BpmCore' 'BpmRuntime' 'BpmWebBasic')].
		spec package: 'BpmWebBusinessIntelligence' with: [spec requires: #('Seaside3' 'BpmBusinessIntelligence' 'BpmWebBackoffice' 'BpmWebFrontoffice')].
		spec package: 'BpmRuntimeDeployment' with: [spec requires: #('Seaside3' 'Sewaf' 'BpmWebBackoffice' 'BpmWebFrontoffice')].
		spec package: 'BpmRuntimeDeployment_Tests' with: [spec requires: #('BpmRuntimeDeployment')].
"		spec package: 'BpmWebBusinessIntelligence' with: [spec requires: #('BpmBusinessIntelligence' 'BpmWebBackoffice' 'BpmWebFrontoffice' 'HighchartsSt')]."
		spec package: 'BpmXpdlTemplates' with: [spec requires: #()].
		spec package: 'BpmWebRestApiLayer' with: [spec requires: #('BpmRuntime' 'Seaside3' 'XMLParser' 'XPath' 'XMLWriter' 'OrbeonPersistenceLayer')].
		spec package: 'BpmWebRestApiLayer_Tests' with: [spec requires: #('BpmWebRestApiLayer')].
		spec package: 'BpmXpdlBizagiReader_Tests' with: [spec requires: #('BpmXpdlBizagiReader' 'BpmXpdlTemplates')].
		spec package: 'BpmXpdl_Tests' with: [spec requires: #('BpmXpdl' 'BpmXpdlTemplates' 'BpmXpdlBizagiReader' 'OrbeonPersistenceLayer')].
		spec package: 'BpmRuntimePEF' with: [spec requires: #('OrbeonPersistenceLayer' 'BpmRuntime')].
		spec package: 'BpmCore_Tests' with: [spec requires: #('BpmCore' 'BpmRuntime' 'BpmXpdlTemplates')].
		spec package: 'BpmRuntime_Tests' with: [spec requires: #('BpmCore' 'BpmRuntime' 'BpmRuntimePEF' 'OrbeonPersistenceLayer' 'BpmXpdlTemplates')].
		spec package: 'BpmRuntime_Tests_Automatic' with: [spec requires: #('BpmRuntime_Tests')].

		spec
			group: 'core' with: #('BpmXpdlBizagiReader' 'BpmCore' 'BpmRuntime' 'BpmXpdl' 'BpmRuntimePEF'); 
			group: 'web-backoffice' with: #('BpmWebBasic' 'BpmWebBackoffice');
			group: 'web-frontoffice' with: #('BpmWebBasic' 'BpmWebFrontoffice');
			group: 'web-bi' with: #('BpmWebBasic' 'BpmWebBusinessIntelligence');
			group: 'rest' with: #('BpmWebRestApiLayer');
			group: 'test' with: #('BpmXpdlBizagiReader_Tests' 'BpmXpdl_Tests' 'BpmRuntimePEF' 'BpmCore_Tests' 'BpmRuntime_Tests' 'BpmRuntimeDeployment_Tests');
			group: 'default' with: #('core' 'web-backoffice' 'web-frontoffice' 'web-bi' 'rest' 'test').
		]