<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl  id="example04" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
<head>
  <regionBase>
    <region id="rgImage" left="525" top="100" width="25%" height="25%" />
  </regionBase>
  <descriptorBase>
    <descriptor id="descImage" region="rgImage" />
  </descriptorBase>
</head>
<body>
  <port id="pMainPort" component="image" />
  <media id="image" src="media/backgroundPassive.png" descriptor="descImage">
  </media>
</body>
</ncl>
