<%-- JSP Compile Error --%>
<%--   The type java.io.ObjectInputStream cannot be resolved. It is indirectly referenced from required .class files --%>
<%--   Solution: JDK version down to "javac 1.8.0_77" --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${user != null}">
			<p>
				Welcome, ${user.email}!
				You can <a href="${logoutUrl}"> sign out</a>.
			</p>
		</c:when>
		<c:otherwise>
			<p>
				Welcome!
				<a href="${loginUrl}">Sign in or register</a> to customize.
			</p>
		</c:otherwise>
	</c:choose>
	<p>The time is: ${currentTime}</p>
	
	<c:if test="${user != null}">
		<form action="/prefs" method="post">
			<label for="tz_offset">
				Timezone offset from UTC (can be negative):
			</label>
			<input name="tz_offset" id="tz_offset" type="text" size="4" value="${tzOffset}" />
			<input type="submit" value="Set" />
		</form>
	</c:if>
</body>
</html>