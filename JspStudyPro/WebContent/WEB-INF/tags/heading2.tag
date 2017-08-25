<%@ attribute name="align" required="true"%>
<%@ attribute name="bgColor" required="true"%>
<%@ attribute name="border" required="true"%>
<%@ attribute name="fgColor" required="true"%>
<%@ attribute name="font" required="true"%>
<%@ attribute name="size" required="true"%>

<table align="${align}" bgcolor="${bgColor}" border="${border}">
    <tr><th>
        <span style="color: ${fgColor}; font-family:${font}; font-size:${size}"><jsp:doBody /></span>
</table><br clear="all"><br>