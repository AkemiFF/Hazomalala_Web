from django.contrib import admin

from Account.models import *

admin.site.register(Client)
admin.site.register(Admin)
admin.site.register(Doctor)
admin.site.register(Patient)
