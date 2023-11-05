<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl  id="example20" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
<head>
  <regionBase>
    <region id='luaRegion' width='100%' height='100%'/>
  </regionBase>
  <descriptorBase>
    <descriptor id='luaDesc' region='luaRegion' focusIndex='0'/>
  </descriptorBase>
</head>
<body>
  <port id="pMainPort" component="lua" />
  <media id="lua" src="main.lua" descriptor='luaDesc' />
  <media id='programSettings' type='application/x-ginga-settings'>
    <property name='service.currentKeyMaster' value='lua' />
  </media>
</body>
</ncl>
