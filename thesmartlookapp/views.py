from django.shortcuts import render,redirect,get_object_or_404
from .models import *
from django.contrib import messages
from django.urls import reverse

def index(request):
    return render(request,"index.html")

    
def contact_us(request):
    return render(request,"contact_us.html")

def mantshirt(request):
    catname = categorie.objects.get(name="Man")
    subcatname = subcategorie.objects.get(name="Tshirt")
    name="Man - Tshirt"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "man/tshirt.html",context)

def manshirt(request):
    catname = categorie.objects.get(name="Man")
    subcatname = subcategorie.objects.get(name="Shirt")
    name="Man - Shirt"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "man/shirt.html",context)

def manjeans(request):
    catname = categorie.objects.get(name="Man")
    subcatname = subcategorie.objects.get(name="Jeans")
    name="Man - Jeans"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "man/jeans.html",context)

def womantshirt(request):
    catname = categorie.objects.get(name="Woman")
    subcatname = subcategorie.objects.get(name="Tshirt")
    name="Woman - Tshirt"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "woman/tshirt.html",context)

def womandress(request):
    catname = categorie.objects.get(name="Woman")
    subcatname = subcategorie.objects.get(name="Dress")
    name="Woman - Dress"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "woman/dress.html",context)

def womanjeans(request):
    catname = categorie.objects.get(name="Woman")
    subcatname = subcategorie.objects.get(name="Jeans")
    name="Woman - Jeans"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "man/tshirt.html",context)

def childrentshirt(request):
    catname = categorie.objects.get(name="Children")
    subcatname = subcategorie.objects.get(name="Tshirt")
    name="Children - Tshirt"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "man/tshirt.html",context)

def childrenshirt(request):
    catname = categorie.objects.get(name="Children")
    subcatname = subcategorie.objects.get(name="Shirt")
    name="Children - Shirt"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "man/tshirt.html",context)

def childrenjeans(request):
    catname = categorie.objects.get(name="Children")
    subcatname = subcategorie.objects.get(name="Jeans")
    name="Children - Jeans"
    products = productinfo.objects.all().filter(categorie=catname,subcategorie=subcatname)
    context={'products':products,'name':name,'catname':catname,'subcatname':subcatname}
    return render(request, "man/tshirt.html",context)

def productsdetail(request):
    return render(request,'products/pdetails.html')


def pdetailview(request,catname,subcatname,pname1,pid):
    pcatname1 = get_object_or_404(categorie,name=catname)
    pcatid = pcatname1.id
    psubcatname1 = get_object_or_404(subcategorie,name=subcatname)
    psubcatid = psubcatname1.id
    pdetails = productinfo.objects.filter(categorie=pcatid,subcategorie=psubcatid,id=pid).first()
    context = {'pdetails':pdetails,'pcatid':pcatid,'psubcatid':psubcatid}
    return render(request, "products/pdetails.html",context)










