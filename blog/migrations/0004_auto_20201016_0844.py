# Generated by Django 3.1.1 on 2020-10-16 15:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='image',
            field=models.ImageField(blank=True, upload_to='images'),
        ),
        migrations.AddField(
            model_name='post',
            name='imgtitle',
            field=models.CharField(default=2, max_length=200),
            preserve_default=False,
        ),
    ]
