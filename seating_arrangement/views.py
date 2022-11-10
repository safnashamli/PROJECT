from django.shortcuts import render
from seating_arrangement.models import  SeatingArrangement
from student_registration.models import StudentRegistration

# Create your views here.

def post(request):
    obj=StudentRegistration.objects.all()
    context={
        'objval':obj
    }
    if request.method=='POST':
        ob=SeatingArrangement()
        ob.stud_name=request.POST.get('sname')
        ob.class_no=request.POST.get('clsn')
        ob.seat_no=request.POST.get('stno')
        ob.roll_no=request.POST.get('rolno')
        ob.time=request.POST.get('tm')
        ob.date=request.POST.get('dt')
        ob.stud_id=request.POST.get('stud')
        ob.save()


    return render(request,'seating_arrangement/seating.html',context)

def view(request):
    obj=SeatingArrangement.objects.all()
    context={
        'objval':obj
    }
    return render(request,'seating_arrangement/VIEW_SEATING.HTML',context)