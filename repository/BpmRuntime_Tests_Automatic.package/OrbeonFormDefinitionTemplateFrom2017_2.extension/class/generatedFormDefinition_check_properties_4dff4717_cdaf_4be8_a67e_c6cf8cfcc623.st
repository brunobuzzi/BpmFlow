*bpmruntime_tests_automatic-automatically generated
generatedFormDefinition_check_properties_4dff4717_cdaf_4be8_a67e_c6cf8cfcc623
^'<xh:html xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:saxon="http://saxon.sf.net/" xmlns:sql="http://orbeon.org/oxf/xml/sql" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:fb="http://orbeon.org/oxf/xml/form-builder">
   <xh:head>
        <xh:meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <xh:title>Check Properties</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
         
         <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <internal-section>
                        <s/>
                        <k/>
                        <uuid/>
                        <oop/>
                        <assignmentOop/>
                    </internal-section>
                    <section-11>
                        <username/>
                        <rol/>
                        <processId/>
                    </section-11>
                    <section-12>
                        <citizenName/>
                        <citizenSurname/>
                        <originCountry/>
                        <citizenId/>
                    </section-12>
                    <section-16>
                        <propertiesDetails/>
                    </section-16>
                </form>
            </xf:instance>
            
         <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="internal-section-bind" name="internal-section" ref="internal-section">
                    <xf:bind id="s-bind" name="s" ref="s" xxf:default="xxf:get-request-parameter(''s'')" required="true()" readonly="true()" calculate="xxf:get-request-parameter(''s'')"/>
                    <xf:bind id="k-bind" ref="k" name="k" xxf:default="xxf:get-request-parameter(''k'')" required="true()" readonly="true()" calculate="xxf:get-request-parameter(''k'')"/>
                    <xf:bind id="uuid-bind" ref="uuid" name="uuid" xxf:default="xxf:get-request-parameter(''token'')" required="true()" readonly="true()" calculate="xxf:get-request-parameter(''token'')"/>
                    <xf:bind id="oop-bind" ref="oop" name="oop" xxf:default="xxf:get-request-parameter(''oop'')" required="true()" readonly="true()" calculate="xxf:get-request-parameter(''oop'')"/>
                    <xf:bind id="assignmentOop-bind" ref="assignmentOop" name="assignmentOop" required="true()" readonly="true()" calculate="xxf:get-request-parameter(''oop2'')" xxf:default="xxf:get-request-parameter(''oop2'')"/>
                </xf:bind>
                <xf:bind id="section-11-bind" ref="section-11" name="section-11">
                    <xf:bind id="username-bind" ref="username" name="username" required="true()" readonly="true()"/>
                    <xf:bind id="processId-bind" ref="processId" name="processId" required="true()" readonly="true()"/>
                    <xf:bind id="rol-bind" ref="rol" name="rol" required="true()" readonly="true()"/>
                </xf:bind>
                <xf:bind id="section-12-bind" ref="section-12" name="section-12">
                    <xf:bind id="citizenName-bind" ref="citizenName" name="citizenName" required="true()" readonly="true()"/>
                    <xf:bind id="citizenSurname-bind" ref="citizenSurname" name="citizenSurname" required="true()" readonly="true()"/>
                    <xf:bind id="originCountry-bind" ref="originCountry" name="originCountry" required="true()" readonly="true()"/>
                    <xf:bind id="citizenId-bind" ref="citizenId" name="citizenId" required="true()" type="xs:positiveInteger" readonly="true()"/>
                </xf:bind>
                <xf:bind id="section-16-bind" ref="section-16" name="section-16">
                    <xf:bind id="propertiesDetails-bind" ref="propertiesDetails" name="propertiesDetails" required="true()"/>
                </xf:bind>
            </xf:bind>
            
         <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>ue</application-name>
                    <form-name>check-properties</form-name>
                    <title xml:lang="en">Check Properties</title>
                    <description xml:lang="en">Check Properties</description>
                    <title xml:lang="es">Petición de Permiso de Construccion CASA</title>
                    <description xml:lang="es"/>
                    <singleton>false</singleton>
                <available>true</available></metadata>
            </xf:instance>
            
         <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments>
                    <css mediatype="text/css" filename="" size=""/>
                    <pdf mediatype="application/pdf" filename="" size=""/>
                </attachments>
            </xf:instance>
            
         
         <xf:instance id="fr-form-resources" xxf:readonly="false" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <propertiesDetails>
                            <label>Properties Details</label>
                            <hint/>
                        </propertiesDetails>
                        <citizenName>
                            <label>Name</label>
                            <hint/>
                        </citizenName>
                        <citizenSurname>
                            <label>Surname</label>
                            <hint/>
                        </citizenSurname>
                        <originCountry>
                            <label>Origin Country</label>
                            <hint/>
                            <item>
                                <label>Uruguay</label>
                                <value>uruguay</value>
                            </item>
                            <item>
                                <label>Argentina</label>
                                <value>argentina</value>
                            </item>
                            <item>
                                <label>Brasil</label>
                                <value>brasil</value>
                            </item>
                        </originCountry>
                        <citizenId>
                            <label>Personal Id Number</label>
                            <hint/>
                        </citizenId>
                        <username>
                            <label>User</label>
                            <hint/>
                        </username>
                        <rol>
                            <label>Rol</label>
                            <hint/>
                        </rol>
                        <processId>
                            <label>Process Id</label>
                            <hint/>
                        </processId>
                        <section-12>
                            <label>Citizen Data</label>
                            <help/>
                        </section-12>
                        <section-16>
                            <label>Properties</label>
                            <help/>
                        </section-16>
                        <internal-section>
                            <label>Internal Section</label>
                        </internal-section>
                        <s>
                            <label>S</label>
                            <hint/>
                        </s>
                        <k>
                            <label>K</label>
                            <hint/>
                        </k>
                        <uuid>
                            <label>UUID</label>
                            <hint/>
                        </uuid>
                        <oop>
                            <label>OOP</label>
                            <hint/>
                        </oop>
                        <assignmentOop>
                            <label>OOP2</label>
                            <hint/>
                        </assignmentOop>
                        <section-11>
                            <label>Usuario</label>
                            <help/>
                        </section-11>
                    </resource>
                    <resource xml:lang="es">
                        <propertiesDetails>
                            <label/>
                            <hint/>
                        </propertiesDetails>
                        <citizenName>
                            <label/>
                            <hint/>
                        </citizenName>
                        <citizenSurname>
                            <label/>
                            <hint/>
                        </citizenSurname>
                        <originCountry>
                            <label/>
                            <hint/>
                            <item>
                                <label>Uruguay</label>
                                <value>uruguay</value>
                            </item>
                            <item>
                                <label>Argentina</label>
                                <value>argentina</value>
                            </item>
                            <item>
                                <label>Brasil</label>
                                <value>brasil</value>
                            </item>
                        </originCountry>
                        <citizenId>
                            <label/>
                            <hint/>
                        </citizenId>
                        <username>
                            <label>User</label>
                            <hint/>
                        </username>
                        <rol>
                            <label>Rol</label>
                            <hint/>
                        </rol>
                        <processId>
                            <label>Form Id</label>
                            <hint/>
                        </processId>
                        <section-12>
                            <label/>
                            <help/>
                        </section-12>
                        <section-16>
                            <label/>
                            <help/>
                        </section-16>
                        <internal-section>
                            <label>Internal Section</label>
                        </internal-section>
                        <s>
                            <label>S</label>
                            <hint/>
                        </s>
                        <k>
                            <label>K</label>
                            <hint/>
                        </k>
                        <uuid>
                            <label>UUID</label>
                            <hint/>
                        </uuid>
                        <oop>
                            <label>OOP</label>
                            <hint/>
                        </oop>
                        <assignmentOop>
                            <label/>
                            <hint/>
                        </assignmentOop>
                        <section-11>
                            <label>Usuario</label>
                            <help/>
                        </section-11>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance id="security-token-instance" class="fr-service" xxf:exclude-result-prefixes="#all">
                <body xmlns:secure="java:org.orbeon.oxf.util.SecureUtils" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder">&lt;uuid&gt;&lt;/uuid&gt;</body>
            </xf:instance>
            <xf:submission id="security-token-submission" class="fr-service" ref="instance(''fr-service-request-instance'')" resource="http://gemstoneIP:8787/orbeon-gemstone-api/securityToken?token={xxf:get-request-parameter(''token'')}" method="get" serialization="application/xml" mediatype="application/xml" replace="instance" instance="fr-service-response-instance"/>
            
            
            <xf:action id="security-action-binding">
            
            <xf:action event="fr-run-form-load-action-after-controls" ev:observer="fr-form-model" if="true()">
               
               <xf:send submission="security-token-submission"/>            
                </xf:action> 
                
            <xf:action event="xforms-submit" ev:observer="security-token-submission">
               
               <xf:var name="request-instance-name" value="''security-token-instance''" as="xs:string"/>
                    
               <xf:insert ref="instance(''fr-service-request-instance'')" origin="saxon:parse(instance($request-instance-name))"/>
                    
               
               <xf:action context="instance(''fr-service-request-instance'')">
                  
               </xf:action>
                </xf:action>
                
            <xf:action event="xforms-submit-done" ev:observer="security-token-submission" context="instance(''fr-service-response-instance'')">
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''username''"/>
                        <xf:var name="control-value" value="/result/username"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''citizenName''"/>
                        <xf:var name="control-value" value="/result/citizenName"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''citizenSurname''"/>
                        <xf:var name="control-value" value="/result/citizenSurname"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''originCountry''"/>
                        <xf:var name="control-value" value="/result/originCountry"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''citizenId''"/>
                        <xf:var name="control-value" value="/result/citizenId"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''rol''"/>
                        <xf:var name="control-value" value="/result/rol"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''processId''"/>
                        <xf:var name="control-value" value="/result/processid"/>
                    </xf:action>
                    
            </xf:action>
            </xf:action>
        </xf:model>
   </xh:head>
   <xh:body>
        <fr:view>
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="internal-section-control" bind="internal-section-bind">
                    <xf:label ref="$form-resources/internal-section/label"/>
                    <fr:grid id="grid-1-grid">
                        <fr:c y="1" x="1" w="4">
                                <xf:input id="s-control" bind="s-bind">
                                    <xf:label ref="$form-resources/s/label"/>
                                    <xf:hint ref="$form-resources/s/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="5" w="4">
                                <xf:input id="k-control" bind="k-bind">
                                    <xf:label ref="$form-resources/k/label"/>
                                    <xf:hint ref="$form-resources/k/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="9" w="4">
                                <xf:input id="uuid-control" bind="uuid-bind">
                                    <xf:label ref="$form-resources/uuid/label"/>
                                    <xf:hint ref="$form-resources/uuid/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="4">
                                <xf:input id="oop-control" bind="oop-bind">
                                    <xf:label ref="$form-resources/oop/label"/>
                                    <xf:hint ref="$form-resources/oop/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="5" w="4">
                                <xf:input id="assignmentOop-control" bind="assignmentOop-bind">
                                    <xf:label ref="$form-resources/assignmentOop/label"/>
                                    <xf:hint ref="$form-resources/assignmentOop/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="9" w="4"/>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-11-control" bind="section-11-bind">
                    <xf:label ref="$form-resources/section-11/label"/>
                    <fr:grid id="grid-2-grid">
                        <fr:c y="1" x="1" w="4">
                                <xf:input id="username-control" bind="username-bind">
                                    <xf:label ref="$form-resources/username/label"/>
                                    <xf:hint ref="$form-resources/username/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="5" w="4">
                                <xf:input id="rol-control" bind="rol-bind">
                                    <xf:label ref="$form-resources/rol/label"/>
                                    <xf:hint ref="$form-resources/rol/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="9" w="4">
                                <xf:input id="processId-control" bind="processId-bind">
                                    <xf:label ref="$form-resources/processId/label"/>
                                    <xf:hint ref="$form-resources/processId/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-12-control" bind="section-12-bind">
                    <xf:label ref="$form-resources/section-12/label"/>
                    <fr:grid id="grid-3-grid">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="citizenName-control" bind="citizenName-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/citizenName/label"/>
                                    <xf:hint ref="$form-resources/citizenName/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="citizenSurname-control" bind="citizenSurname-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/citizenSurname/label"/>
                                    <xf:hint ref="$form-resources/citizenSurname/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="6">
                                <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="originCountry-control" bind="originCountry-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/originCountry/label"/>
                                    <xf:hint ref="$form-resources/originCountry/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/originCountry/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:dropdown-select1>
                            </fr:c>
                        <fr:c y="2" x="7" w="6">
                                <xf:input id="citizenId-control" bind="citizenId-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/citizenId/label"/>
                                    <xf:hint ref="$form-resources/citizenId/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-16-control" bind="section-16-bind">
                    <xf:label ref="$form-resources/section-16/label"/>
                    <fr:grid id="grid-4-grid">
                        <fr:c y="1" x="1" w="12">
                                <fr:tinymce xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" xmlns:f="http://orbeon.org/oxf/xml/formatting" id="propertiesDetails-control" bind="propertiesDetails-bind">
                                    <xf:label ref="$form-resources/propertiesDetails/label"/>
                                    <xf:hint ref="$form-resources/propertiesDetails/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:tinymce>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
   </xh:body>
</xh:html>'