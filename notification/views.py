from django.shortcuts import render
from notification.models import Notification

# Create your views here.

def post(request):
    if request.method=='POST':
        ob=Notification()
        ob.notification=request.POST.get('notf')
        ob.date=request.POST.get('dt')
        ob.time=request.POST.get('tm')
        ob.save()
    return render(request,'notification/Notification.html')

def view(request):
    obj=Notification.objects.all()
    context={
        'objval':obj
    }
    return render(request,'notification/VIEW_NOTIFICATION.HTML',context)
def notif(request):
    obj=Notification.objects.all()
    context={
        'objval':obj
    }
    return render(request,'notification/view_notification_stu.html',context)