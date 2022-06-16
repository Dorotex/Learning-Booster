<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form"

           uri="http://www.springframework.org/tags/form" %>


<html>

<head>

    <title>EDYCJA OCENY </title>

</head>

<body>

<c:url var="edit_url" value="/rating/edit"/>

<h3> EDYTUJ LINK DODANY DO OCENY </h3>
<br>


<form:form method="post" modelAttribute="ocena" action="${edit_url}">

    <form:hidden path="id"/>

    <form:hidden path="link.id"/>

    <label for="link.nazwa">NAZWA</label>
    <form:input path="link.nazwa"/>
    <form:errors path="link.nazwa"/><br/>

    <label for="link.link">LINK</label>
    <form:input path="link.link"/>
    <form:errors path="link.link"/><br/>

    <label for="ocenaKoncowa">OCENA KOŃCOWA</label>
    <form:input path="ocenaKoncowa"/>
    <form:errors path="ocenaKoncowa"/><br/>

    <label for="ocenaNotatki">NOTATKI PO REALIZACJI</label>
    <form:input path="ocenaNotatki"/>
    <form:errors path="ocenaNotatki"/><br/>


    <input type="submit" value="Zapisz">

</form:form>

<br>
<a href="/Home/"> Powrót na stronę główną </a>
<br>


<br> <a href =/Home/links/all\> Powrót na stronę wszystkich linków </a>

<br>

<br> <a href =/Home/realization/all> Powrót na stronę linków dodanych do realizacji </a>

<br>

<br> <a href =/Home/rating/all> Powrót na stronę linków dodanych do oceny </a>

</body>

</html>