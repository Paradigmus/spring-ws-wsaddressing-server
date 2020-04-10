# spring-ws-wsaddressing-server
Server on spring boot 1.3.1
Supporting WS-Addressing.

Endpoint http://localhost:8080/ws/beers
WSDL http://localhost:8080/ws/beers.wsdl

Request example
```xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:beer="http://memorynotfound.com/beer">
   <soapenv:Header xmlns:wsa="http://www.w3.org/2005/08/addressing">
      <wsa:Action soapenv:mustUnderstand="1">http://memorynotfound.com/getBeerRequest</wsa:Action>
      <wsa:ReplyTo soapenv:mustUnderstand="1">
         <wsa:Address>http://localhost:8082/response</wsa:Address>
      </wsa:ReplyTo>
      <wsa:MessageID soapenv:mustUnderstand="1">uuid:6456eaf1-54e3-421b-9411-8be432bd5891</wsa:MessageID>
      <wsa:To soapenv:mustUnderstand="1">http://localhost:8080/ws/beers</wsa:To>
   </soapenv:Header>
   <soapenv:Body>
      <beer:getBeerRequest>
         <beer:id>20</beer:id>
      </beer:getBeerRequest>
   </soapenv:Body>
</soapenv:Envelope>
```
