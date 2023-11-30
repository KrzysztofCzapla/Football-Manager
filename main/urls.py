from django.urls import path
from .views import PlayerViewSet, TrainingSessionViewSet, MatchViewSet, TeamViewSet
from rest_framework import routers

app_name = 'main'

router = routers.SimpleRouter()
router.register('player', PlayerViewSet)
router.register('match', MatchViewSet)
router.register('team', TeamViewSet)
router.register('training_session', TrainingSessionViewSet)


urlpatterns = [

] + router.urls