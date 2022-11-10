from django.shortcuts import render
from login.models import Login

# Create your views here.

def login(request):
    if request.method=="POST":
        uname=request.POST.get("uname")
        passw=request.POST.get("Psswd")
        obj=Login.objects.filter(username=uname,password=passw)
        tp=""
        for