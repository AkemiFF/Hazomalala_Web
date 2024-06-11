{% extends 'layout/main.tpl' %}
{% load static %}

{% block header %}
    <header class = "custom-menu-container bg-cloud-blue shadow-sm">
        <div class = "mt-3">
            <a href="" class = "text-marin-blue exo2-font fw-bolder fs-5 text-decoration-none ms-4 me-3"><img src="{% static 'AdministrationPanel/images/logo/PNG/logo-hazomalala-bleu-nuit.png' %}" alt="Logo de Hazomalala" class = "img-fluid custom-logo-img-dashboard">  
                HAZOMALALA
            </a>
        </div>
       
        <hr class = "mx-3">

        <nav class = "navbar-nav nav-pills mt-4">
            <a href="" class = "nav-link mt-2 custom-ps-menu bg-hover fw-bolder"> <img src="{% static 'AdministrationPanel/images/icons/dashboard.png'%}" alt="Icone dashboard" class = "me-3 custom-menu-icon">Tableau de bord</a>
            <a href="" class = "nav-link mt-2 custom-ps-menu bg-hover fw-bolder"> <img src="{% static 'AdministrationPanel/images/icons/history.png'%}" alt="Icone historique" class = "me-3 custom-menu-icon">Historique</a>
            <a href="" class = "nav-link mt-2 custom-ps-menu bg-hover fw-bolder"> <img src="{% static 'AdministrationPanel/images/icons/stock.png'%}" alt="Icone stock" class = "me-3 custom-menu-icon">Stock</a>
            <a href="" class = "nav-link mt-2 custom-ps-menu bg-hover fw-bolder"> <img src="{% static 'AdministrationPanel/images/icons/product.png'%}" alt="Icone produit" class = "me-3 custom-menu-icon">Produit</a>
            <a href="" class = "nav-link mt-2 custom-ps-menu bg-hover fw-bolder"><i class = "fa fa-users me-3"></i> Entité</a>
            <a href="" class = "nav-link mt-2 custom-ps-menu bg-hover fw-bolder"> <img src="{% static 'AdministrationPanel/images/icons/statistique.png'%}" alt="Icone statistique" class = "me-3 custom-menu-icon">Statistique</a>

            <div class = "custom-icon-setting d-flex flex-row">
                <label for="theme-mode"><i class = "fa fa-sun custom-icon-sun"></i></label>

                <div class="form-check form-switch">
                    <input class="form-check-input custom-switch-input" type="checkbox" role="switch" id="theme-mode">
                  </div>

                <label for="theme-mode"><i class = "fa fa-moon custom-icon-moon"></i></label>
            </div>
            <a href="" class = "nav-link custom-ps-menu bg-hover fw-bolder"> <i class="fa fa-gear me-3"></i>Paramètres</a>
            <a href="" class = "nav-link mt-2 custom-ps-menu bg-hover fw-bolder"> <i class="fa fa-sign-out me-3"></i>Se déconnecter</a>
        </nav>

        </div> 
</header>
    {% endblock %}
