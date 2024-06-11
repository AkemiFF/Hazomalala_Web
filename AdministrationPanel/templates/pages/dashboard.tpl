{% extends "layout/main.tpl" %}
{% load static %}

{% block body %}
    <body>
        {% block main %}
        {% include 'inc/menu.tpl' %}
        {% include 'inc/header.tpl' %}
        <main class = "d-flex flex-row justify-content-between">
            <section class = " custom-dashboard">
                <section class = "custom-order-manager-dashboard bg-white shadow p-4 rounded">
                    <div class = "d-flex flex-row justify-content-between">
                        <h2 class = "mt-2 ms-2 custom-title-order-dashboard">Gestion des commandes</h2>

                        <div class = "d-flex flex-row justify-content-between">
                            <a href="" class="btn bg-cloud-blue custom-order-realtime">Suivi en temps réels <i class = "fa fa-arrow-down ms-3"></i></a>
                            <button type = "button" class = "btn bg-marin-blue custom-btn-profit-overview ms-4">
                                <div class = "custom-icon-profit-overview"><img src="{% static 'images/icons/arrow-up-right.png' %}" alt="Icône Hazomalala" class = "img-fluid"></div>
                                <div class = "custom-text-profit-overview text-white">Détails</div>
                            </button>
                        </div>
                        
                    </div>

                    <table class = "table table-bordeless mt-4">
                        <thead class = "fw-bolder">
                            <tr>
                                <td>Client</td>
                                <td>Produits</td>
                                <td>Quantité</td>
                                <td>Prix</td>
                                <td>Statut</td>
                                <td>Echéance</td>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>Jean</td>
                                <td>Doliprane</td>
                                <td>1</td>
                                <td>2 000</td>
                                <td>
                                    <div class = "bg-marin-blue custom-statut-order-dashboard">
                                        <p class = "text-white text-center">Livré</p>
                                    </div>
                                </td>
                                <td>21-05-2024</td>
                            </tr>

                            <tr>
                                <td>Geneviève</td>
                                <td>Paracétamol</td>
                                <td>20</td>
                                <td>50 000</td>
                                <td>
                                    <div class = "bg-cloud-blue custom-statut-order-dashboard">
                                        <p class = "text-center">Payé</p>
                                    </div>
                                </td>
                                <td>21-05-2024</td>
                            </tr>

                            <tr>
                                <td>Paul</td>
                                <td>Doliprane</td>
                                <td>1</td>
                                <td>2 000</td>
                                <td>
                                    <div class = "bg-gray custom-statut-order-dashboard">
                                        <p class = "text-center">En attente</p>
                                    </div>
                                </td>
                                <td>21-05-2024</td>
                            </tr>

                            <tr>
                                <td>Jeanine</td>
                                <td>Misoprostol</td>
                                <td>2</td>
                                <td>82 000</td>
                                <td>
                                    <div class = "bg-danger custom-statut-order-dashboard">
                                        <p class = "text-white text-center">Annulé</p>
                                    </div>
                                </td>
                                <td>21-05-2024</td>
                            </tr>
                        </tbody>
                    </table>

                </section>

                <section class = "mt-4 bg-cloud-blue p-3 shadow-sm rounded custom-sale-container">
                    <div class = "d-flex flex-row mt-2 justify-content-between">
                        <h2 class="custom-title-order-dashboard text-marin-blue fw-bolder">Profits</h2>

                        <div class = "d-flex flex-row justify-content-between bg-white custom-epoque-container">
                            <div class = "custom-epoque-classic">
                                <p>Mensuel</p>
                            </div>
                            <div class = "custom-epoque-container-child">
                                <p class = "text-white">Annuel</p>
                            </div>
                        </div>

                        <button type = "button" class="btn bg-marin-blue custom-epoque-year text-light">2024<i class = "fa fa-arrow-down ms-4"></i></button>

                        <button type = "button" class = "btn bg-marin-blue custom-btn-profit-overview ms-4">
                            <div class = "custom-icon-profit-overview"><img src="{% static 'images/icons/arrow-up-right.png' %}" alt="Icône Hazomalala" class = "img-fluid"></div>
                            <div class = "custom-text-profit-overview text-white">Détails</div>
                        </button>
                    </div>
                 
                    <canvas id ="canvas-profit-overview" height = "110" class = "mt-3"></canvas>

                </section>
                
                <section class = "d-flex flex-row mt-4 bg-white p-3 shadow rounded custom-sale-container">
                    <div class = " w-75">
                        <h2 class="custom-title-order-dashboard text-marin-blue fw-bolder">Analyse des ventes</h2>
                        <canvas id="canvas-sale-overview"></canvas>
                    </div>

                    <div class = "bg-cloud-blue shadow-sm w-50 p-2 custom-analysis-section-container ms-4 me-3">
                        <h2 class = "h6 text-center mt-2 text-marin-blue fw-bolder">Suivi des transactions</h2>

                        <div class = "row justify-content-center mt-1 g-3">
                            <a href="" class = "d-block col-5 bg-white me-2 link-dark text-decoration-none custom-analysis-item">
                                <p class = "fw-bolder text-center mt-3">Rapport des ventes</p>
                            </a>
    
                            <a href="" class = "d-block col-5 bg-white link-dark text-decoration-none custom-analysis-item">
                                <p class = "fw-bolder text-center mt-3">Rapport financier</p>
                            </a>
    
                            <a href="" class = "d-block col-5 bg-white link-dark text-decoration-none custom-analysis-item">
                                <p class = "fw-bolder text-center mt-3">Rapport de stocks</p>
                            </a>
                        </div>
                    </div>
                </section>

                <section class = "bg-marin-blue rounded shadow-sm p-4 my-4">
                    <div class = "d-flex flex-row justify-content-between">
                        <h2 class="h5 text-light">Gestion des remises</h2>
                        <button type = "button" class = "btn bg-cloud-blue custom-btn-remise-overview ms-4">
                            <div class = "custom-icon-remise-overview"><img src="{% static 'images/icons/arrow-up-right-black.png' %}" alt="Icône Hazomalala" class = "img-fluid"></div>
                            <div class = "custom-text-remise-overview">Gérer</div>
                        </button>
                    </div>

                    <aside class = "d-flex flex-row justify-content-between mt-3">
                        <div class = "bg-white p-3 w-50 custom-remise-container">
                            <h3 class = "fw-bolder text-marin-blue custom-title-remise ms-3">Remise automatique</h3>

                            <div class = "d-flex flex-row">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <img src = "{% static 'images/icons/promotion.png' %}" alt = "Icone remise" class = "img-fluid custom-icon-remise-item"/>
                                </div>
                               
                                <div class = "custom-text-remise-item-container">
                                    <p class = "mt-2 ms-3">Type de remise <i class = "fa fa-arrow-down ms-4"></i></p>
                                </div>
                            </div>

                            <div class = "d-flex flex-row mt-2">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <img src = "{% static 'images/icons/produit.png' %}" alt = "Icone remise" class = "img-fluid custom-icon-remise-item"/>
                                </div>
                               
                                <div class = "custom-text-remise-item-container">
                                    <p class = "mt-2 ms-3">Produits</p>
                                </div>
                            </div>

                            <div class = "d-flex flex-row mt-2">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <i class="fa fa-calendar-alt text-white fa-2x"></i>
                                </div>
                               
                                <div class = "custom-text-remise-item-container">
                                    <p class = "mt-2 ms-3">Date</p>
                                </div>
                            </div>

                            
                            <div class = "d-flex flex-row mt-2">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <img src = "{% static 'images/icons/prix.png' %}" alt = "Icone remise" class = "img-fluid custom-icon-remise-item"/>
                                </div>
                               
                                <div class = "custom-text-remise-item-container">
                                    <p class = "mt-2 ms-3">Prix</p>
                                </div>
                            </div>
                        </div>
    
                        <div class = "bg-white p-3 w-50 ms-3 custom-remise-container">
                            <h3 class = "fw-bolder text-marin-blue custom-title-remise ms-3">Remise flash</h3>

                            <div class = "d-flex flex-row">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <img src = "{% static 'images/icons/promotion.png' %}" alt = "Icone remise" class = "img-fluid custom-icon-remise-item"/>
                                </div>
                               
                                <div class = "custom-text-remise-item-container">
                                    <p class = "mt-2 ms-3">Type de remise <i class = "fa fa-arrow-down ms-4"></i></p>
                                </div>
                            </div>

                            <div class = "d-flex flex-row mt-2">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <img src = "{% static 'images/icons/produit.png' %}" alt = "Icone remise" class = "img-fluid custom-icon-remise-item"/>
                                </div>
                               
                                <div class = "custom-text-remise-item-container">
                                    <p class = "mt-2 ms-3">Produits</p>
                                </div>
                            </div>

                            <div class = "d-flex flex-row mt-2">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <i class="fa fa-calendar-alt text-white fa-2x"></i>
                                </div>
                                
                                <div class = "d-flex flex-row">
                                    <div class = "custom-date-remise">
                                        <p class = "mt-2 ms-3">Début</p>
                                    </div>
                                    <div class = "custom-date-remise ms-3">
                                        <p class = "mt-2 ms-3">Fin</p>
                                    </div>
                                </div>
                            </div>

                            <div class = "d-flex flex-row mt-2">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <img src = "{% static 'images/icons/prix.png' %}" alt = "Icone remise" class = "img-fluid custom-icon-remise-item"/>
                                </div>
                               
                                <div class = "custom-text-remise-item-container">
                                    <p class = "mt-2 ms-3">Prix</p>
                                </div>
                            </div>

                            <div class = "d-flex flex-row mt-2">
                                <div class = "bg-marin-blue custom-icon-remise-item-container">
                                    <img src = "{% static 'images/icons/declenchement.png' %}" alt = "Icone remise" class = "img-fluid custom-icon-remise-item"/>
                                </div>
                               
                                <div class = "custom-text-remise-item-container">
                                    <p class = "mt-2 ms-3">Déclenchement</p>
                                </div>
                            </div>

                        </div>
                    </aside>
                </section>

            </section>

            {% include 'inc/feature.tpl' %}    
        </main>
        
        {% endblock %}
    </body>
   
{% endblock %}