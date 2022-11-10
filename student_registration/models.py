from django.db import models

# Create your models here.
class StudentRegistration(models.Model):
    stud_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=15)
    password = models.CharField(max_length=15)
    admission_no = models.CharField(db_column='Admission_no', max_length=20)  # Field name made lowercase.
    email = models.CharField(max_length=15)
    dob = models.DateField()
    department = models.CharField(max_length=15)
    name = models.CharField(max_length=20)
    status = models.CharField(max_length=7)

    class Meta:
        managed = False
        db_table = 'student_registration'
