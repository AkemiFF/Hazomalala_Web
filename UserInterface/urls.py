
from django.urls import path
from . import views

urlpatterns = [
    path("blog/", view=views.accueil)
]
