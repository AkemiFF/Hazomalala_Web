from django.db import models
from django.contrib.auth.models import AbstractUser


class Admin(AbstractUser):
    id_admin = models.AutoField(primary_key=True)


class Client(AbstractUser):
    id_client = models.AutoField(primary_key=True)
    telephone = models.CharField(max_length=20)
    address = models.CharField(max_length=255)


class Doctor(Client):
    pass


class Patient(Client):
    pass


# Spécification de related_name pour éviter les conflits avec les champs hérités de AbstractUser
Admin._meta.get_field('groups').remote_field.related_name = 'adminacc_groups'
Admin._meta.get_field(
    'user_permissions').remote_field.related_name = 'adminacc_permissions'
Client._meta.get_field('groups').remote_field.related_name = 'useracc_groups'
Client._meta.get_field(
    'user_permissions').remote_field.related_name = 'useracc_permissions'
