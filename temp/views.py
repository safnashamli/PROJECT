from django.shortcuts import render

# Create your views here.
def admin (request):
    return  render(request,'temp/admin.html')
def index(request):
    return render(request,'temp/index.html')
def staff (request):
    return render(request,'temp/staff.html')
def student(request):
    return render(request,'temp/student.html')


