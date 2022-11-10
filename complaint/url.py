from django.conf.urls import url
from complaint import views


urlpatterns=[
    url('pst/',views.post_complaint),
    url('vie/',views.view_comlaint),

]