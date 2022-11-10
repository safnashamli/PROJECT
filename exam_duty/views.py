from django.shortcuts import render
from exam_duty.models import  ExamDuty
from staff_registration.models import  StaffRegistration

# Create your views here.

def post(request):
    obj=StaffRegistration.objects.all()
    context={
        'objval':obj
    }
    if request.method=='POST':
        ob=ExamDuty()
        ob.room_no=request.POST.get('Rmn')
        ob.date=request.POST.get('dt')
        ob.time=request.POST.get('tm')
        ob.staff_id=request.POST.get('stf')
        ob.save()
    return render(request,'exam_duty/Exam duty.html',context)

def view(request):
    obj=ExamDuty.objects.all()
    context={
        'objval':obj
    }
    return render(request,'exam_duty/VIEW_EXAM_DUTY.HTML',context)