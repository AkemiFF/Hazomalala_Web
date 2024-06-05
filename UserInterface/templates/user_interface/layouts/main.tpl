{% load static %}
<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{% block title %}Hazomalala{% endblock title %}</title>
    <link rel="stylesheet" href="{% static 'css/bootstrap/bootstrap.css' %}">
    <link rel="stylesheet" href="{% static 'css/bootstrap/bootstrap.min.css'' %}">
    <link rel="stylesheet" href="{% static 'fonts/font-awesome/css/font-awesome.css' %}">
    <link rel="stylesheet" href="{% static 'css/include.css' %}">
    <link rel="stylesheet" href="{% static 'css/main.css' %}">
    {% block css %}

    {% endblock css %}
</head>

<body>
    {% include "user_interface/include/header.tpl" %}
    {% block content %}{% endblock content %}
    {% include "user_interface/include/footer.tpl" %}
</body>

</html>