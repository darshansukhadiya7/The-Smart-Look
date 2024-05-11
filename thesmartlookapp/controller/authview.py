from django.shortcuts import render,redirect,get_object_or_404,HttpResponse
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.urls import reverse
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
from django.db import IntegrityError
def register(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')
        password = request.POST.get('password')
        check1 = User.objects.filter(username=username).exists() and User.objects.filter(email=email).exists()
        check2 = User.objects.filter(username=username).exists()
        check3 = User.objects.filter(email=email).exists()
        if check1:
            error_msg = 'Username and email already exist'
            return render(request,'auth/signup.html',{'error_msg':error_msg})
        if check2:
            error_msg = 'Username already exist'
            return render(request,'auth/signup.html',{'error_msg':error_msg})
        if check3:
            error_msg = 'Email already exist'
            return render(request,'auth/signup.html',{'error_msg':error_msg})
        

        if User.DoesNotExist:
            user = User.objects.create_user(username=username,email=email,password=password)
            user.save()
            return redirect('/login')
        '''except IntegrityError:'''
           
           
    else:
        return render(request,"auth/signup.html")

def loginpage(request):
    if request.user.is_authenticated:
        messages.warning(request,"You are already logged in..")
        return redirect("/")
    else:
        if request.method == "POST":
            name = request.POST.get('username')
            passw = request.POST.get('password')
            user = authenticate(request,username=name,password=passw)
            if user is not None:
                login(request,user)
                messages.success(request,"logged in successfully..")
                return redirect("/")
            else:
                messages.error(request,"Invalid username or password")
                return redirect("/login")

        return render(request,'auth/login.html')

def logoutpage(request):
    if request.user.is_authenticated:
        logout(request)
        messages.success(request,"Logeed out successfully..") 
    return redirect("/")
