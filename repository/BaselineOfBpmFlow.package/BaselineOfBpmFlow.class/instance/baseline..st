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
		spec baseline: 'Jasvgi' with: [
			spec repository: 'github://brunobuzzi/JASVGI:master/repository'].
		spec baseline: 'OrbeonPersistenceLayer' with: [
			spec repository: 'github://brunobuzzi/OrbeonPersistenceLayer:master/repository' ].
		spec baseline: 'Seaside3' with: [
			spec repository: 'github://GsDevKit/Seaside31:gs_master/repository' ].
		spec baseline: 'Sewaf' with: [
			spec repository: 'github://brunobuzzi/SEWAF:master/repository' ].
"		spec baseline: 'HighchartsSt' with: [
			spec repository: 'github://brunobuzzi/HighchartsSt:v6.0.0gs/repository' ]."

		spec package: 'OrbeonBPMCore' with: [spec requires: #('AbstractApplicationObjects' 'XPath' 'OrbeonPersistenceLayer')].
		spec package: 'OrbeonBPMRuntime' with: [spec requires: #('OrbeonBPMCore')].
		spec package: 'OrbeonBizagiReader2' with: [spec requires: #('XMLParser' 'XPath')].
		spec package: 'OrbeonBPMXpdl' with: [spec requires: #('OrbeonBPMCore' 'OrbeonBizagiReader2')].
		spec package: 'OrbeonBizagiSvgConverter' with: [spec requires: #('Jasvgi')].
		spec package: 'OrbeonBPMBI' with: [spec requires: #('OrbeonBPMCore' 'OrbeonBPMRuntime')].
		spec package: 'OrbeonBPMWebBasic' with: [spec requires: #('OrbeonBPMCore' 'OrbeonBPMRuntime' 'Jasvgi')].
		spec package: 'OrbeonBPMWebFrontoffice' with: [spec requires: #('Sewaf' 'OrbeonBizagiReader2' 'OrbeonBPMCore' 'OrbeonBPMRuntime' 'OrbeonBizagiSvgConverter' 'OrbeonBPMWebBasic')].
		spec package: 'OrbeonBPMWebBackoffice' with: [spec requires: #('Sewaf' 'OrbeonBizagiReader2' 'OrbeonBPMCore' 'OrbeonBPMRuntime' 'OrbeonBizagiSvgConverter' 'OrbeonBPMWebBasic')].
		spec package: 'OrbeonBPMWebBI' with: [spec requires: #('OrbeonBPMBI' 'OrbeonBPMWebBackoffice' 'OrbeonBPMWebFrontoffice')].
"		spec package: 'OrbeonBPMWebBI' with: [spec requires: #('OrbeonBPMBI' 'OrbeonBPMWebBackoffice' 'OrbeonBPMWebFrontoffice' 'HighchartsSt')]."
		spec package: 'OrbeonBPM_Templates' with: [spec requires: #()].
		spec package: 'OrbeonPersistenceApiProcess' with: [spec requires: #('XMLParser' 'XPath' 'XMLWriter' 'OrbeonPersistenceLayer')].
		spec package: 'OrbeonBizagiReader2_Tests' with: [spec requires: #('OrbeonBizagiReader2' 'OrbeonBPM_Templates')].
		spec package: 'OrbeonBPMXpdl_Tests' with: [spec requires: #('OrbeonBPMXpdl' 'OrbeonBPM_Templates' 'OrbeonBizagiReader2')].
		spec package: 'OrbeonBPMRuntimePEF' with: [spec requires: #('OrbeonPersistenceLayer' 'OrbeonBPMRuntime')].
		spec package: 'OrbeonBPMCore_Tests' with: [spec requires: #('OrbeonBPMCore' 'OrbeonBPMRuntime' 'OrbeonBPM_Templates')].
		spec package: 'OrbeonBPMRuntime_Tests' with: [spec requires: #('OrbeonBPMCore' 'OrbeonBPMRuntime' 'OrbeonBPMRuntimePEF' 'OrbeonPersistenceLayer' 'OrbeonBPM_Templates')].

		spec
			group: 'core' with: #('OrbeonBizagiReader2' 'OrbeonBPMCore' 'OrbeonBPMRuntime' 'OrbeonBPMXpdl' 'OrbeonBizagiSvgConverter' 'OrbeonBPMRuntimePEF'); 
			group: 'web-backoffice' with: #('OrbeonBPMWebBasic' 'OrbeonBPMWebBackoffice');
			group: 'web-frontoffice' with: #('OrbeonBPMWebBasic' 'OrbeonBPMWebFrontoffice');
			group: 'web-bi' with: #('OrbeonBPMWebBasic' 'OrbeonBPMWebBI');
			group: 'rest' with: #('OrbeonPersistenceApiProcess');
			group: 'test' with: #('OrbeonBizagiReader2_Tests' 'OrbeonBPMXpdl_Tests' 'OrbeonBPMRuntimePEF' 'OrbeonBPMCore_Tests' 'OrbeonBPMRuntime_Tests');
			group: 'default' with: #('core' 'web-backoffice' 'web-frontoffice' 'web-bi' 'rest' 'test').
		]