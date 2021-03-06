//
//  NSAttributedString+Height.m
//  Prediscore
//
//  Created by Hamidreza Vaklian on 4/29/16.
//  Copyright © 2016 pxlmind. All rights reserved.
//

#import "NSAttributedString+Size.h"
//#import "TTTAttributedLabel.h"
#import <QuartzCore/QuartzCore.h>

//static CGFloat const TTTFLOAT_MAX = 100000;
//
//static inline CGFLOAT_TYPE CGFloat_ceil(CGFLOAT_TYPE cgfloat) {
//#if CGFLOAT_IS_DOUBLE
//	return ceil(cgfloat);
//#else
//	return ceilf(cgfloat);
//#endif
//}

@implementation NSAttributedString (Size)

//static inline CGSize CTFramesetterSuggestFrameSizeForAttributedStringWithConstraints(CTFramesetterRef framesetter, NSAttributedString *attributedString, CGSize size, NSUInteger numberOfLines) {
//	CFRange rangeToSize = CFRangeMake(0, (CFIndex)[attributedString length]);
//	CGSize constraints = CGSizeMake(size.width, TTTFLOAT_MAX);
//	
//	if (numberOfLines == 1) {
//		// If there is one line, the size that fits is the full width of the line
//		constraints = CGSizeMake(TTTFLOAT_MAX, TTTFLOAT_MAX);
//	} else if (numberOfLines > 0) {
//		// If the line count of the label more than 1, limit the range to size to the number of lines that have been set
//		CGMutablePathRef path = CGPathCreateMutable();
//		CGPathAddRect(path, NULL, CGRectMake(0.0f, 0.0f, constraints.width, TTTFLOAT_MAX));
//		CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, 0), path, NULL);
//		CFArrayRef lines = CTFrameGetLines(frame);
//		
//		if (CFArrayGetCount(lines) > 0) {
//			NSInteger lastVisibleLineIndex = MIN((CFIndex)numberOfLines, CFArrayGetCount(lines)) - 1;
//			CTLineRef lastVisibleLine = CFArrayGetValueAtIndex(lines, lastVisibleLineIndex);
//			
//			CFRange rangeToLayout = CTLineGetStringRange(lastVisibleLine);
//			rangeToSize = CFRangeMake(0, rangeToLayout.location + rangeToLayout.length);
//		}
//		
//		CFRelease(frame);
//		CGPathRelease(path);
//	}
//	
//	CGSize suggestedSize = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, rangeToSize, NULL, constraints, NULL);
//	
//	return CGSizeMake(CGFloat_ceil(suggestedSize.width), CGFloat_ceil(suggestedSize.height));
//}
//

-(CGFloat)heightWithBoundingWidth:(CGFloat)width andHeight:(CGFloat)height
{
	
	CGRect rect = [self boundingRectWithSize:CGSizeMake(width, height) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading context:nil];
	return rect.size.height;
}

-(CGFloat)heightWithBoundingWidth:(CGFloat)width
{
	
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading context:nil];
    return rect.size.height;
}

-(CGFloat)widthWithBoundingHeight:(CGFloat)height
{
//    CGRect rect = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading context:nil];
//    return rect.size.height;
    
    return  self.size.width;
}
@end
