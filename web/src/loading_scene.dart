part of ether;

class LoadingScene extends Samba.Scene {
  void initialize() {
    var loader1 = new ShaderLoader(game.renderer.programs, 'test');
    Async.Future.wait([loader1.future]).then((loaders) {
      createMesh();
      createMaterial();
      completed = true;
    });
  }
  
  void createMesh() {
    var mesh = new Samba.Mesh();
    mesh.addVertex(new Samba.Point3D(0.0, 0.0, -1.0));
    mesh.addVertex(new Samba.Point3D(-0.5, 0.0, -1.0));
    mesh.addVertex(new Samba.Point3D(0.0, 0.5, -1.0));
    
    mesh.addFace(new Samba.Face(0, 1, 2));
    
    game.meshes.set('tester', mesh);
  }
  
  void createMaterial() {
    var program = game.renderer.programs.get('test');
    var material = new Samba.Material(program);
    game.renderer.materials.set('tester', material);
  }
}
