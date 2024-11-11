.class public abstract Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

.field private final mHorizontalBoundCheckCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

.field mVerticalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

.field private final mVerticalBoundCheckCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7434
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$1;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    .line 7474
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;

    .line 7509
    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    invoke-direct {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHorizontalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    .line 7510
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mVerticalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    .line 7511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 7512
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7513
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 7514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 7515
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 7516
    return-void
.end method

.method static synthetic access$5800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    .param p1, "x1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    .line 7428
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .line 7519
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 7520
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-nez p3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7521
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->removeFromDisappearedInLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7523
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToDisappearedInLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 7526
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 7527
    .local v1, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-nez v2, :cond_5

    .line 7528
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-ne v2, v4, :cond_4

    .line 7529
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 7530
    .local v2, "var6":I
    move v4, p2

    .line 7531
    .local v4, "var7":I
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 7532
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v4

    .line 7535
    :cond_1
    if-eq v2, v5, :cond_3

    .line 7539
    if-eq v2, v4, :cond_2

    .line 7540
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v5, v2, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->moveView(II)V

    .line 7542
    .end local v2    # "var6":I
    .end local v4    # "var7":I
    :cond_2
    goto :goto_2

    .line 7536
    .restart local v2    # "var6":I
    .restart local v4    # "var7":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added View has SeslRecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v6, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7543
    .end local v2    # "var6":I
    .end local v4    # "var7":I
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->addView(Landroid/view/View;IZ)V

    .line 7544
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7545
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7546
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2

    .line 7550
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7551
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    .line 7553
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 7556
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, p2, v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7559
    :cond_7
    :goto_2
    iget-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v2, :cond_8

    .line 7560
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 7561
    iput-boolean v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 7564
    :cond_8
    return-void
.end method

.method public static chooseSize(III)I
    .locals 3
    .param p0, "var0"    # I
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7567
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7568
    .local v0, "var3":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7569
    .local v1, "var4":I
    move p0, v1

    .line 7570
    sparse-switch v0, :sswitch_data_0

    .line 7576
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 7572
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 7574
    :sswitch_1
    nop

    .line 7579
    :goto_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/View;

    .line 7583
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->detachViewFromParent(I)V

    .line 7584
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 3
    .param p0, "var0"    # I
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Z

    .line 7587
    sub-int v0, p0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7588
    .local v0, "var5":I
    const/4 p2, 0x0

    .line 7589
    const/4 p0, 0x0

    .line 7590
    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz p4, :cond_2

    .line 7591
    if-ltz p3, :cond_0

    .line 7592
    move p2, p3

    .line 7593
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_1

    .line 7594
    :cond_0
    if-ne p3, v2, :cond_1

    .line 7595
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 7602
    :sswitch_0
    const/4 p2, 0x0

    .line 7603
    const/4 p0, 0x0

    goto :goto_0

    .line 7598
    :sswitch_1
    move p2, v0

    .line 7599
    move p0, p1

    .line 7600
    nop

    .line 7603
    :goto_0
    goto :goto_1

    .line 7605
    :cond_1
    if-ne p3, v1, :cond_6

    .line 7606
    const/4 p2, 0x0

    .line 7607
    const/4 p0, 0x0

    goto :goto_1

    .line 7609
    :cond_2
    if-ltz p3, :cond_3

    .line 7610
    move p2, p3

    .line 7611
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_1

    .line 7612
    :cond_3
    if-ne p3, v2, :cond_4

    .line 7613
    move p2, v0

    .line 7614
    move p0, p1

    goto :goto_1

    .line 7615
    :cond_4
    if-ne p3, v1, :cond_6

    .line 7616
    move p2, v0

    .line 7617
    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v1, :cond_5

    .line 7618
    const/4 p0, 0x0

    goto :goto_1

    .line 7620
    :cond_5
    const/high16 p0, -0x80000000

    .line 7624
    :cond_6
    :goto_1
    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 2
    .param p0, "var0"    # I
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7629
    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7630
    .local v0, "var4":I
    const/4 p1, 0x0

    .line 7631
    const/4 p0, 0x0

    .line 7632
    if-eqz p3, :cond_1

    .line 7633
    if-ltz p2, :cond_0

    .line 7634
    move p1, p2

    .line 7635
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    .line 7637
    :cond_0
    const/4 p1, 0x0

    .line 7638
    const/4 p0, 0x0

    goto :goto_0

    .line 7640
    :cond_1
    if-ltz p2, :cond_2

    .line 7641
    move p1, p2

    .line 7642
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    .line 7643
    :cond_2
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 7644
    move p1, v0

    .line 7645
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    .line 7646
    :cond_3
    const/4 v1, -0x2

    if-ne p2, v1, :cond_4

    .line 7647
    move p1, v0

    .line 7648
    const/high16 p0, -0x80000000

    .line 7651
    :cond_4
    :goto_0
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method

.method private getChildRectangleOnScreenScrollAmount(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 16
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/graphics/Rect;
    .param p4, "var4"    # Z

    .line 7655
    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    .line 7656
    .local v1, "var5":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    .line 7657
    .local v2, "var6":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 7658
    .local v3, "var7":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    .line 7659
    .local v4, "var8":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    .line 7660
    .local v5, "var9":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    .line 7661
    .local v6, "var10":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 7662
    .local v7, "var11":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v8, v6

    .line 7663
    .local v8, "var12":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 7664
    .local v9, "var13":I
    sub-int v10, v6, v1

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7665
    .local v10, "var14":I
    sub-int v12, v7, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 7666
    .local v12, "var15":I
    sub-int v13, v8, v3

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 7667
    .local v13, "var16":I
    add-int v14, v7, v9

    sub-int v15, v4, v5

    sub-int/2addr v14, v15

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 7668
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 7669
    if-nez v13, :cond_2

    .line 7670
    sub-int v14, v8, v3

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_0

    .line 7672
    :cond_0
    if-eqz v10, :cond_1

    .line 7673
    move v13, v10

    goto :goto_0

    .line 7675
    :cond_1
    sub-int v14, v6, v1

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 7678
    :cond_2
    :goto_0
    if-nez v12, :cond_3

    .line 7679
    sub-int v14, v7, v2

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 7682
    :cond_3
    const/4 v14, 0x2

    new-array v14, v14, [I

    aput v13, v14, v11

    aput v12, v14, v15

    return-object v14
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;
    .locals 5
    .param p0, "var0"    # Landroid/content/Context;
    .param p1, "var1"    # Landroid/util/AttributeSet;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 7686
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;-><init>()V

    .line 7687
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;
    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->SeslRecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7688
    .local v1, "var5":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->orientation:I

    .line 7689
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->spanCount:I

    .line 7690
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 7691
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 7692
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7693
    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)Z
    .locals 12
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 7697
    const/4 v0, 0x0

    .line 7698
    .local v0, "var4":Z
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 7700
    .local v1, "var5":Landroid/view/View;
    if-nez v1, :cond_0

    .line 7701
    move v2, v0

    .local v2, "var6":Z
    goto :goto_0

    .line 7703
    .end local v2    # "var6":Z
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 7704
    .local v2, "var7":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 7705
    .local v3, "var8":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    .line 7706
    .local v4, "var9":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    .line 7707
    .local v5, "var10":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v6

    .line 7708
    .local v6, "var11":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    .line 7709
    .local v7, "var12":I
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7710
    .local v8, "var13":Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7711
    move v9, v0

    .line 7712
    .local v9, "var6":Z
    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, p2

    sub-int v11, v4, v5

    if-ge v10, v11, :cond_4

    .line 7713
    move v9, v0

    .line 7714
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, p2

    if-le v10, v2, :cond_3

    .line 7715
    move v9, v0

    .line 7716
    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, p3

    sub-int v11, v6, v7

    if-ge v10, v11, :cond_2

    .line 7717
    move v9, v0

    .line 7718
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, p3

    if-le v10, v3, :cond_1

    .line 7719
    const/4 v9, 0x1

    move v2, v9

    goto :goto_0

    .line 7718
    :cond_1
    move v2, v9

    goto :goto_0

    .line 7716
    :cond_2
    move v2, v9

    goto :goto_0

    .line 7714
    :cond_3
    move v2, v9

    goto :goto_0

    .line 7712
    :cond_4
    move v2, v9

    .line 7726
    .end local v3    # "var8":I
    .end local v4    # "var9":I
    .end local v5    # "var10":I
    .end local v6    # "var11":I
    .end local v7    # "var12":I
    .end local v8    # "var13":Landroid/graphics/Rect;
    .end local v9    # "var6":Z
    .local v2, "var6":Z
    :goto_0
    return v2
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3
    .param p0, "var0"    # I
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7730
    const/4 v0, 0x1

    .line 7731
    .local v0, "var3":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 7732
    .local v1, "var4":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7734
    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 7735
    const/4 v2, 0x0

    .local v2, "var5":Z
    goto :goto_0

    .line 7737
    .end local v2    # "var5":Z
    :cond_0
    move v2, v0

    .line 7738
    .restart local v2    # "var5":Z
    sparse-switch v1, :sswitch_data_0

    .line 7753
    const/4 v2, 0x0

    goto :goto_0

    .line 7747
    :sswitch_0
    move v2, v0

    .line 7748
    if-eq p1, p0, :cond_2

    .line 7749
    const/4 v2, 0x0

    goto :goto_0

    .line 7740
    :sswitch_1
    move v2, v0

    .line 7741
    if-ge p1, p0, :cond_1

    .line 7742
    const/4 v2, 0x0

    .line 7745
    :cond_1
    :sswitch_2
    nop

    .line 7757
    :cond_2
    :goto_0
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    .line 7761
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 7762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    .line 7765
    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/View;

    .line 7768
    invoke-static {p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 7769
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7770
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7771
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeViewAt(I)V

    .line 7772
    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7774
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->detachViewAt(I)V

    .line 7775
    invoke-virtual {p1, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 7776
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->onViewDetached(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 7780
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 7783
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 7784
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 7787
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7788
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 7791
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 7792
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 7795
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7796
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 7799
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 7800
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 7803
    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;

    .line 7806
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 7807
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7810
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 7813
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 7814
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 7817
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)V

    .line 7818
    return-void
.end method

.method public attachView(Landroid/view/View;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 7821
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 7822
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7823
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToDisappearedInLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7825
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->removeFromDisappearedInLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 7828
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7829
    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 7832
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-nez v0, :cond_0

    .line 7833
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 7835
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7838
    :goto_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 7841
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 7845
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 7850
    if-eqz p1, :cond_0

    .line 7851
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 7853
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 7856
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p4, "var4"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 7860
    return-void
.end method

.method public collectInitialPrefetchPositions(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 7863
    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7866
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7870
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7874
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7878
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7882
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7886
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 7890
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var2":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7891
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;ILandroid/view/View;)V

    .line 7890
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7894
    .end local v0    # "var2":I
    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 7897
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;ILandroid/view/View;)V

    .line 7898
    return-void
.end method

.method public detachAndScrapViewAt(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 7901
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;ILandroid/view/View;)V

    .line 7902
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 7905
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 7906
    .local v0, "var2":I
    if-ltz v0, :cond_0

    .line 7907
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 7910
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 7913
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 7914
    return-void
.end method

.method dispatchAttachedToWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 7917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7918
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onAttachedToWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 7919
    return-void
.end method

.method dispatchDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 7922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7923
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 7924
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 7927
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 7928
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->endAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 7931
    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 7934
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-nez v0, :cond_0

    .line 7935
    const/4 p1, 0x0

    goto :goto_0

    .line 7937
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 7938
    .local v0, "var2":Landroid/view/View;
    if-nez v0, :cond_1

    .line 7939
    const/4 p1, 0x0

    goto :goto_0

    .line 7941
    :cond_1
    move-object p1, v0

    .line 7942
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7943
    const/4 p1, 0x0

    .line 7948
    .end local v0    # "var2":Landroid/view/View;
    :cond_2
    :goto_0
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 6
    .param p1, "var1"    # I

    .line 7952
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7953
    .local v0, "var2":I
    const/4 v1, 0x0

    .line 7957
    .local v1, "var3":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 7958
    const/4 v2, 0x0

    .line 7959
    .local v2, "var6":Landroid/view/View;
    goto :goto_1

    .line 7962
    .end local v2    # "var6":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7963
    .local v2, "var4":Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 7964
    .local v3, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    .line 7965
    move-object v4, v2

    .line 7966
    .local v4, "var6":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7967
    move-object v2, v4

    goto :goto_1

    .line 7970
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 7971
    move-object v4, v2

    .line 7972
    nop

    .line 7979
    .end local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v4    # "var6":Landroid/view/View;
    .local v2, "var6":Landroid/view/View;
    :goto_1
    return-object v2

    .line 7976
    .local v2, "var4":Landroid/view/View;
    .restart local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    nop

    .end local v2    # "var4":Landroid/view/View;
    .end local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v1, v1, 0x1

    .line 7977
    goto :goto_0
.end method

.method public abstract generateDefaultLayoutParams()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 7985
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .locals 2
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7990
    instance-of v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 7991
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)V

    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    goto :goto_0

    .line 7992
    .end local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7993
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .restart local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    goto :goto_0

    .line 7995
    .end local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :cond_1
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7998
    .restart local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :goto_0
    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 8002
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 8006
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # I

    .line 8011
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    if-eqz v0, :cond_0

    .line 8012
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "var2":Landroid/view/View;
    goto :goto_0

    .line 8014
    .end local v0    # "var2":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    .line 8017
    .restart local v0    # "var2":Landroid/view/View;
    :goto_0
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 8022
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    if-eqz v0, :cond_0

    .line 8023
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 8025
    .end local v0    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 8028
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 8033
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    .line 8034
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 8036
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 8039
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public getColumnCountForAccessibility(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8043
    const/4 v0, 0x1

    .line 8044
    .local v0, "var3":B
    move v1, v0

    .line 8045
    .local v1, "var4":I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v2, :cond_1

    .line 8046
    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-nez v2, :cond_0

    .line 8047
    move v1, v0

    goto :goto_0

    .line 8049
    :cond_0
    move v1, v0

    .line 8050
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8051
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 8056
    :cond_1
    :goto_0
    return v1
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 8060
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 8064
    invoke-static {p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8065
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 8068
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 8072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8073
    .local v0, "var2":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 8077
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8078
    .local v0, "var2":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 8082
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 8086
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .line 8091
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-nez v0, :cond_0

    .line 8092
    const/4 v0, 0x0

    .local v0, "var1":Landroid/view/View;
    goto :goto_0

    .line 8094
    .end local v0    # "var1":Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8095
    .local v0, "var2":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 8096
    move-object v1, v0

    .line 8097
    .local v1, "var1":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8098
    return-object v1

    .line 8102
    .end local v1    # "var1":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    .line 8105
    .local v0, "var1":Landroid/view/View;
    :goto_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 8109
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    .line 8113
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 8118
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8119
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .local v0, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    goto :goto_0

    .line 8121
    .end local v0    # "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    :cond_0
    const/4 v0, 0x0

    .line 8125
    .restart local v0    # "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    :goto_0
    if-eqz v0, :cond_1

    .line 8126
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    .local v1, "var2":I
    goto :goto_1

    .line 8128
    .end local v1    # "var2":I
    :cond_1
    const/4 v1, 0x0

    .line 8131
    .restart local v1    # "var2":I
    :goto_1
    return v1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 8135
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 8139
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 8143
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 8147
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 8151
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 8156
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8157
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 8159
    .end local v0    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 8162
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public getPaddingEnd()I
    .locals 1

    .line 8167
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8168
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 8170
    .end local v0    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 8173
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 8178
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8179
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 8181
    .end local v0    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 8184
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 8189
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8190
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 8192
    .end local v0    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 8195
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public getPaddingStart()I
    .locals 1

    .line 8200
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8201
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 8203
    .end local v0    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 8206
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 8211
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8212
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 8214
    .end local v0    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 8217
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 8221
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 8225
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8229
    const/4 v0, 0x1

    .line 8230
    .local v0, "var3":B
    move v1, v0

    .line 8231
    .local v1, "var4":I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v2, :cond_1

    .line 8232
    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-nez v2, :cond_0

    .line 8233
    move v1, v0

    goto :goto_0

    .line 8235
    :cond_0
    move v1, v0

    .line 8236
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8237
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 8242
    :cond_1
    :goto_0
    return v1
.end method

.method public getSelectionModeForAccessibility(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8246
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 8250
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Landroid/graphics/Rect;

    .line 8254
    if-eqz p2, :cond_0

    .line 8255
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8256
    .local v0, "var4":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8257
    .end local v0    # "var4":Landroid/graphics/Rect;
    goto :goto_0

    .line 8258
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8261
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_1

    .line 8262
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 8263
    .local v0, "var6":Landroid/graphics/Matrix;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8264
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 8265
    .local v1, "var5":Landroid/graphics/RectF;
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8266
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8267
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8271
    .end local v0    # "var6":Landroid/graphics/Matrix;
    .end local v1    # "var5":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8272
    return-void
.end method

.method public getWidth()I
    .locals 1

    .line 8275
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    .line 8279
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 4

    .line 8283
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8284
    .local v0, "var1":I
    const/4 v1, 0x0

    .line 8288
    .local v1, "var2":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 8289
    const/4 v2, 0x0

    .line 8290
    .local v2, "var4":Z
    goto :goto_1

    .line 8293
    .end local v2    # "var4":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 8294
    .local v2, "var3":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v3, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    .line 8295
    const/4 v3, 0x1

    .line 8296
    .local v3, "var4":Z
    move v2, v3

    .line 8302
    .end local v3    # "var4":Z
    .local v2, "var4":Z
    :goto_1
    return v2

    .line 8299
    .local v2, "var3":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    nop

    .end local v2    # "var3":Landroid/view/ViewGroup$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    .line 8300
    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    .line 8307
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8308
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 8310
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 8313
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 8317
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8318
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 8319
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 8320
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->removeViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 8321
    .end local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    nop

    .line 8324
    return-void

    .line 8322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View should be fully attached to be ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 8327
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .line 8331
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 8336
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8337
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 8339
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 8342
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    .line 8346
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8350
    const/4 v0, 0x0

    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 1

    .line 8354
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .line 8359
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8360
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 8362
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 8365
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 8369
    const/4 v0, 0x1

    .line 8370
    .local v0, "var4":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHorizontalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    const/16 v2, 0x6003

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mVerticalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8371
    const/4 p3, 0x1

    goto :goto_0

    .line 8373
    :cond_0
    const/4 p3, 0x0

    .line 8376
    :goto_0
    if-eqz p2, :cond_1

    .line 8377
    move p2, p3

    goto :goto_1

    .line 8378
    :cond_1
    if-nez p3, :cond_2

    .line 8379
    move p2, v0

    goto :goto_1

    .line 8381
    :cond_2
    const/4 p2, 0x0

    .line 8384
    :goto_1
    return p2
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 8388
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8389
    .local v0, "var6":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 8390
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 8393
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 8394
    .local v0, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8395
    .local v1, "var7":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 8396
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 11
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 8399
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 8400
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8401
    .local v1, "var5":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 8402
    .local v2, "var6":I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 8403
    .local v3, "var7":I
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 8404
    .local v4, "var8":I
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 8405
    .local v5, "var9":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidthMode()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p2

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 8406
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeightMode()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p3

    add-int/2addr v8, v4

    add-int/2addr v8, v5

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    .line 8407
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8408
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 8411
    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 11
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 8414
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 8415
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8416
    .local v1, "var5":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 8417
    .local v2, "var6":I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 8418
    .local v3, "var7":I
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 8419
    .local v4, "var8":I
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 8420
    .local v5, "var9":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidthMode()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    add-int/2addr v8, p2

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 8421
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeightMode()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v8, p3

    add-int/2addr v8, v4

    add-int/2addr v8, v5

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    .line 8422
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8423
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 8426
    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 8429
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8430
    .local v0, "var3":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 8433
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8434
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 8436
    return-void

    .line 8431
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 8439
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8440
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetChildrenHorizontal(I)V

    .line 8443
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 8446
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8447
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetChildrenVertical(I)V

    .line 8450
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 8453
    return-void
.end method

.method public onAddFocusables(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 8456
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 8460
    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8464
    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 8467
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 8468
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p4, "var4"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8471
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 8501
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8502
    return-void
.end method

.method public onInitializeAccessibilityEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "var3"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 8475
    const/4 v0, 0x1

    .line 8476
    .local v0, "var4":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 8477
    move v2, v0

    .line 8478
    .local v2, "var5":Z
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8479
    move v2, v0

    .line 8480
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8481
    move v2, v0

    .line 8482
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8483
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8484
    move v2, v0

    goto :goto_0

    .line 8486
    :cond_0
    const/4 v2, 0x0

    .line 8492
    :cond_1
    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 8493
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_2

    .line 8494
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 8498
    .end local v2    # "var5":Z
    :cond_2
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "var1"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 8505
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 8506
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "var3"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 8509
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8510
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 8511
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 8514
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8515
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 8516
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 8519
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 8520
    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 8541
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 8542
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8543
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 8546
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 8524
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8525
    invoke-virtual {p0, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .local v0, "var5":I
    goto :goto_0

    .line 8527
    .end local v0    # "var5":I
    :cond_0
    const/4 v0, 0x0

    .line 8531
    .restart local v0    # "var5":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8532
    invoke-virtual {p0, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    move v7, v1

    .local v1, "var6":I
    goto :goto_1

    .line 8534
    .end local v1    # "var6":I
    :cond_1
    const/4 v1, 0x0

    move v7, v1

    .line 8537
    .local v7, "var6":I
    :goto_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, v0

    move v3, v7

    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 8538
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 8549
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 8553
    return-void
.end method

.method public onItemsChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 8556
    return-void
.end method

.method public onItemsMoved(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;III)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 8559
    return-void
.end method

.method public onItemsRemoved(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 8562
    return-void
.end method

.method public onItemsUpdated(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 8565
    return-void
.end method

.method public onItemsUpdated(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Ljava/lang/Object;

    .line 8568
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onItemsUpdated(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    .line 8569
    return-void
.end method

.method public onLayoutChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8572
    const-string v0, "SeslRecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8573
    return-void
.end method

.method public onLayoutCompleted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8576
    return-void
.end method

.method public onMeasure(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;II)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 8579
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->defaultOnMeasure(II)V

    .line 8580
    return-void
.end method

.method public onRequestChildFocus(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8589
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8590
    const/4 v0, 0x0

    .local v0, "var4":Z
    goto :goto_0

    .line 8592
    .end local v0    # "var4":Z
    :cond_0
    const/4 v0, 0x1

    .line 8595
    .restart local v0    # "var4":Z
    :goto_0
    return v0
.end method

.method public onRequestChildFocus(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # Landroid/view/View;

    .line 8583
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onRequestChildFocus(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 8599
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 8602
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 8606
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/os/Bundle;

    .line 8609
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->performAccessibilityAction(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "var3"    # I
    .param p4, "var4"    # Landroid/os/Bundle;

    .line 8613
    const/4 v0, 0x0

    .line 8614
    .local v0, "var5":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v1, :cond_4

    .line 8615
    const/4 v2, 0x0

    .line 8616
    .local v2, "var6":B
    const/4 v3, 0x0

    .line 8617
    .local v3, "var7":B
    const/4 v4, 0x0

    .line 8618
    .local v4, "var8":I
    const/4 v5, 0x0

    .line 8619
    .local v5, "var9":I
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 8633
    :sswitch_0
    move p3, v2

    .line 8634
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8635
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v1, v7

    neg-int p3, v1

    .line 8638
    :cond_0
    move v4, p3

    .line 8639
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8640
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    neg-int v5, v1

    .line 8641
    move v4, p3

    goto :goto_0

    .line 8621
    :sswitch_1
    move p3, v3

    .line 8622
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8623
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    sub-int p3, v1, v7

    .line 8626
    :cond_1
    move v4, p3

    .line 8627
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8628
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v6

    sub-int v5, v1, v6

    .line 8629
    move v4, p3

    .line 8645
    :cond_2
    :goto_0
    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    .line 8646
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollBy(II)V

    .line 8647
    const/4 v0, 0x1

    .line 8651
    .end local v2    # "var6":B
    .end local v3    # "var7":B
    .end local v4    # "var8":I
    .end local v5    # "var9":I
    :cond_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/os/Bundle;

    .line 8659
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionForItem(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .param p5, "var5"    # Landroid/os/Bundle;

    .line 8655
    const/4 v0, 0x0

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Runnable;

    .line 8663
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8664
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 8667
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .line 8670
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var1":I
    :goto_0
    if-ltz v0, :cond_0

    .line 8671
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->removeViewAt(I)V

    .line 8670
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8674
    .end local v0    # "var1":I
    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 8677
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var2":I
    :goto_0
    if-ltz v0, :cond_1

    .line 8678
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8679
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 8677
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8683
    .end local v0    # "var2":I
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 8686
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getScrapCount()I

    move-result v0

    .line 8688
    .local v0, "var2":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "var3":I
    :goto_0
    if-ltz v1, :cond_3

    .line 8689
    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 8690
    .local v2, "var4":Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 8691
    .local v3, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8692
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8693
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8694
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v5, v2, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8697
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v4, :cond_1

    .line 8698
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->endAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 8701
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8702
    invoke-virtual {p1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 8688
    .end local v2    # "var4":Landroid/view/View;
    .end local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8706
    .end local v1    # "var3":I
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->clearScrap()V

    .line 8707
    if-lez v0, :cond_4

    .line 8708
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 8711
    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 8714
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 8715
    invoke-virtual {p2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8716
    return-void
.end method

.method public removeAndRecycleViewAt(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 8719
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8720
    .local v0, "var3":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8721
    invoke-virtual {p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8722
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "var1"    # Ljava/lang/Runnable;

    .line 8726
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8727
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .local v0, "var2":Z
    goto :goto_0

    .line 8729
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 8732
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 8736
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8737
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 8740
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->removeView(Landroid/view/View;)V

    .line 8741
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 8744
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8745
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->removeViewAt(I)V

    .line 8748
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/graphics/Rect;
    .param p4, "var4"    # Z

    .line 8751
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public requestChildRectangleOnScreen(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/graphics/Rect;
    .param p4, "var4"    # Z
    .param p5, "var5"    # Z

    .line 8755
    const/4 v0, 0x0

    .line 8756
    .local v0, "var6":Z
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildRectangleOnScreenScrollAmount(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v1

    .line 8757
    .local v1, "var9":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 8758
    .local v2, "var7":I
    const/4 v3, 0x1

    aget v3, v1, v3

    .line 8759
    .local v3, "var8":I
    if-eqz p5, :cond_0

    .line 8760
    move p5, v0

    .line 8761
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isFocusedChildVisibleAfterScrolling(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8762
    return p5

    .line 8766
    :cond_0
    if-nez v2, :cond_1

    .line 8767
    move p5, v0

    .line 8768
    if-nez v3, :cond_1

    .line 8769
    return p5

    .line 8773
    :cond_1
    if-eqz p4, :cond_2

    .line 8774
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 8776
    :cond_2
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->smoothScrollBy(II)V

    .line 8779
    :goto_0
    const/4 p5, 0x1

    .line 8780
    return p5
.end method

.method public requestLayout()V
    .locals 1

    .line 8784
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8785
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 8788
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    .line 8791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 8792
    return-void
.end method

.method public scrollHorizontallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8795
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 8799
    return-void
.end method

.method public scrollVerticallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 8802
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8807
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 8808
    return-void
.end method

.method setExactMeasureSpecsFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 8812
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 8813
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 8816
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 8817
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 8818
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 8819
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8820
    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->updateViewCacheSize()V

    .line 8824
    :cond_0
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 8827
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    .line 8828
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mWidthMode:I

    .line 8829
    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    .line 8830
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    .line 8833
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    .line 8834
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHeightMode:I

    .line 8835
    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    .line 8836
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    .line 8839
    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 8842
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$5100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    .line 8843
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 9
    .param p1, "var1"    # Landroid/graphics/Rect;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 8846
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 8847
    .local v0, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    .line 8848
    .local v1, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    .line 8849
    .local v2, "var6":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 8850
    .local v3, "var7":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    .line 8851
    .local v4, "var8":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    .line 8852
    .local v5, "var9":I
    add-int v6, v0, v1

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v7

    invoke-static {p2, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->chooseSize(III)I

    move-result v6

    add-int v7, v3, v4

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v8

    invoke-static {p3, v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->chooseSize(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 8853
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 11
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 8856
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8857
    .local v0, "var3":I
    if-nez v0, :cond_0

    .line 8858
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->defaultOnMeasure(II)V

    goto :goto_1

    .line 8860
    :cond_0
    const v1, 0x7fffffff

    .line 8861
    .local v1, "var4":I
    const v2, 0x7fffffff

    .line 8862
    .local v2, "var5":I
    const/high16 v3, -0x80000000

    .line 8863
    .local v3, "var6":I
    const/high16 v4, -0x80000000

    .line 8866
    .local v4, "var7":I
    const/4 v5, 0x0

    .local v5, "var8":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 8867
    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8868
    .local v6, "var9":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 8869
    .local v7, "var10":Landroid/graphics/Rect;
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8870
    move v8, v1

    .line 8871
    .local v8, "var11":I
    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-ge v9, v1, :cond_1

    .line 8872
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 8875
    :cond_1
    move v1, v3

    .line 8876
    iget v9, v7, Landroid/graphics/Rect;->right:I

    if-le v9, v3, :cond_2

    .line 8877
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 8880
    :cond_2
    move v9, v2

    .line 8881
    .local v9, "var12":I
    iget v10, v7, Landroid/graphics/Rect;->top:I

    if-ge v10, v2, :cond_3

    .line 8882
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 8885
    :cond_3
    move v2, v4

    .line 8886
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    if-le v10, v4, :cond_4

    .line 8887
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 8890
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 8891
    move v3, v1

    .line 8892
    move v4, v2

    .line 8893
    move v1, v8

    .line 8866
    .end local v6    # "var9":Landroid/view/View;
    .end local v7    # "var10":Landroid/graphics/Rect;
    .end local v8    # "var11":I
    move v2, v9

    goto :goto_0

    .line 8896
    .end local v5    # "var8":I
    .end local v9    # "var12":I
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8897
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 8900
    .end local v1    # "var4":I
    .end local v2    # "var5":I
    .end local v3    # "var6":I
    .end local v4    # "var7":I
    :goto_1
    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 8903
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 8904
    return-void
.end method

.method setRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 8907
    if-nez p1, :cond_0

    .line 8908
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 8909
    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    .line 8910
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    .line 8911
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    goto :goto_0

    .line 8913
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 8914
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    .line 8915
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mWidth:I

    .line 8916
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHeight:I

    .line 8919
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mWidthMode:I

    .line 8920
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mHeightMode:I

    .line 8921
    return-void
.end method

.method shouldMeasureChild(Landroid/view/View;IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 8925
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8926
    const/4 v0, 0x0

    .local v0, "var5":Z
    goto :goto_0

    .line 8928
    .end local v0    # "var5":Z
    :cond_0
    const/4 v0, 0x1

    .line 8931
    .restart local v0    # "var5":Z
    :goto_0
    return v0
.end method

.method shouldMeasureTwice()Z
    .locals 1

    .line 8935
    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 8940
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8941
    const/4 v0, 0x0

    .local v0, "var5":Z
    goto :goto_0

    .line 8943
    .end local v0    # "var5":Z
    :cond_0
    const/4 v0, 0x1

    .line 8946
    .restart local v0    # "var5":Z
    :goto_0
    return v0
.end method

.method public smoothScrollToPosition(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;I)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "var3"    # I

    .line 8950
    const-string v0, "SeslRecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8951
    return-void
.end method

.method public startSmoothScroll(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    .line 8954
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8955
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 8958
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    .line 8959
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->start(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    .line 8960
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 8963
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 8964
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->stopIgnoring()V

    .line 8965
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->resetInternal()V

    .line 8966
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 8967
    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    .line 8970
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 8971
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 8974
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 8977
    const/4 v0, 0x0

    return v0
.end method
