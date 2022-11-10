from django.shortcuts import render
from student_registration.models import StudentRegistration
# Create your views here.

def post(request):
    if request.method=='POST':
        ob=StudentRegistration()
        ob.username=request.POST.get('uname')
        ob.name=request.POST.get('fname')
        ob.password=request.POST.get('paswd')
        ob.department=request.POST.get('Dpt')
        ob.admission_no=request.POST.get('adm')
        ob.email=request.POST.get('Email')
        ob.dob=request.POST.get('DOB')
        ob.status='pending'
        ob.save()

    return render(request,'student_registration/Registration2.html')

def view(request):
    obj=StudentRegistration.objects.all()
    context={
        'objval':obj
    }
    return render(request,'student_registration/VIEW_STUDENT_REG.HTML',context)
def profile(request):
    obj=StudentRegistration.objects.all()
    context={
        'objaval':obj
    }
    return render(request,'student_registration/view_profile.html',context)