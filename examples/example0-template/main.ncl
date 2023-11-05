<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl  id="example01" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
<head>
  <regionBase>
    <!-- ??? -->
    <region id="rgFullscreen" width="100%" height="100%" left="0" top="0" zIndex="0" />
    <!-- ??? -->
    <!-- <region id="rgImage01" width="464px" height="45px" zIndex="9" /> -->
    <!-- animGar.mp4 -->
    <!-- <region id="rgAnimGar" width="640px" height="480px" zIndex="1" /> -->
    <!-- drible.mp4 -->
    <region id="rgDrible" width="18.5%" height="18.5%" left="5%" top="6.7%" zIndex="3" />
    <!-- shoes.mp4 -->
    <!-- <region id="rgVideo02" width="640px" height="480px" zIndex="1" /> -->
  </regionBase>
  <descriptorBase>
    <!-- ??? -->
    <!-- <descriptor id="descImage01" region="rgImage01" /> -->
    <!-- animGar.mp4 -->
    <!-- <descriptor id="descAnimGar" region="rgAnimGar" /> -->
    <!-- drible.mp4 -->
    <descriptor id="descDrible" region="rgDrible" />
    <!-- shoes.mp4 -->
    <!-- <descriptor id="descVideo02" region="rgVideo02" /> -->
  </descriptorBase>

  <connectorBase>
    <!-- 'id' definido aqui, é utilizado no 'link' -->
    <causalConnector id="onBeginStart_delay">
      <connectorParam name="delay" />
      <simpleCondition role="onBegin" />
      <simpleAction role="start" delay="$delay" max="unbounded" qualifier="par" />
    </causalConnector>
    <!-- -->
    <causalConnector id="onBeginStart">
      <simpleCondition role="onBegin" />
      <simpleAction role="start" max="unbounded" qualifier="par" />
    </causalConnector>
    <!-- -->
    <causalConnector id="onEndStop">
      <simpleCondition role="onEnd" />
      <simpleAction role="stop" max="unbounded" qualifier="par" />
    </causalConnector>
  </connectorBase>

</head>



<body>
  <!--
    'port' indica por onde pode começar uma exibição do documento
  -->
  <port id="pMainAnimGar" component="animation" />
<!--
  <port id="pMainImage01" component="image01" />
  <port id="pMainVideo01" component="video01" />
-->

<!--
  <media id="tv" src="sbtvd-ts://program_number.component_tag" />
-->

<!--
  'area' delimita trechos tempo ou espaço do conteúdo
  do seu objeto de mídia pai. 'begin' foi definido mas
  'end' tem valor default, que é final do vídeo da animação
  atributo 'id' definido

  'property' da mídia
    <property name="left" value="5%" />
    <property name="top" value="6.7%" />
    <property name="width" value="18.5%" />
    <property name="heigth" value="18.5%" />
    <property name="zIndex" value="3" />
    <property name="explicitDur" value="5" />

-->

<!-- Pictures -->
  <!-- <media id="image01" src="media/anim_green.png" descriptor="descImage01" /> -->

<!-- Videos -->
  <media id="animation" src="media/animGar.mp4">
    <area id="segDrible" begin="12s" />
    <area id="segPhoto" begin="41s" />
    <property name="width" value="100%" />
    <property name="heigth" value="100%" />
    <property name="zIndex" value="2" />
  </media>
  <media id="drible" src="media/drible.mp4" descriptor="descDrible">
<!--
    <property name="left" value="5%" />
    <property name="top" value="6.7%" />
    <property name="width" value="18.5%" />
    <property name="heigth" value="18.5%" />
    <property name="zIndex" value="3" />
-->
  </media>

  <!-- <media id="video02" src="media/shoes.mp4" descriptor="descVideo02" /> -->

<!-- Audios -->
  <media id="choro" src="media/choro.mp4" />

<!--
  'link' define relacionamentos
-->
  <link id="linkMusic" xconnector="onBeginStart_delay">
    <bind role="onBegin" component="animation" />
    <bind role="start" component="choro">
      <bindParam name="delay" value="5s" />
    </bind>
  </link>
  <link id="linkDrible" xconnector="onBeginStart">
    <bind role="onBegin" component="animation" interface="segDrible" />
    <bind role="start" component="drible" />
  </link>
  <link id="linkEnd" xconnector="onEndStop">
    <bind role="onEnd" component="animation" />
    <bind role="stop" component="choro" />
  </link>
</body>
</ncl>
