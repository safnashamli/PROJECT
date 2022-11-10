from django.db import models

# Create your models here.
class Complaint(models.Model):
    c_id = models.AutoField(primary_key=True)
    stud_id = models.IntegerField()
    complaint = models.CharField(max_length=27)
    date = models.DateField()
    time = models.TimeField()
    reply = models.CharField(max_length=26)

    class Meta:
        managed = False
        db_table = 'complaint'
