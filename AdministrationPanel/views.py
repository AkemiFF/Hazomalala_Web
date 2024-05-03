from django.shortcuts import render

def dashboard(request):
    return render (request, 'pages/dashboard.html')

# Create your views here.
