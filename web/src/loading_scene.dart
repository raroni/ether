part of ether;

class LoadingScene extends Voya.Scene {
  void initialize() {
    var loader1 = new ShaderLoader(game.renderer.programs, 'test');
    Async.Future.wait([loader1.future]).then((loaders) {
      completed = true;
    });
  }
}
