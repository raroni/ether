part of ether;

class Director extends Voya.Director { 
  Voya.Scene createInitialScene() {
    return new LoadingScene();
  }
  
  Voya.Scene createNextScene() {
    if(scene is LoadingScene) {
      return new MenuScene();
    }
  }
}
