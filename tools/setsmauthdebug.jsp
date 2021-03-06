<%--
  Portions Copyrighted 2011-2014 Progress Software Corporation

  $Id: setsmauthdebug.jsp,v 1.5 2014/04/10 09:48:37 jah Exp $
--%>
<%@page import="com.sun.identity.shared.debug.Debug"%>
<%
String debugLevel = request.getParameter("debugLevel");
Debug debug = Debug.getInstance("SiteMinder");
if (debugLevel != null) {
  if (debugLevel.equalsIgnoreCase("message")) {
    debug.setDebug(Debug.MESSAGE);
  }
  else if (debugLevel.equalsIgnoreCase("warning")) {
    debug.setDebug(Debug.WARNING);
  }
  else if (debugLevel.equalsIgnoreCase("error")) {
    debug.setDebug(Debug.ERROR);
  }
}
%>
<html>
<head><title>Siteminder Authentication Debug Level</title>
</head>
<body>
    <p>
      SiteMinder Authentication Module debug level is set to
      <strong><%= debug.getState() %></strong>.
    </p>
    <p>
      0=OFF, 1=ERROR, 2=WARNING, 3=MESSAGE, 4=ON
    </p>
    <p>
</body>
</html>
