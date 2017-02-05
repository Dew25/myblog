<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1>Добро пожаловать в закрытый раздел, ${name}!</h1>
<p><a href="private?logout">logout</a>
<form action="private" method="POST" name="add_article">
    <p class="line-form"><input type="text" name="title" placeholder="Заголовок статьи"> </p>
    <p class="line-form"><textarea name="text" placeholder="Полный текст статьи"></textarea> </p>
    <p class="line-form"><input type="submit" value="Отправить"></p>
</form>