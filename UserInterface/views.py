from django.shortcuts import render


def accueil(request):
    return render(request, "user_interface/pages/accueil.tpl")
