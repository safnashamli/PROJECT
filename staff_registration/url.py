from django.conf.urls import url
from staff_registration import views


urlpatterns=[
    url('pststa/',views.post),
    url('viesta/',views.view),
    url('viewm/',views.manage),
    url('viewu/(?P<idd>\w+)',views.update,name="up"),
    url('dlt/(?P<idd>\w+)',views.deletes,name="dt"),
    url('prof/',views.profilest),
]