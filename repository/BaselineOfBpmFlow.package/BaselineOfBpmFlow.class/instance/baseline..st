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

		spec package: 'OrbeonBPMCore' with: [spec requires: #('AbstractApplicationObjects' 'XPath' 'OrbeonPersistenceLayer')].
		spec package: 'OrbeonBPMRuntime' with: [spec requires: #('OrbeonBPMCore')].
		spec package: 'OrbeonBizagiReader2' with: [spec requires: #('XMLParser' 'XPath')].
		spec package: 'OrbeonBPMXpdl' with: [spec requires: #('OrbeonBPMCore' 'OrbeonBizagiReader2')].
		spec package: 'OrbeonBizagiSvgConverter' with: [spec requires: #('Jasvgi')].
		spec package: 'OrbeonBPMWebBasic' with: [spec requires: #('OrbeonBPMCore' 'OrbeonBPMRuntime' 'Jasvgi')].
		spec package: 'OrbeonBPMWeb' with: [spec requires: #('Sewaf' 'OrbeonBizagiReader2' 'OrbeonBPMCore' 'OrbeonBPMRuntime' 'OrbeonBizagiSvgConverter' 'OrbeonBPMWebBasic')].
		spec package: 'OrbeonBPMWebBackoffice' with: [spec requires: #('Sewaf' 'OrbeonBizagiReader2' 'OrbeonBPMCore' 'OrbeonBPMRuntime' 'OrbeonBizagiSvgConverter' 'OrbeonBPMWebBasic')].
		spec package: 'OrbeonPersistenceApiProcess' with: [spec requires: #('XMLParser' 'XPath' 'XMLWriter' 'OrbeonPersistenceLayer')].
		spec package: 'OrbeonBizagiReader2_Tests' with: [spec requires: #('OrbeonBizagiReader2')].
		spec package: 'OrbeonBPMXpdl_Tests' with: [spec requires: #('OrbeonBPMXpdl')].
		spec package: 'OrbeonBPMRuntime_Tests' with: [spec requires: #('OrbeonBPMCore' 'OrbeonBPMRuntime')].

		spec
			group: 'core' with: #('OrbeonBizagiReader2' 'OrbeonBPMCore' 'OrbeonBPMRuntime' 'OrbeonBPMXpdl' 'OrbeonBizagiSvgConverter'); 
			group: 'web-backoffice' with: #('OrbeonBPMWebBackoffice');
			group: 'web-frontoffice' with: #('OrbeonBPMWeb');
			group: 'rest' with: #('OrbeonPersistenceApiProcess');
			group: 'test' with: #('OrbeonBizagiReader2_Tests' 'OrbeonBPMXpdl_Tests' 'OrbeonBPMRuntime_Tests');
			group: 'default' with: #('core' 'web-backoffice' 'web-frontoffice' 'rest' 'test').
		]