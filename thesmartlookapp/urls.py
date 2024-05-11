from django.urls import path,reverse
from thesmartlookapp import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from thesmartlookapp.controller import authview, cart, checkout, order, Contactus

urlpatterns =[
        path('', views.index, name="index"),
        path('contact_us/', views.contact_us, name="contact_us"),
        path('man/tshirt/', views.mantshirt, name="mtshirt"),
        path('man/shirt/', views.manshirt, name="mshirt"),
        path('man/jeans/', views.manjeans, name="mjeans"),
        path('woman/tshirt/', views.womantshirt, name="wtshirt"),
        path('woman/dress/', views.womandress, name="wdress"),
        path('woman/jeans/', views.womanjeans, name="wjeans"),
        path('children/tshirt/', views.childrentshirt, name="ctshirt"),
        path('children/shirt/', views.childrenshirt, name="cshirt"),
        path('children/jeans/', views.childrenjeans, name="cjeans"),
        path('register/', authview.register, name="register"),
        path('login/', authview.loginpage, name="loginpage"),
        path('logout/',authview.logoutpage, name="logoutpage"),
        path('products/',views.productsdetail,name="productsdetail"),
        path('productsdetail/<str:catname>/<str:subcatname>/<str:pname1>/<int:pid>', views.pdetailview, name='pdetailview'),
        path('addtocart',cart.addtocart, name="addtocart"),
        path('viewcart',cart.viewcart, name="viewcart"),
        path('deleteitem',cart.deleteitem,name="deleteitem"),
        path('checkout',checkout.checkoutpage,name="checkoutpage"),
        path('placeorder',checkout.placeorder,name="placeorder"),
        path('myorder',order.orderdetail,name="orderdetail"),
        path('orderview/<str:t_no>',order.orderview,name="orderview"),
        path('contact-us',Contactus.contactus,name="contactus")
]
