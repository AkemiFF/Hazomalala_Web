from django.shortcuts import render


def home(request):
    return render(request, "pages/home.html")

def loginUser(request):
    return render(request, "pages/loginUser.html")
