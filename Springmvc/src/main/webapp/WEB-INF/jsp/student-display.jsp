<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>After Registration</title>
    <style>
     body{
        background-color: rgb(176, 204, 230);
        width:500px;
        margin-bottom: 50%;
        margin-left: auto;
        margin-right: auto;
        padding: 24px;
        border-radius: 20px;
        border:2px solid rgb(126, 113, 243);}
        </style>
</head>
<body>
    <p>
        Student Name : <span>${student.firstName}</span>&nbsp;<span>${student.lastName}</span>
    </p>
    <p> Email : <span>${student.email}</span>
    </p>
    <p>
        Country : <span>${student.country}</span>
    </p>
    <p>
        Favourite Language : <span>${student.language}</span>
    </p>
    <p>
        Operating Systems :
        <ul>
            <c:forEach var="temp" items="${student.operatingSystems}">
                <li> ${temp} </li>
            </c:forEach>
        </ul>
    </p>
</body>
</html>