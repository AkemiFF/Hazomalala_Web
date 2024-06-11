{% extends 'layout/main.tpl' %}
{% load static %}

{% block section %}
    <section class = "custom-feature-dashboard-section bg-white rounded shadow-sm">
        <section class = "schedule-time">
            <div class = "d-flex flex-row justify-content-between">
                <div class = "d-flex flex-row p-3">
                    <div class = "bg-cloud-blue custom-current-date">
                        <p id = "day" class = "fw-bolder fs-3"></p>
                    </div>
    
                    <div class = "ms-3 mt-3">
                        <p id = "dayOfWeek" class = "fs-6"></p>
                        <p id = "month" class = "fs-6 custom-current-month"></p>
                    </div>
    
                    <div class = "ms-3 mt-3">
                        <p class = "fs-2">|</p>
                    </div>
    
                </div>

                <div class = "custom-icon-add-plan-container">
                    <a href="" class = "link-dark custom-icon-add-plan"><i class = "fa fa-plus-circle fa-2x"></i></a>
                </div>
            </div>
            

            <div id="calendar-container" class = "calendar-container"></div>

        </section>

        <a href = "" class = "btn text-light bg-marin-blue d-block custom-stock-btn mt-3 fs-6 text-decoration-none">Stock <i class = "fa fa-arrow-right ms-3"></i></a>

        <div class = "mt-2 mx-4">
            <div class = "d-flex flex-row bg-white shadow-sm custom-total-container">
                <div>
                    <img src="{% static 'images/icons/visite.png' %}" alt="Icone total" class = "img-fluid custom-icon-total">
                </div>

                <div class = "ms-4">
                    <h4 class = "custom-text-total">Total de visite</h4>
                    <p class = "fs-3 kanit-font fw-bolder custom-total-stat">23 456</p>
                </div>
            </div>

            <div class = "d-flex flex-row bg-white shadow-sm custom-total-container mt-3">
                <div>
                    <img src="{% static 'images/icons/docteur.png' %}" alt="Icone total" class = "img-fluid custom-icon-total">
                </div>

                <div class = "ms-4">
                    <h4 class = "custom-text-total">Nombre de médécins</h4>
                    <p class = "fs-3 kanit-font fw-bolder custom-total-stat">100</p>
                </div>
            </div>

            <div class = "d-flex flex-row bg-white shadow-sm custom-total-container mt-3">
                <div>
                    <img src="{% static 'images/icons/patient.png' %}" alt="Icone total" class = "img-fluid custom-icon-total">
                </div>

                <div class = "ms-4">
                    <h4 class = "custom-text-total">Nombre de patients</h4>
                    <p class = "fs-3 kanit-font fw-bolder custom-total-stat">3 400</p>
                </div>
            </div>

            <div class = "d-flex flex-row bg-white shadow-sm custom-total-container mt-3">
                <div>
                    <img src="{% static 'images/icons/pharmacie.png' %}" alt="Icone total" class = "img-fluid custom-icon-total">
                </div>

                <div class = "ms-4">
                    <h4 class = "custom-text-total">Total de pharmacies</h4>
                    <p class = "fs-3 kanit-font fw-bolder custom-total-stat">23</p>
                </div>
            </div>

            <div class = "d-flex flex-row bg-white shadow-sm custom-total-container mt-3">
                <div>
                    <img src="{% static 'images/icons/medicament.png' %}" alt="Icone total" class = "img-fluid custom-icon-total">
                </div>

                <div class = "ms-4">
                    <h4 class = "custom-text-total">Nombre de produits</h4>
                    <p class = "fs-3 kanit-font fw-bolder custom-total-stat">2 100</p>
                </div>
            </div>
            
            <a href="" class = "d-block w-100 btn bg-marin-blue link-light px-3 mt-3 custom-btn-stat">Statistiques avancées</a>

        </div>

        <section class = "mt-5 mx-3 mb-3">
            <div class = "d-flex flex-row justify-content-between">
                <h3 class = "custom-title-update-product text-marin-blue fw-bolder">Gestion des produits</h3>
                <div class = "bg-cloud-blue custom-update-product-container">
                    <p class = "custom-text-update-product mt-2 text-center ms-1">Mise à jour <i class = "fa fa-arrow-down ms-3"></i></p>
                </div>
            </div>
            
            <form class = "mx-3 mt-3">
                <div>
                    <input type="text" name="" id="" placeholder ="Designation" class = "custom-input-product">
                </div>

                <div class = "position-relative mt-4">
                    <input type="text" name="" id="" placeholder ="Catégorie" class = "custom-input-product">
                    <i class = "fa fa-arrow-down position-absolute custom-icon-form-product"></i>
                </div>

                <div class = "mt-4">
                    <input type="text" name="" id="" placeholder ="Description" class = "custom-input-product">
                </div>

                <div class = "mt-4">
                    <input type="text" name="" id="" placeholder ="Stock" class = "custom-input-product">
                </div>

                <div class = "mt-4">
                    <input type="text" name="" id="" placeholder ="Prix" class = "custom-input-product">
                </div>

                <div class = "mt-4 d-flex flex-row justify-content-between">
                    <button type="submit" class = "btn bg-cloud-blue custom-btn-form-product w-75">Valider</button>

                    <button type = "button" class = "btn bg-marin-blue custom-btn-profit-overview ms-4">
                        <div class = "custom-icon-profit-overview"><img src="{% static 'images/icons/arrow-up-right.png' %}" alt="Icône Hazomalala" class = "img-fluid"></div>
                        <div class = "custom-text-profit-overview text-white">Détails</div>
                    </button>
                </div>
            </form>
        </section>
    </section>

    {% block scripts %}
        {{ block.super }}
            <script>
                const current_date = "{{ current_date }}";
                document.addEventListener('DOMContentLoaded', function() {
                    const day = current_date.split('-')[2];
                    const dayOfWeek = new Date(current_date).toLocaleString('fr-FR', { weekday: 'long' });
                    const month = new Date(current_date).toLocaleString('fr-FR', { month: 'long' });

                    document.getElementById('day').innerText = day;
                    document.getElementById('dayOfWeek').innerText = dayOfWeek;
                    document.getElementById('month').innerText = month;
                });
            </script>
        {% endblock %}

{% endblock %}