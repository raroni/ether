part of ether;

class Director extends Samba.Director { 
  Samba.Scene createInitialScene() {
    return new LoadingScene();
  }
  
  Samba.Scene createNextScene() {
    if(scene is LoadingScene) {
      return new MenuScene();
    }
  }
}
