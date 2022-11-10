from django.conf.urls import url
from time_table import views


urlpatterns=[
    url('pstti/',views.post),
    url('vieti/',views.view),

]