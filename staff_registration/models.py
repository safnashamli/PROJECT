from django.db import models

# Create your models here.
class StaffRegistration(models.Model):
    full_name = models.CharField(max_length=20)
    staff_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=15)
    email = models.CharField(max_length=15)
    dob = models.CharField(max_length=10)
    department = models.CharField(max_length=13)
    # status = models.CharField(max_length=7)

    class Meta:
        managed = False
        db_table = 'staff_registration'
