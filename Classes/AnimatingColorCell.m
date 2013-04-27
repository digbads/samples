//
//  AnimatingColorCell.m
//  SimpleTableView
//
//  Created by Hal Rushton on 4/27/13.
//
//

#import "AnimatingColorCell.h"

@implementation AnimatingColorCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //so it doesn't change color 
       // self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
    [UIView animateWithDuration:3.0 animations:^(void) {
        [self setBackgroundColor:[UIColor colorWithRed:(252/255.0) green:(213/255.0) blue:(183/255.0) alpha:1]];
        [self setBackgroundColor:[UIColor colorWithRed:(204/255.0) green:(85/255.0) blue:(0/255.0) alpha:1]];
    }];
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [UIView animateWithDuration:0.0 animations:^{
        [self setBackgroundColor:[UIColor whiteColor]];
    }];
}
@end
