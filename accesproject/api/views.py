from django.shortcuts import render
from rest_framework import viewsets
from .serializers import ProduitSerializer
from .models import  Produit
# Create your views here.

class ProduitViewset(viewsets.ModelViewSet):
    serializer_class = ProduitSerializer
    queryset = Produit.objects.all()