from django.shortcuts import render,redirect,get_object_or_404,HttpResponse
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.urls import reverse
from django.contrib.auth.models import User
from thesmartlookapp.models import *
from django.core.exceptions import ValidationError
from django.db import IntegrityError
import random
from django.contrib.auth.decorators import login_required

@login_required(login_url="loginpage")
def checkoutpage(request):
    cartvalue = Cart.objects.filter(user=request.user)
    for item in cartvalue:
        if int(item.pqty) > int(item.productinfo.availableqty):
            Cart.objects.delete(id=item.id)
    
    cartitem = Cart.objects.filter(user = request.user)
    tp = 0
    for i in cartitem:
        tp = tp + int(int(i.productinfo.dp) * int(i.pqty))

    tps = tp+30
    context = {'cartitem':cartitem,'tp':tp,'tps':tps}
    return render(request, "checkout.html",context)

def placeorder(request):

    if request.method == "POST":
        neworder = order()
        neworder.user = request.user
        neworder.fname = request.POST.get('fname')
        neworder.lname = request.POST.get('lname')
        neworder.email = request.POST.get('email')
        neworder.mono = request.POST.get('mno')
        neworder.address = request.POST.get('address')
        neworder.city = request.POST.get('city')
        neworder.state = request.POST.get('state')
        #neworder.country = request.POST.get('country')
        neworder.zipcode = request.POST.get('zipcode')
        neworder.payment_mode = request.POST.get('paymentmode')

        ''' cart total price logic'''
        cart = Cart.objects.filter(user = request.user)
        cart_total_price = 0
        for item in cart:
            cart_total_price = cart_total_price + (int(item.productinfo.dp) * int(item.pqty))
        
        neworder.totalprice = cart_total_price

        trackno = 'abc'+str(random.randint(1111111,9999999))
        while order.objects.filter(tracking_no = trackno) is None:
             trackno = 'abc'+str(random.randint(1111111,9999999))

        neworder.tracking_no = trackno
        neworder.save()

        neworderitems = Cart.objects.filter(user = request.user)
        for item in neworderitems:
            orderitems.objects.create(
                order =neworder,
                productinfo = item.productinfo,
                price = item.productinfo.dp,
                qty = item.pqty
            )

            '''to decrease the quantity from this particular product logic'''
            orderproduct = productinfo.objects.filter(id = item.productinfo_id).first()
            orderproduct.availableqty = int(orderproduct.availableqty) - item.pqty
            orderproduct.save()
        
        # to clear the cart item after placed order
        Cart.objects.filter(user = request.user).delete()
        messages.success(request,"Your order has been placed successfully...")
    return render(request,"index.html")

