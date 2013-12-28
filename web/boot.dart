part of ether;

void main() {
  var canvas = HTML.querySelector("#game");
  var game = new Ether(canvas);
  game.initialize();
  game.run();
}
