
class HomeScreenTimer{
  Duration duration = Duration();

  updateTimer(DateTime nextEvent){
    DateTime now = DateTime.now();
    this.duration = nextEvent.difference(now);
  }
}