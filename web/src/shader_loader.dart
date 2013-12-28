part of ether;

class ShaderLoader {
  final Async.Completer completer = new Async.Completer();
  Async.Future future;
  final String name;
  final Voya.ShaderProgramManager programManager;
  
  ShaderLoader(this.programManager, this.name) {
    future = completer.future;
    
    Async.Future<String> vertexLoader = HTML.HttpRequest.getString("shaders/$name.vertex");
    Async.Future<String> fragmentLoader = HTML.HttpRequest.getString("shaders/$name.fragment");
    
    Async.Future.wait([vertexLoader, fragmentLoader]).then(handleSources);
  }
  
  void handleSources(sources) {
    programManager.create(name, sources[0], sources[1]);
    completer.complete();
  }
}
