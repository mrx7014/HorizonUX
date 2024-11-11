.class public abstract Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;
.super Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/ui/appbar/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public overlayTop:I

.field public final tempRect1:Landroid/graphics/Rect;

.field public final tempRect2:Landroid/graphics/Rect;

.field public verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 42
    return-void
.end method

.method public static resolveGravity(I)I
    .locals 1
    .param p0, "var0"    # I

    .line 45
    move v0, p0

    .line 46
    .local v0, "var1":I
    if-nez p0, :cond_0

    .line 47
    const v0, 0x800033

    .line 50
    :cond_0
    return v0
.end method


# virtual methods
.method public abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 5
    .param p1, "var1"    # Landroid/view/View;

    .line 56
    iget v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 57
    .local v0, "var2":I
    const/4 v1, 0x0

    .line 58
    .local v1, "var3":I
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v2

    .line 60
    .local v2, "var4":F
    iget v1, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 61
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    .line 64
    .end local v2    # "var4":F
    :cond_0
    return v1
.end method

.method public abstract getOverlapRatioForOffset(Landroid/view/View;)F
.end method

.method public final getOverlayTop()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    return v0
.end method

.method public getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final getVerticalLayoutGap()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return v0
.end method

.method public layoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)V
    .locals 11
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 82
    invoke-virtual {p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "var4":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    .line 85
    .local v1, "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    iget-object v8, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 86
    .local v8, "var6":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v9

    .line 88
    .local v9, "var7":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v9, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget v2, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 90
    iget v2, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 93
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 94
    .local v10, "var8":Landroid/graphics/Rect;
    iget v2, v1, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object v5, v8

    move-object v6, v10

    move v7, p3

    invoke-static/range {v2 .. v7}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result p3

    .line 96
    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p3

    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, p3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 97
    iget v2, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 98
    .end local v1    # "var5":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    .end local v8    # "var6":Landroid/graphics/Rect;
    .end local v9    # "var7":Landroidx/core/view/WindowInsetsCompat;
    .end local v10    # "var8":Landroid/graphics/Rect;
    goto :goto_0

    .line 99
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/ViewOffsetBehavior;->layoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)V

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 103
    :goto_0
    return-void
.end method

.method public onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 15
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I

    .line 106
    move-object v0, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    .local v8, "var7":I
    const/4 v9, 0x0

    .line 108
    .local v9, "var8":B
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    const/4 v2, -0x2

    if-ne v8, v2, :cond_6

    .line 109
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v10

    .line 110
    .local v10, "var9":Landroid/view/View;
    if-eqz v10, :cond_6

    .line 111
    invoke-static {v10}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_1

    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-static {v7, v11}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 113
    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 115
    return v11

    .line 119
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 120
    .local v2, "var10":I
    move v3, v2

    .line 121
    .end local p5    # "var5":I
    .local v3, "var5":I
    if-nez v2, :cond_2

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v3

    .line 125
    :cond_2
    invoke-virtual {p0, v10}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    .line 126
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 127
    .end local v2    # "var10":I
    .local v12, "var10":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->shouldHeaderOverlapScrollingChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    neg-int v2, v12

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 130
    :cond_3
    sub-int/2addr v3, v12

    .line 133
    :goto_0
    if-gez v3, :cond_4

    .line 134
    move v3, v9

    move v13, v3

    goto :goto_1

    .line 133
    :cond_4
    move v13, v3

    .line 138
    .end local v3    # "var5":I
    .local v13, "var5":I
    :goto_1
    if-ne v8, v1, :cond_5

    .line 139
    const/high16 v1, 0x40000000    # 2.0f

    move v14, v1

    .local v1, "var11":I
    goto :goto_2

    .line 141
    .end local v1    # "var11":I
    :cond_5
    const/high16 v1, -0x80000000

    move v14, v1

    .line 144
    .local v14, "var11":I
    :goto_2
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 145
    return v11

    .line 149
    .end local v10    # "var9":Landroid/view/View;
    .end local v12    # "var10":I
    .end local v13    # "var5":I
    .end local v14    # "var11":I
    .restart local p5    # "var5":I
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method public final setOverlayTop(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 153
    iput p1, p0, Lcom/samsung/android/ui/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 154
    return-void
.end method

.method public shouldHeaderOverlapScrollingChild()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method
