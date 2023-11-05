<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl  id="example04" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
<head>
  <regionBase>
    <region id="rgBottomGrass" left="0" top="65" width="1280" height="551" zIndex="0" />
    <region id="rgSonic" left="300" top="65" width="307" height="523" zIndex="5" />
    <region id="rgComicSpeech" left="450" top="0" width="35%" height="35%" zIndex="6" />
  </regionBase>
  <descriptorBase>
    <descriptor id="descSonic" region="rgSonic" />
    <descriptor id="descBottomGrass" region="rgBottomGrass" />
    <descriptor id="descComicSpeech" region="rgComicSpeech" />
  </descriptorBase>
  <!-- -->
  <connectorBase>
    <causalConnector id="onBeginStart">
      <simpleCondition role="onBegin" />
      <simpleAction role="start" max="unbounded" delay="3s" qualifier="par" />
    </causalConnector>
    <causalConnector id="onBeginStop">
      <simpleCondition role="onBegin" />
      <simpleAction role="stop" max="unbounded" delay="6s" qualifier="par" />
    </causalConnector>
  </connectorBase>
</head>
<body>
  <!-- <port id="pMainPort0" component="imgSonic" /> -->
  <port id="pMainPort1" component="imgBottomGrass" />

  <media id="imgSonic" src="media/sonic-medium-00.png" descriptor="descSonic" />
  <media id="imgBottomGrass" src="media/grass-bottom-medium-00.png" descriptor="descBottomGrass" />
  <media id="imgComicSpeech" src="media/comics-speech-bubble-small-00.png" descriptor="descComicSpeech" />


  <link id="link01" xconnector="onBeginStart">
    <bind component="imgBottomGrass" role="onBegin" />
    <bind component="imgSonic" role="start" />
  </link>

  <link id="link02" xconnector="onBeginStop">
    <bind component="imgBottomGrass" role="onBegin" />
    <bind component="imgSonic" role="stop" />
  </link>

</body>
</ncl>
