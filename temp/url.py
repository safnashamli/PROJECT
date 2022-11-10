from django.conf.urls import url
from temp import views

urlpatterns=[
    url('adm/',views.admin),
    url('ind/',views.index),
    url('staf/',views.staff),
    url('stu/',views.student),
]