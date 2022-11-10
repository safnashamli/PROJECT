from django.conf.urls import url
from seating_arrangement import views


urlpatterns=[
    url('psts/',views.post),
    url('vies/',views.view),

]