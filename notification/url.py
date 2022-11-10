from django.conf.urls import url
from notification import views


urlpatterns=[
    url('pstn/',views.post),
    url('vien/',views.view),
    url('viens/',views.notif),

]