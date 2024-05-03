from django.urls import path 
from AdministrationPanel import views

urlpatterns = [
    path("dashboard/", views.dashboard, name = "dashboard")
]