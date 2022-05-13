from django.urls import path
from . import views

urlpatterns = [
    path('task_list/', views.TaskViewSet.as_view({
        'get':'list',
        'post':'create'}), name='todo_list'),
    
    path('task_list/<str:pk>/', views.TaskViewSet.as_view({
        'get':'retrieve',
        'put':'update',
        'delete':'destroy'
    }))
]
