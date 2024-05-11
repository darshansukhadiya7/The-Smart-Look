from django.db import models
from django.contrib.auth.models import User
    
class categorie(models.Model):
    name = models.CharField(max_length=150, null=False, blank=False)
    created_at = models.DateTimeField(auto_created=True)

    class Meta:
        verbose_name_plural = 'categorie'
        # Order the blog posts in reverse starting from the latest to the earliest
        ordering = ('name', )

    def __str__(self):
        return self.name

class subcategorie(models.Model):
   name = models.CharField(max_length=100,null=False,blank=False)

   class Meta:
        verbose_name_plural = 'subcategorie'
        # Order the blog posts in reverse starting from the latest to the earliest
        ordering = ('name', )

   def __str__(self):
       return  self.name

class size(models.Model):
    name = models.CharField(max_length=50,blank=False,null=False)

    def __str__(self):
        return self.name 
    
class productinfo(models.Model):
    name = models.CharField(max_length=150, null=False, blank=False)
    categorie = models.ForeignKey(categorie, on_delete=models.CASCADE)
    subcategorie = models.ForeignKey(subcategorie,on_delete=models.CASCADE)
    size = models.ManyToManyField(size)
    image = models.ImageField(upload_to="products", null=False, blank=False)
    description = models.TextField(max_length=500, blank=False, null=False)
    totalqty = models.IntegerField(blank=False,null=False,default=None)
    availableqty = models.IntegerField(blank=False,null=False,default=None)
    op = models.IntegerField(blank=False,null=False,default=None)
    dp = models.IntegerField(blank=False,null=False,default=None)
    created_at = models.DateTimeField(auto_created=True)
    status = models.BooleanField(default=False, help_text="0=default, 1=hidden")
    trending = models.BooleanField(default=False, help_text="0=default, 1=trending")
    
    class Meta:
        verbose_name_plural = 'productinfo'
        # Order the blog posts in reverse starting from the latest to the earliest
        ordering = ('categorie','subcategorie','name' )

    def __str__(self):
        return '{}'.format(self.name)


class Cart(models.Model):
    
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    productinfo = models.ForeignKey(productinfo,on_delete=models.CASCADE)
    psize = models.CharField(max_length=5,null=False,blank=False,default=None)
    pqty = models.IntegerField(null=False,blank=False,default=None)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural = 'Cart'
        # Order the blog posts in reverse starting from the latest to the earliest
        ordering = ('user', )

    def __str__(self):
        return self.user.username
    
class order(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    fname = models.CharField(max_length=150,null=False)
    lname = models.CharField(max_length=150,null=False)
    email = models.CharField(max_length=150,null=False)
    mono = models.CharField(max_length=150,null=False)
    address = models.TextField(null=False)
    city = models.CharField(max_length=150,null=False)
    state = models.CharField(max_length=150,null=False)
    country = models.CharField(max_length=150,null=False,default="India")
    zipcode = models.CharField(max_length=150,null=False)
    totalprice = models.FloatField(null=False)
    orderstatus = {
        ('Pending','Pending'),
        ('Out For Shipping','Out For Shipping'),
        ('Completed','Completed'),
    }
    status = models.CharField(max_length=150,choices=orderstatus,default="Pending")
    payment_mode = models.CharField(max_length=150,null=False)
    tracking_no = models.CharField(max_length=150,null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name_plural = 'order'
        # Order the blog posts in reverse starting from the latest to the earliest
        ordering = ('created_at', )

    def __str__(self):
        return '{} - {} - {}'.format(self.user.username,self.id,self.tracking_no)

class orderitems(models.Model):
    order = models.ForeignKey(order,on_delete=models.CASCADE)
    productinfo = models.ForeignKey(productinfo,on_delete=models.CASCADE)
    price = models.FloatField(null=False)
    qty = models.IntegerField(null=False)

    class Meta:
        verbose_name_plural = 'orderitems'
        # Order the blog posts in reverse starting from the latest to the earliest
        ordering = ('order', )

    def __str__(self):
        return '{} - {} - {}'.format(self.order.user.username,self.order.id,self.order.tracking_no)

class Contactus(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    name = models.CharField(max_length=150,null=False)
    email = models.CharField(max_length=150,null=False)
    subject = models.CharField(max_length=150,null=False)
    message = models.TextField(null=False)
    
    class Meta:
        verbose_name_plural = 'Contactus'
        # Order the blog posts in reverse starting from the latest to the earliest
        ordering = ('user', )

    def __str__(self):
        return self.user.username