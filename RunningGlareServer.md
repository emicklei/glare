# Introduction #
**GlareServer** is the web server that can dispatch AMF messages to Smalltalk services and send back the AMF repsonse to the client. GlareServer is written using the Opentalk framework available in Cincom VisualWorks.

### Start ###
To start the GlareServer, evaluate:
```
GlareServer current start
```
The endpoint url of the Flex services-config.xml is:
```
http://localhost:8888/amf
```
The configuration of services and aliasses can be viewed here:
```
http://localhost:8888
```
Stop the server by evaluating:
```
GlareServer current stop
```
### Debugging ###
### Logging ###