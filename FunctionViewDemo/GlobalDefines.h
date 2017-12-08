

#define numberOfRow     4



/**
 颜色相关
 */
#pragma mark -颜色相关

#define RGBCOLOR(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define RANDOMCOLOR  [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];

/**
 设备屏幕大小
 */
#define BOUNDS              ([UIScreen mainScreen].bounds)
#define BOUNDS_WIDTH        [UIScreen mainScreen].bounds.size.width
#define BOUNDS_HEIGHT       [UIScreen mainScreen].bounds.size.height
#define BOUNDS_X            [UIScreen mainScreen].bounds.origin.x
#define BOUNDS_Y            [UIScreen mainScreen].bounds.origin.y

#define SCREENSCALE         BOUNDS_WIDTH / 375.0  //iPhone 6
#define BORDORWIDTH         7.5 * SCREENSCALE


/**
 打印设置
 */
#pragma mark -打印设置

#define DEBUGLOG 1

#ifdef DEBUGLOG
#       define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#       define DLog(...)
#endif


