from django.shortcuts import render
from staff_registration.models import StaffRegistration

# Create your views here.
def post(request):
    if request.method=='POST':
        ob=StaffRegistration()
        ob.full_name=request.POST.get('fname')
        ob.username=request.POST.get('uname')
        ob.password=request.POST.get('paswd')
        ob.email=request.POST.get('Email')
        ob.dob=request.POST.get('DOB')
        ob.department=request.POST.get('Dpt')
        ob.status='pending'
        ob.save()

    return render(request,'staff_registration/Registration1.html')

def view(request):
    obj=StaffRegistration.objects.all()
    context={
        'objval':obj
    }
    return render(request,'staff_registration/VIEW_STAFF_REG.HTML',context)
def manage(request):
    obj=StaffRegistration.objects.all()
    context={
        'objval':obj
    }
    return render(request,'staff_registration/view_mange.html',context)
def update(request,idd):
    obj=StaffRegistration.objects.get(staff_id=idd)
    context={
        'kk':obj

    }
    if request.method=='POST':
        ob = StaffRegistration.objects.get(staff_id=idd)
        ob.full_name = request.POST.get('fname')
        ob.username = request.POST.get('uname')
        ob.password = request.POST.get('paswd')
        ob.email = request.POST.get('Email')
        ob.dob = request.POST.get('DOB')
        ob.department = request.POST.get('Dpt')
        # ob.status = 'pending'
        ob.save()
        return manage(request)
    return render(request,'staff_registration/update.html',context)


def deletes(request,idd):
    ob=StaffRegistration.objects.get(staff_id=idd).delete()
    ob.save()
    return manage(request)
def profilest(request,):
    obj=StaffRegistration.objects.all()
    context={
        'objval':obj
    }
    return render(request,'staff_registration/profile.html',context)
