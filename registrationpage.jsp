<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CodeLab - Registration</title>
</head>
<body>
    <div class="container">
        <h2>Create a CodeLabUser</h2>
        <form action="/register" method="post">
            <div>
                <label for="fullname">Full Name:</label>
                <input type="text" id="fullname" name="fullname" required>
            </div>
            <div>
                <label for="username">Username/Email:</label>
                <input type="email" id="username" name="username" required>
            </div>
            <div>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <input type="submit" name="submit" value="Register">
        </form>
    </div>
</body>
</html>
