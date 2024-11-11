.class public Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;
.super Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
.source "SeslTabDotLineIndicator.java"


# instance fields
.field private mDiameter:I

.field private mInterval:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleFrom:F

.field private final mScaleFromDiff:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mDiameter:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mInterval:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mScaleFromDiff:F

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 57
    return-void
.end method

.method private updateDotLineScaleFrom()V
    .locals 3

    .line 81
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mWidth:I

    if-nez v0, :cond_2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mWidth:I

    .line 83
    if-gtz v0, :cond_1

    .line 84
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mScaleFrom:F

    goto :goto_0

    .line 86
    :cond_1
    int-to-float v1, v0

    iget v2, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mScaleFromDiff:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mScaleFrom:F

    .line 89
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->updateDotLineScaleFrom()V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 102
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 103
    .local v1, "height":F
    const/4 v4, 0x0

    iget v3, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mDiameter:I

    int-to-float v5, v3

    div-float/2addr v5, v2

    sub-float v5, v1, v5

    int-to-float v6, v0

    int-to-float v7, v3

    div-float/2addr v7, v2

    add-float/2addr v7, v1

    int-to-float v8, v3

    int-to-float v9, v3

    iget-object v10, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 105
    .end local v0    # "width":I
    .end local v1    # "height":F
    :cond_1
    return-void
.end method

.method onHide()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->setAlpha(F)V

    .line 62
    return-void
.end method

.method onSetSelectedIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 93
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    return-void
.end method

.method onShow()V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->startReleaseEffect()V

    .line 67
    return-void
.end method

.method startPressEffect()V
    .locals 1

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->setAlpha(F)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->invalidate()V

    .line 73
    return-void
.end method

.method startReleaseEffect()V
    .locals 1

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabDotLineIndicator;->setAlpha(F)V

    .line 78
    return-void
.end method
