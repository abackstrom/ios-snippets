Code samples for my own reference.

### Weak References in Target/Action blocks


```objectivec
// provide the block with a weak reference
__weak MyController *weakSelf = self;

void (^thisBlock)(void) = ^(void) {
    // create a strong reference when the block starts
    __strong MyController *strongSelf = weakSelf;
    
    // do stuff!
    
    // self pointer is released when the block ends
};
```

### Checking for Pad vs. Phone

For use when conditionally using iPad-specific features such as UISplitViewController.

```objectivec
#define IS_PAD [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad
#define IS_PHONE [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone
```

### Pushing work to main thread with a block

iOS 7:

```objectivec
NSUrl *url = @"http://some-url";
NSURLSession *session = [NSURLSession sharedSession];
NSURLSessionDataTask *task = [session dataTaskWithURL:url
                                    completionHandler:^(NSData *data,
                                                        NSURLResponse *response,
                                                        NSError *error) {
                                        UIImage *img = [UIImage imageFromData:data];
                                        dispatch_async(dispatch_get_main_queue(), ^{
                                            // code
                                        });
                                    }];
[task resume];
```

Incomplete, old style operation queue:

```objectivec
NSURL *url = @"http://some-url";
NSURLRequest *request = [NSURLRequest requestWithURL:url];
[NSURLConnection sendAsynchronousRequest:request
                                   queue:[NSOperationQueue mainQueue]
                                    completionHandler:^(NSURLResponse *response,
                                                        NSData *data,
                                                        NSError *error) {
                                        
                                    }];
```

## ViewController hierarchy

* Parents add children
* Children remove themselves from the parent
