from django.shortcuts import render
from complaint.models import Complaint
# Create your views here.
def post_complaint(request):
    if request.method=='POST':
        ob=Complaint()
        ob.complaint=request.POST.get('cmpl')
        ob.date=request.POST.get('dt')
        ob.time=request.POST.get('tm')
        ob.reply='pending'
        ob.stud_id=1

        ob.save()
    return render(request,'complaint/complaints.html')

def view_comlaint(request):
    obj=Complaint.objects.all()
    context={
        'objval':obj
    }
    return render(request,'complaint/VIEW_COMPLAINT.HTML',context)