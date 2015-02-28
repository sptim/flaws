/*
    File: UIImage+ImageEffects.h
    Abstract: This is a category of UIImage that adds methods to apply blur and tint effects to an image. This is the code you’ll want to look out to find out how to use vImage to efficiently calculate a blur.
    Version: 1.0
 
 */

@import UIKit;

/*** BEGIN ***/

  @interface UIImage (ImageEffects)

  - (UIImage *)aapl_applyLightEffect;
  - (UIImage *)aapl_applyExtraLightEffect;
  - (UIImage *)aapl_applyDarkEffect;
  - (UIImage *)aapl_applyTintEffectWithColor:(UIColor *)tintColor;

  - (UIImage *)aapl_applyBlurWithRadius:(CGFloat)blurRadius
                              tintColor:(UIColor *)tintColor
                  saturationDeltaFactor:(CGFloat)saturationDeltaFactor
                              maskImage:(UIImage *)maskImage;

  @end
/*** END ***/