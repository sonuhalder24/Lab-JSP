<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CodeLab - Dashboard</title>
</head>
<body>
    <div class="container">
        <h2>Dashboard</h2>
        
        <h3>My Repositories</h3>
        <ul>
            <c:forEach var="repo" items="${myrepos}">
                <li><a href="/dashboard/openrepo/${repo.repoAutoGenId}">${repo.repoName}</a></li>
            </c:forEach>
        </ul>

        <h3>All Repositories</h3>
        <ul>
            <c:forEach var="repo" items="${allrepos}">
                <li><a href="/dashboard/openrepo/${repo.repoAutoGenId}">${repo.repoName}</a></li>
            </c:forEach>
        </ul>

        <h3>Create New Repository</h3>
        <form action="/dashboard/createnewrepo" method="post">
            <div>
                <label for="repo_name">Repository Name:</label>
                <input type="text" id="repo_name" name="repo_name" required>
            </div>
            <input type="submit" name="create_repo_btn" value="Create">
        </form>
    </div>
</body>
</html>
