from django.db import models

# Create your models here.
class SeatingArrangement(models.Model):
    seating_id = models.AutoField(primary_key=True)
    stud_id = models.IntegerField()
    # stud_name = models.CharField(max_length=5)
    roll_no = models.CharField(max_length=10)
    class_no = models.IntegerField()
    seat_no = models.IntegerField()
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'seating _arrangement'
