# spring-ws-wsaddressing-server
Server on spring boot 1.3.1
Supporting WS-Addressing.

Endpoint http://localhost:8080/ws/beers
WSDL http://localhost:8080/ws/beers.wsdl

Request example
```xml
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
	<SOAP-ENV:Header xmlns:wsa="http://www.w3.org/2005/08/addressing">
		<wsa:To SOAP-ENV:mustUnderstand="1">http://localhost:8080/ws/beers</wsa:To>
		<wsa:ReplyTo>
			<wsa:Address>http://localhost:8082/response</wsa:Address>
		</wsa:ReplyTo>
		<wsa:FaultTo>
			<wsa:Address>http://localhost:8082/fault</wsa:Address>
		</wsa:FaultTo>
		<wsa:Action>http://memorynotfound.com/getBeerRequest</wsa:Action>
		<wsa:MessageID>urn:uuid:ef05d4b7-a5ae-43f3-b84e-2317f7308507</wsa:MessageID>
	</SOAP-ENV:Header>
	<SOAP-ENV:Body>
		<ns2:getBeerRequest xmlns:ns2="http://memorynotfound.com/beer">
			<ns2:id>1</ns2:id>
		</ns2:getBeerRequest>
	</SOAP-ENV:Body>
</SOAP-ENV:Envelope>
```
