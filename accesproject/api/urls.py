from django.contrib import admin
from django.urls import path
from rest_framework.routers import SimpleRouter
from .views import ProduitViewset


router = SimpleRouter()
router.register(r'produits', ProduitViewset, basename='produits')


urlpatterns = router.urls