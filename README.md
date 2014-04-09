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
