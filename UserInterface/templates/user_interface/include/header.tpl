{% load static %}
<header class="ui_header">
    <div class="logo">
        <!-- <img src="{% static 'img/logo/PNG/Bleu sans texte.png' %}" class="logo1" alt=""> -->
        <img src="{% static 'img/logo/PNG/Verticale Bleu nuit.png' %}" class="logo2" alt="">
    </div>
    <ul class="nav nav-tabs nav-bar">
        {% include 'user_interface/include/navbar.tpl' %}
    </ul>
    <div class="user-logo-container">
        <i class="fa fa-user" aria-hidden="true"></i>
    </div>
</header>