<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Error page when an export has failed
  --%>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
    prefix="fmt" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<dspace:layout locbar="link"
               parentlink="/mydspace"
               parenttitlekey="jsp.mydspace"
               title="jsp.mydspace.main.export.error.title">

<%-- <h1>Thank You</h1> --%>
<h1><fmt:message key="jsp.mydspace.main.export.error.title"/></h1>

    <%-- <p>The task is complete, and notification has been sent to the appropriate people.</p> --%>
    <p><fmt:message key="jsp.mydspace.main.export.error.toolarge"/></p>
 
    <%-- <p align="center"><a href="<%= request.getContextPath() %>/mydspace">Return to My DSpace </a></p> --%>
    <p align="center"><a href="<%= request.getContextPath() %>/mydspace">Return to My LASU IR</a></p>
 
</dspace:layout>
