{% load static %}
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hazomalala - plateforme de service intermédiaire dans le domaine de la santé</title>
    <link rel="stylesheet" href="{% static 'AdministrationPanel/resources/bootstrap/bootstrap.css' %}">
    <link rel="stylesheet" href="{% static 'AdministrationPanel/css/style.css' %}">
    <link rel="stylesheet" href="{% static 'AdministrationPanel/css/dashboard.css' %}">
    <link rel="stylesheet" href="{% static 'AdministrationPanel/css/feature.css' %}">
    <link rel="stylesheet" href="{% static 'AdministrationPanel/css/header.css' %}">
    <link rel="stylesheet" href="{% static 'AdministrationPanel/css/login.css' %}">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.9/flatpickr.min.css">
    <link rel="stylesheet" href="{% static 'AdministrationPanel/resources/fontawesome/all.css' %}">
    <link rel="stylesheet" href="{% static 'AdministrationPanel/resources/fontawesome/brands.css' %}">
    <link rel="icon" href="{% static 'AdministrationPanel/images/icons/hazomalala.ico' %}" type="image/x-icon">
</head>

{% block body %}
<body>
    {% block header %}
    {% endblock %}

    {% block main %}
    {% endblock %}

    {% block section %}
    {% endblock %}

    {% block footer %}
    {% endblock %}
</body>

<script src="{% static 'AdministrationPanel/js/feature.js' %}"></script>
<script src="{% static 'AdministrationPanel/js/dashboard.js' %}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.9/flatpickr.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.9/l10n/fr.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="{% static 'AdministrationPanel/resources/bootstrap/bootstrap.bundle.js' %}"></script>
{% endblock %}
</html>

