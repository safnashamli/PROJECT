from django.db import models

# Create your models here.
class ExamDuty(models.Model):
    duty_id = models.AutoField(primary_key=True)
    staff_id = models.IntegerField()
    room_no = models.IntegerField()
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'exam_duty'

