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

@login_required(login_url='loginpage')
def orderdetail(request):

    orderinfo = order.objects.filter(user = request.user)
    context = {'orderinfo':orderinfo}
    return render(request,'order/orderdetail.html',context)

def orderview(request, t_no):
    orders = order.objects.filter(tracking_no = t_no).filter(user=request.user).first()
    orderitem = orderitems.objects.filter(order=orders)
    order_total_price = 0
    for item in orderitem:
        order_total_price = order_total_price + (int(item.productinfo.dp) * int(item.qty))
    total = order_total_price + int(30)
    context = {'orders':orders,'orderitem':orderitem,'order_total_price':order_total_price,'total':total}
    return render(request,'order/orderview.html',context)