<%@ tag display-name="Webjars script or style tag" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wj" uri="http://www.webjars.org/tags" %>
<%@ taglib prefix="webjars" tagdir="/WEB-INF/tags/webjars" %>
<%@ attribute name="path" type="java.lang.String" description="The webjar path" required="false" %>
<%@ attribute name="prefix" type="java.lang.String" description="The webjar prefix" required="false" %>
<c:choose>
    <c:when test="${not empty path}">
        <wj:locate path="${path}" var="src">
            <c:choose>
                <c:when test="${src.endsWith('.js')}">
                    <script type="text/javascript" src="<webjars:url path="${src}"/>"></script>
                </c:when>
                <c:when test="${src.endsWith('.css')}">
                    <link type="text/css" href="<webjars:url path="${src}"/>" rel="stylesheet"/>
                </c:when>
            </c:choose>
        </wj:locate>
    </c:when>
    <c:when test="${not empty prefix}">
        <wj:locate prefix="${prefix}" var="src">
            <c:choose>
                <c:when test="${src.endsWith('.js')}">
                    <script type="text/javascript" src="<webjars:url path="${src}"/>"></script>
                </c:when>
                <c:when test="${src.endsWith('.css')}">
                    <link type="text/css" href="<webjars:url path="${src}"/>" rel="stylesheet"/>
                </c:when>
            </c:choose>
        </wj:locate>
    </c:when>
</c:choose>