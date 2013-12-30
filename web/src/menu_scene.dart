part of ether;

class MenuScene extends Samba.Scene {  
  void initialize() {
    var box = new Samba.Entity();
    
    var meshRendering = new Samba.MeshRendering(
        game.meshes.get('tester'),
        game.renderer.materials.get('tester')
    );
    
    var lens = new Samba.PerspectiveLens();
    addComponent(lens);
  }
}
