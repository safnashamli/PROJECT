from django.shortcuts import render
from time_table.models import TimeTable

# Create your views here.

def post(request):
    if request.method=='POST':
        ob=TimeTable()
        ob.time_table=request.POST.get('ttb')
        ob.time=request.POST.get('tm')
        ob.date=request.POST.get('dt')
        ob.save()
    return render(request,'time_table/time table.html')

def view(request):
    obj=TimeTable.objects.all()
    context={
        'objval':obj
    }
    return render(request,'time_table/VIEW_TIME TABLE.HTML',context)