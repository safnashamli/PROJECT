from django.db import models

# Create your models here.
class TimeTable(models.Model):
    t_id = models.AutoField(primary_key=True)
    time_table = models.CharField(db_column='time table', max_length=25)  # Field renamed to remove unsuitable characters.
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'time_table'
