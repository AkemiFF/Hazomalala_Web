{% extends "user_interface/layouts/main.tpl" %}{% load static %}


{% block css %}
<link rel="stylesheet" href="{% static 'css/accueil.css' %}">
{% endblock css %}

{% block content %}
<div class="content row">
    <div class="col-md-8 row">
        <div class="col-sm-2"></div>
        <div class="col-sm-3 article-container">
            {% include 'user_interface/include/product_container.tpl' with title="Produit" style="p-size-1" %}
        </div>
        <div class="col-sm-4">
            {% include 'user_interface/include/product_container.tpl' with title="Hooo" style="p-size-2" %}
        </div>
    </div>
    <div class="col-md-5">fd</div>
</div>
{% endblock content %}