part of ether;

class Ether extends Voya.Game {
  Ether(HTML.CanvasElement canvas) : super(canvas) { }
  
  Voya.Director createDirector() {
    var director = new Director();
    return director;
  }
}
