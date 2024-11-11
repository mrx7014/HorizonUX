.class public Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;
.super Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;
.source "SeslAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1753
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;-><init>()V

    .line 1754
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 1757
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1758
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->ScrollingViewBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1759
    .local v0, "var3":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1760
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1761
    return-void
.end method

.method public static getAppBarLayoutOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)I
    .locals 2
    .param p0, "var0"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    .line 1764
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v0

    .line 1765
    .local v0, "var1":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    instance-of v1, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;

    invoke-virtual {v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 0

    .line 1752
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-result-object p1

    return-object p1
.end method

.method public findFirstDependency(Ljava/util/List;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/samsung/android/ui/appbar/SeslAppBarLayout;"
        }
    .end annotation

    .line 1769
    .local p1, "var1":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1771
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1772
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1773
    .local v2, "var4":Landroid/view/View;
    instance-of v3, v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    if-eqz v3, :cond_0

    .line 1774
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    return-object v3

    .line 1771
    .end local v2    # "var4":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1778
    .end local v1    # "var3":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "var1"    # Landroid/view/View;

    .line 1782
    instance-of v0, p1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1783
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    .line 1784
    .local v0, "var5":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v2

    .line 1785
    .local v2, "var2":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    .line 1786
    .local v3, "var3":I
    invoke-static {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)I

    move-result v4

    .line 1787
    .local v4, "var4":I
    if-eqz v3, :cond_0

    add-int v5, v2, v4

    if-gt v5, v3, :cond_0

    .line 1788
    return v1

    .line 1791
    :cond_0
    sub-int/2addr v2, v3

    .line 1792
    if-eqz v2, :cond_1

    .line 1793
    int-to-float v1, v4

    int-to-float v5, v2

    div-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v1, v5

    return v1

    .line 1797
    .end local v0    # "var5":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .end local v2    # "var2":I
    .end local v3    # "var3":I
    .end local v4    # "var4":I
    :cond_1
    return v1
.end method

.method public getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 1801
    instance-of v0, p1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public layoutDependsOn(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/view/View;

    .line 1805
    instance-of v0, p3, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    return v0
.end method

.method public final offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 1809
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v0

    .line 1810
    .local v0, "var3":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    instance-of v1, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;

    if-eqz v1, :cond_0

    .line 1811
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;

    .line 1812
    .local v1, "var4":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetDelta:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1815
    .end local v1    # "var4":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;
    :cond_0
    return-void
.end method

.method public onDependentViewChanged(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/view/View;

    .line 1818
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 1819
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 1820
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestChildRectangleOnScreen(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/graphics/Rect;
    .param p4, "var4"    # Z

    .line 1824
    invoke-virtual {p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-result-object v0

    .line 1825
    .local v0, "var5":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1827
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 1828
    .local v2, "var6":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1829
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1830
    xor-int/lit8 v3, p4, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZ)V

    .line 1831
    const/4 v1, 0x1

    return v1

    .line 1835
    .end local v2    # "var6":Landroid/graphics/Rect;
    :cond_0
    return v1
.end method

.method public final updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 1839
    instance-of v0, p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    if-eqz v0, :cond_0

    .line 1840
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    .line 1841
    .local v0, "var3":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->isLiftOnScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1842
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLiftedState(Z)Z

    .line 1846
    .end local v0    # "var3":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    :cond_0
    return-void
.end method
