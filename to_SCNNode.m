/*
* Create a SCNNode from a path to a .dae
*
* path: the path to the .dae relative to the mainBundle
* identifier: the identifier of the object in the .dae
*/
- (SCNNode*)nodeFromDaeAtPath:(NSString*)path withIdentifier:(NSString*)identifier {
    NSURL *urlToColladaFile = [[NSBundle mainBundle] URLForResource:path withExtension:@"dae"];	// Create NSURL from input path
    SCNSceneSource *sceneSource = [[SCNSceneSource alloc] initWithURL:urlToColladaFile options:nil];	// Create a temporary SCNScene
    SCNNode *node = [sceneSource entryWithIdentifier:identifier withClass:[SCNNode class]];	// Create a node from the model represented by the identifier
}