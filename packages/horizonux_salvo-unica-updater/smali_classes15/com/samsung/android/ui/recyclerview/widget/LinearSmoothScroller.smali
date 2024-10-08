.class public Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;-><init>()V

    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 37
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 44
    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 2
    .param p1, "tmpDt"    # I
    .param p2, "dt"    # I

    .line 122
    move v0, p1

    .line 123
    .local v0, "before":I
    sub-int/2addr p1, p2

    .line 124
    mul-int v1, v0, p1

    if-gtz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    return v1

    .line 127
    :cond_0
    return p1
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 2
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .line 131
    packed-switch p5, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    sub-int v0, p4, p2

    return v0

    .line 137
    :pswitch_1
    sub-int v0, p3, p1

    .line 138
    .local v0, "dtStart":I
    if-lez v0, :cond_0

    .line 139
    return v0

    .line 141
    :cond_0
    sub-int v1, p4, p2

    .line 142
    .local v1, "dtEnd":I
    if-gez v1, :cond_1

    .line 143
    return v1

    .line 149
    .end local v0    # "dtStart":I
    .end local v1    # "dtEnd":I
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 133
    :pswitch_2
    sub-int v0, p3, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 167
    .local v0, "layoutManager":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 171
    .local v1, "params":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 172
    .local v2, "left":I
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v3

    iget v4, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 173
    .local v3, "right":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    .line 174
    .local v10, "start":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v11, v4, v5

    .line 175
    .local v11, "end":I
    move-object v4, p0

    move v5, v2

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v4

    return v4

    .line 168
    .end local v1    # "params":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v10    # "start":I
    .end local v11    # "end":I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 154
    .local v0, "layoutManager":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 158
    .local v1, "params":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 159
    .local v2, "top":I
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v3

    iget v4, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 160
    .local v3, "bottom":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    .line 161
    .local v10, "start":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v11, v4, v5

    .line 162
    .local v11, "end":I
    move-object v4, p0

    move v5, v2

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v4

    return v4

    .line 155
    .end local v1    # "params":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    .end local v10    # "start":I
    .end local v11    # "end":I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 85
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 4
    .param p1, "dx"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2
    .param p1, "dx"    # I

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3
    .param p1, "targetPosition"    # I

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 180
    .local v0, "layoutManager":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_0

    .line 181
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-interface {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LinearSmoothScroller"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected onSeekTargetStep(IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p4, "action"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 64
    return-void

    .line 69
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 70
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 72
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0, p4}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->updateActionForInterimTarget(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;)V

    .line 76
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 47
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 82
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "action"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v0

    .line 52
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 53
    .local v1, "dy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 54
    .local v2, "distance":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 55
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 56
    neg-int v4, v0

    neg-int v5, v1

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;)V
    .locals 6
    .param p1, "action"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 106
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 113
    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 115
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 116
    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 117
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v1

    .line 118
    .local v1, "time":I
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v5, v1

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v2, v4, v3, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 119
    return-void

    .line 107
    .end local v1    # "time":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    .line 108
    .local v1, "target":I
    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 110
    return-void
.end method
