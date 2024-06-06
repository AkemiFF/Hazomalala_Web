from django.shortcuts import render
from datetime import datetime

def dashboard(request):
    current_date = datetime.now().strftime("%Y-%m-%d")
    return render (request, 'pages/dashboard.html', {'current_date' : current_date})

# Create your views here.
