<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CodeLab - Repository</title>
</head>
<body>
    <h2>${repo.repoName}</h2>
    <p>${repoOwner.fullname}</p>
    <c:forEach var="ver" items="${repo.versions}">
        <p><a href="/dashboard/openrepo/${repo.repoAutoGenId}/version/${ver.version}">version ${ver.version}</a></p>
    </c:forEach>

    <h3>Upload Code</h3>
    <form action="/dashboard/uploadcode/${repo.repoAutoGenId}" method="post">
        <input type="text" name="file">
        <input type="submit" name="file_submit_btn" value="Upload">
    </form>

    <h3>Add Developer</h3>
    <form action="/dashboard/adddeveloper/${repo.repoAutoGenId}" method="post">
        <input type="text" name="developer">
        <input type="submit" name="add_developer_btn" value="Add Developer">
    </form>
</body>
</html>
