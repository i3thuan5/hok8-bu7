from __future__ import absolute_import, unicode_literals

import os


from celery import Celery


# set the default Django settings module for the 'celery' program.
os.environ.setdefault(
    'DJANGO_SETTINGS_MODULE', 'hok8_bu7.settings'
)

from django.conf import settings

app = Celery(
    'hok8_bu7',
    broker='amqp://{}:5672//'.format(
        getattr(settings, "PIAN7_SIK4_TSU2_KI1", 'localhost')
    ),
)

# Using a string here means the worker don't have to serialize
# the configuration object to child processes.
# - namespace='CELERY' means all celery-related configuration keys
#   should have a `CELERY_` prefix.
app.config_from_object('django.conf:settings', namespace='CELERY')

# Load task modules from all registered Django app configs.
app.autodiscover_tasks()
