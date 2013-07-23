‐ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
// Override point for customization after application launch.
#if TARGET_IPHONE_SIMULATOR
    exit( EXIT_SUCCESS ) ;
#else
/* this works in iOS 4.2.3 */
    Class BluetoothManager = objc_getClass( "BluetoothManager" ) ;
    id btCont = [BluetoothManager sharedInstance] ;
#endif