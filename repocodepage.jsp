<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CodeLab - Repository Code</title>
</head>
<body>
    <div class="container">
        <h2>${repo.repoName} - Version ${version}</h2>

        <h3>Files</h3>
        <ul>
            <c:forEach var="entry" items="${repoCode}">
                <li>
                    <span onclick="openFile('${entry.key}')" style="cursor:pointer;">${entry.key}</span>
                </li>
            </c:forEach>
        </ul>

        <form action="/dashboard/savecode/${repo.repoAutoGenId}/${version}" method="post">
            <input type="hidden" name="filename" id="filename" value="">
            <textarea name="code" id="codeEditor" style="display:none;"></textarea>
            <input type="submit" value="Save">
        </form>
    </div>

    <script type="text/javascript">
        var repoFiles = {};
        <c:forEach var="entry" items="${repoCode}">
        repoFiles['${entry.key}'] = '<c:forEach var="line" items="${entry.value}" varStatus="lineStatus"><c:if test="${lineStatus.index == 1}">${line}</c:if></c:forEach>';
        </c:forEach>

        function openFile(name) {
            var editor = document.getElementById('codeEditor');
            editor.style.display = 'block';
            editor.value = repoFiles[name];
            document.getElementById('filename').value = name;
        }
    </script>
</body>
</html>
