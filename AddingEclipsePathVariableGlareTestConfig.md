# Introduction #
To run the test application in glare-dataservices-test, you need to a path variable to the Flex/Flash Builder environment. This variable is used by Eclipse to tell the compiler where to find the services-config.xml.

For your applications, you do not need this variable as you can specify the compiler options using an absolute file reference. It was introduced for this test application to handle the infamous path separator difference between Mac and PC.

# Details #
  * In the Preferences dialog, go to General->Workspace->Linked Resources
  * Enable linked resources
  * Add variable **GlareTestConfig** that refers to the file services-config.xml

# Example #
```
GlareTestConfig - C:\myworkspace\glare-dataservices-test\src\services-config.xml
```