.class Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "SeslTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field public final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field public indicatorAnimator:Landroid/animation/ValueAnimator;

.field public indicatorLeft:I

.field public indicatorRight:I

.field public layoutDirection:I

.field public selectedIndicatorHeight:I

.field public final selectedIndicatorPaint:Landroid/graphics/Paint;

.field public selectedPosition:I

.field public selectionOffset:F

.field final synthetic this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;Landroid/content/Context;)V
    .locals 0
    .param p2, "var2"    # Landroid/content/Context;

    .line 1411
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1412
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1403
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 1404
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 1405
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 1408
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 1413
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 1414
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1415
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 1416
    return-void
.end method


# virtual methods
.method public animateIndicatorToPosition(II)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1419
    return-void
.end method

.method public childrenNeedLayout()Z
    .locals 3

    .line 1422
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    .line 1424
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1425
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1426
    const/4 v2, 0x1

    return v2

    .line 1424
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1430
    .end local v1    # "var2":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 1434
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1435
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 1438
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1439
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1440
    .local v0, "var6":Landroid/animation/ValueAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1442
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    .line 1443
    .local v1, "var7":J
    iget v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectedPosition:I

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    sub-float/2addr v4, v5

    long-to-float v5, v1

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 1444
    .end local v1    # "var7":J
    goto :goto_0

    .line 1445
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 1448
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1452
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1453
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_8

    .line 1454
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1455
    .local v0, "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabGravity:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 1456
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    .line 1457
    .local v1, "var4":I
    const/4 v2, 0x0

    .line 1458
    .local v2, "var5":B
    const/4 v3, 0x0

    .line 1462
    .local v3, "var6":I
    move v4, v3

    .local v4, "var7":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1463
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1464
    .local v5, "var9":Landroid/view/View;
    move v6, v4

    .line 1465
    .local v6, "var8":I
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1466
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1469
    :cond_1
    nop

    .end local v5    # "var9":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    .line 1462
    move v4, v6

    goto :goto_0

    .line 1472
    .end local v6    # "var8":I
    :cond_2
    if-gtz v4, :cond_3

    .line 1473
    return-void

    .line 1476
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v5

    float-to-int v3, v5

    .line 1478
    mul-int v5, v4, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_4

    .line 1479
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1480
    const/4 v5, 0x0

    iput v5, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabGravity:I

    .line 1481
    invoke-virtual {v0, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateTabViews(Z)V

    .line 1482
    const/4 v5, 0x1

    .local v5, "var11":Z
    goto :goto_2

    .line 1484
    .end local v5    # "var11":Z
    :cond_4
    const/4 v5, 0x0

    .line 1485
    .local v5, "var12":Z
    move v6, v2

    .line 1488
    .restart local v6    # "var8":I
    :goto_1
    move v7, v5

    .line 1489
    .local v7, "var11":Z
    if-lt v6, v1, :cond_5

    .line 1490
    move v5, v7

    .line 1504
    .end local v6    # "var8":I
    .end local v7    # "var11":Z
    .local v5, "var11":Z
    :goto_2
    if-eqz v5, :cond_8

    .line 1505
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_3

    .line 1493
    .local v5, "var12":Z
    .restart local v6    # "var8":I
    .restart local v7    # "var11":Z
    :cond_5
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1494
    .local v8, "var10":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v10, 0x0

    if-ne v9, v4, :cond_6

    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_7

    .line 1495
    :cond_6
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1496
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1497
    const/4 v5, 0x1

    .line 1500
    :cond_7
    nop

    .end local v8    # "var10":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v6, v6, 0x1

    .line 1501
    goto :goto_1

    .line 1510
    .end local v0    # "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    .end local v1    # "var4":I
    .end local v2    # "var5":B
    .end local v3    # "var6":I
    .end local v4    # "var7":I
    .end local v5    # "var12":Z
    .end local v6    # "var8":I
    .end local v7    # "var11":Z
    :cond_8
    :goto_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 1513
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 1514
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_0

    .line 1515
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->requestLayout()V

    .line 1516
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 1519
    :cond_0
    return-void
.end method

.method public setIndicatorPositionFromTabPosition(IF)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # F

    .line 1522
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1523
    .local v0, "var3":Landroid/animation/ValueAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1527
    :cond_0
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 1528
    iput p2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 1529
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 1530
    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1533
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1535
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1538
    :cond_0
    return-void
.end method

.method public setSelectedIndicatorHeight(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1541
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 1542
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 1543
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1546
    :cond_0
    return-void
.end method

.method public final updateIndicatorPosition()V
    .locals 0

    .line 1549
    return-void
.end method
