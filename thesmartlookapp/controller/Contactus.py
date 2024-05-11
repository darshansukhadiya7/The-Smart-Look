from django.shortcuts import render,redirect,get_object_or_404,HttpResponse
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.urls import reverse
from django.contrib.auth.models import User
from thesmartlookapp.models import *
from django.core.exceptions import ValidationError
from django.db import IntegrityError
from django.contrib.auth.decorators import login_required

def contactus(request):
    if request.method == "POST":
        if request.user.is_authenticated:
            name1 =str(request.POST.get("name"))
            email1 = str(request.POST.get("email"))
            subject1 =str(request.POST.get("subject"))
            message1 = str(request.POST.get("message"))
            Contactus.objects.create(user=request.user,name=name1,email=email1,subject=subject1,message=message1)
            messages.warning(request,"your message successfully send..")
        else:
            messages.warning(request,"First you are login..")
    return render(request,"contact_us.html")
