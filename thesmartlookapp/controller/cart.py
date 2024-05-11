from django.shortcuts import render,redirect,get_object_or_404,HttpResponse
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.urls import reverse
from django.contrib.auth.models import User
from thesmartlookapp.models import *
from django.core.exceptions import ValidationError
from django.db import IntegrityError
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required

def addtocart(request):
    if request.method == "POST":
        if request.user.is_authenticated:
            prod_id = int(request.POST.get('pid'))
            prod_size = str(request.POST.get('size'))
            prod_qty = int(request.POST.get('prodqty'))
            product_check = productinfo.objects.get(id=prod_id)
            if(product_check):
                if(Cart.objects.filter(user=request.user.id, productinfo_id=prod_id)):
                    messages.warning(request,"product already exist in cart")
                else:
                    if int(product_check.availableqty) >= prod_qty:
                        Cart.objects.create(user=request.user, productinfo_id=prod_id, psize=prod_size, pqty=prod_qty)
                        messages.success(request,"Product added successfully in cart")
                    else:
                        messages.warning(request,"Only" + str(product_check.availableqty) + " quantity available")
            else:
                messages.warning(request,"No such product found")

        else:
            messages.warning(request,"First you are login..")
    return render(request,'index.html')

@login_required(login_url="loginpage")
def viewcart(request):

    cart_check = Cart.objects.filter(user=request.user.id)
    total_price = 0
    for i in cart_check:
        if i.productinfo.availableqty >= i.pqty:
            total_price = int(total_price + int(i.productinfo.dp * i.pqty))
    tps = total_price + 30
    context = {'cart_check':cart_check,'total_price':total_price,'tps':tps}
    return render(request,"cart.html",context)

def deleteitem(request):
    if request.method == "POST":
        pid1 = request.POST.get('pid')
        psize1 = request.POST.get('psize')
        if(Cart.objects.filter(user = request.user, productinfo_id = pid1)):
            cartitem = Cart.objects.get(productinfo_id=pid1,user=request.user)
            cartitem.delete()
            messages.success(request,"Product deleted in your cart..")
        cart_check = Cart.objects.filter(user=request.user.id)
        total_price = 0
        for i in cart_check:
            if int(i.productinfo.availableqty) > i.pqty:
                total_price = total_price + (i.productinfo.dp * i.pqty)
        tps = total_price + 30
        context = {'cart_check':cart_check,'total_price':total_price,'tps':tps}
        return render(request,"cart.html",context)
        

    