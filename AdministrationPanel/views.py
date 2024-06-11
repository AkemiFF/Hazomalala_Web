from django.shortcuts import render
from datetime import datetime

def dashboard(request):
    current_date = datetime.now().strftime("%Y-%m-%d")
    return render (request, 'pages/dashboard.tpl', {'current_date' : current_date})

def login(request):
    return render (request, 'pages/login.html')


# Create your views here.
