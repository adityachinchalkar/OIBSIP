<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Student Registration Form</title>
      <style>
             body {background-color: rgb(176, 204, 230);
                 }
             h1   {color: blue;
                 margin-left: 40%;}
             form{
         background-color: white;
         width:300px;
         margin-left: auto;
         margin-right: auto;
         padding: 24px;
         border-radius: 20px;
         border:2px solid rgb(126, 113, 243);}

         input{
         border-radius:5px;
         border:3px;
         }

         #submit{
         background-color: rgb(49, 8, 231);
         padding: 10px;
         font-size: large;
         border-radius: 10px;
         color:white;


             </style>
</head>
<body>
    <h1>Registration Form</h1>
    <div>
    <form:form action="processForm" modelAttribute="student">
       <p> First Name (*)</p> <form:input path="firstName" placeholder="Enter first name" />
         <form:errors path="firstName" cssClass="error"/>
        <br><br>
        <p>Last Name (*)</p> <form:input path="lastName" placeholder="Enter last name" />
         <form:errors path="lastName" cssClass="error"/><br><br>
         <p> Email (*)</p> <form:input type="email" path="Email" placeholder="Enter Email" />
                  <form:errors path="email" cssClass="error"/>
        <br><br>
        Select Country :
        <form:select path="country">
        	<form:options items="${student.countryOptions}"/>
        </form:select>
        <br><br>
        Favourite Language:<br>
        Java <form:radiobutton path="language" value="Java" />
        C# <form:radiobutton path="language" value="C#" />
        Python <form:radiobutton path="language" value="Python" />
        Go Lang <form:radiobutton path="language" value="Go Lang" />
        <br><br>
        Operating Systems:<br>
        Windows 7 <form:checkbox path="operatingSystems" value="Windows 7" />
        Windows 10 <form:checkbox path="operatingSystems" value="Windows 10" />
        Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
        Linux <form:checkbox path="operatingSystems" value="Linux" />
        <br><br>
        <input type="submit" value="submit" id="submit" class="input"/>
    </form:form>
    </div>
</body>
</html>