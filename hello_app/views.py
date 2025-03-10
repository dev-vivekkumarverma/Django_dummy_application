from django.http import HttpResponse

def hello(request):
    return HttpResponse("Hello, World! this is hi from CICD DOCKER")
