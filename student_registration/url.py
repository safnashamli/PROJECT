from django.conf.urls import url
from student_registration import views


urlpatterns=[
    url('pststu/',views.post),
    url('vrfy/',views.view),
    url('viewp/',views.profile),

]