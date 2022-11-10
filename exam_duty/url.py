from django.conf.urls import url
from exam_duty import views


urlpatterns=[
    url('pste/',views.post),
    url('viee/',views.view),

]