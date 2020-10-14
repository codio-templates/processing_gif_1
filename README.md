# Processing Sketch for Gif 1
To use this sketch on Codio, you will need to use the `Processing language` stack. This sketch was built to create a series image files (one per frame) for 120 frames. These images were then turned into gif with the [EZgif website](https://ezgif.com/). By default, the sketch will not save the images to disk. If you want to create a gif, set the `record` variable to `true` (line3). All images are saved in the `output` folder.

```java
boolean record = true;
```

To modify the animation, edit the `render` function, the `draw` function should remain the same
