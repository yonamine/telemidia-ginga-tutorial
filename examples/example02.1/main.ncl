<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl  id="example02.1" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
<head>
  <regionBase>
    <region id="rgText" left="10" top="10" width="640" height="200" />
  </regionBase>
  <descriptorBase>
    <descriptor id="descText" region="rgText" />
  </descriptorBase>
</head>
<body>
  <port id="pMainPort" component="hello" />
  <media id="hello" src="media/hello.txt" type="text/plain" descriptor="descText">
    <property name="fontColor" value="white" />
    <property name="fontSize" value="36" />
    <property name="fontStyle" value="italic" />
    <property name="fontVariant" value="small-caps" />
    <property name="fontWeight" value="bold" />
    <property name="background" value="blue" />
    <property name="textAlign" value="justified" /> <!-- Should it work? -->
  </media>
</body>
</ncl>
