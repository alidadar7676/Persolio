//
//  NewsV.m
//  Persolio
//
//  Created by Ali Soume`e on 5/14/1396 AP.
//  Copyright © 1396 Ali Soume`e. All rights reserved.
//

#import "NewsV.h"
#import "NewsCVC.h"

@interface NewsV()
{
    int num;
    UICollectionReusableView *headerV;
}

@end

@implementation NewsV

- (void)prepareCollectionView {
    num = 4;
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    layout.minimumLineSpacing = 15;
    
    CGRect frame = CGRectMake(0, 0, self.bounds.size.width, num * ((self.bounds.size.width - 10) * 0.8 + layout.minimumLineSpacing));
    
    _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:layout];
    [self addSubview:_collectionView];
    _collectionView.scrollEnabled = NO;
    [_collectionView sdc_alignEdgesWithSuperview:UIRectEdgeAll];
    [_collectionView registerClass:NewsCVC.self forCellWithReuseIdentifier:@"NewsCVC"];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.backgroundColor = [UIColor clearColor];
    _collectionView.contentInset = UIEdgeInsetsMake(0, 5, 10, 5);
    [_collectionView registerClass:UICollectionReusableView.self forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"];
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return num;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NewsCVC *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"NewsCVC" forIndexPath:indexPath];
    return cell;
}


//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
//    if (kind == UICollectionElementKindSectionHeader) {
//        headerV = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
//        
//        UIButton *filterBtn = [UIButton new];
//        UIButton *addBtn = [UIButton new];
//        
//        [filterBtn setImage:[UIImage imageNamed:@"filter-on"] forState:UIControlStateNormal];
//        [addBtn setImage:[UIImage imageNamed:@"plus-off"] forState:UIControlStateNormal];
//        
//        UIView *middle = [UIView new];
//        middle.translatesAutoresizingMaskIntoConstraints = NO;
//        [headerV addSubview:middle];
//        [middle sdc_alignEdgesWithSuperview:UIRectEdgeTop | UIRectEdgeBottom];
//        [middle sdc_pinWidth:0];
//        [middle sdc_horizontallyCenterInSuperview];
//        
//        [headerV addSubview:filterBtn];
//        filterBtn.imageEdgeInsets = UIEdgeInsetsMake(7, 7, 7, 7);
//        filterBtn.translatesAutoresizingMaskIntoConstraints = NO;
//        [filterBtn sdc_alignEdgesWithSuperview:UIRectEdgeTop | UIRectEdgeBottom insets:UIEdgeInsetsMake(5, 0, -5, 0)];
//        [filterBtn sdc_pinHeightWidthRatio:1 constant:0];
//        [filterBtn sdc_alignEdge:UIRectEdgeRight withEdge:UIRectEdgeLeft ofView:middle inset:-30];
//        
//        [headerV addSubview:addBtn];
//        addBtn.imageEdgeInsets = UIEdgeInsetsMake(7, 7, 7, 7);
//        addBtn.translatesAutoresizingMaskIntoConstraints = NO;
//        [addBtn sdc_alignEdgesWithSuperview:UIRectEdgeTop | UIRectEdgeBottom insets:UIEdgeInsetsMake(5, 0, -5, 0)];
//        [addBtn sdc_pinHeightWidthRatio:1 constant:0];
//        [addBtn sdc_alignEdge:UIRectEdgeLeft withEdge:UIRectEdgeRight ofView:middle inset:30];
//        
//        UIView *hairLineV = [UIView new];
//        hairLineV.translatesAutoresizingMaskIntoConstraints = NO;
//        hairLineV.backgroundColor = [UIColor lightGrayColor];
//        [headerV addSubview:hairLineV];
//        [hairLineV sdc_pinHeight:1];
//        [hairLineV sdc_alignEdgesWithSuperview:UIRectEdgeAll ^ UIRectEdgeTop];
//        
//        return headerV;
//    }
//    return nil;
//}


//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
//    return CGSizeMake(self.bounds.size.width, 50);
//}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = self.bounds.size.width - 10;
    return CGSizeMake(width, width * 0.8);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 5.0;
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 0, 0, 0);
}


@end
