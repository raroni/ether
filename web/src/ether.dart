part of ether;

class Ether extends Samba.Game {
  Ether(HTML.CanvasElement canvas) : super(canvas) { }
  
  Samba.Director createDirector() {
    var director = new Director();
    return director;
  }
  
  void onInitialize() {
    
  }
}
