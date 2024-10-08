.class public Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;,
        Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;,
        Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x693

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_SCALE_DURATION_OFFSET:F = 0.2f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 7.5f

.field private static final CENTER_RADIUS_LARGE:F = 11.0f

.field private static final COLORS:[I

.field private static final COLOR_CHANGE_OFFSET:F = 0.75f

.field public static final DEFAULT:I = 0x1

.field private static final FINISHING_ANIMATION_DURATION:I = 0x3e8

.field private static final GROUP_FULL_ROTATION:F = 216.0f

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final MIN_PROGRESS_ARC:F = 0.01f

.field private static final RING_ROTATION:F = 0.20999998f

.field private static final SHRINK_OFFSET:F = 0.4f

.field static final SINE_IN_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private mAnimationEndCallback:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

.field private mAnimator:Landroid/animation/Animator;

.field private mEnding:Z

.field mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

.field private mRotation:F

.field mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    const-string v1, "#008cff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#06b485"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->COLORS:[I

    .line 63
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    const v3, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_IN_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 70
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v1, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

    .line 86
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 87
    new-instance v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-direct {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 88
    sget-object v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 89
    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V

    .line 91
    return-void
.end method

.method private applyFinishTranslation(FLcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 5
    .param p1, "var1"    # F
    .param p2, "var2"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->updateRingColor(FLcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    .line 96
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 97
    div-float v0, p1, v0

    .line 98
    .local v0, "var3":F
    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 101
    .end local v0    # "var3":F
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 102
    .restart local v0    # "var3":F
    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    sub-float/2addr v2, v3

    sget-object v3, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 103
    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 104
    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    sub-float v2, v0, v2

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 105
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

    .line 107
    .local v1, "var4":Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mEnding:Z

    if-nez v2, :cond_1

    .line 108
    invoke-interface {v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;->OnAnimationEnd()V

    .line 109
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mEnding:Z

    .line 113
    .end local v1    # "var4":Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;
    :cond_1
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 5
    .param p1, "var1"    # F
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 116
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 117
    .local v0, "var4":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 118
    .local v1, "var5":I
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 119
    .local v2, "var6":I
    and-int/lit16 p2, p2, 0xff

    .line 120
    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v3, v0

    shl-int/lit8 v3, v3, 0x18

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v4, v1

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v4, v2

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, p3, 0xff

    sub-int/2addr v4, p2

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v4, p2

    or-int/2addr v3, v4

    return v3
.end method

.method private getRotation()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    return v0
.end method

.method private setRotation(F)V
    .locals 0
    .param p1, "var1"    # F

    .line 128
    iput p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    .line 129
    return-void
.end method

.method private setSizeParameters(FFFF)V
    .locals 4
    .param p1, "var1"    # F
    .param p2, "var2"    # F
    .param p3, "var3"    # F
    .param p4, "var4"    # F

    .line 132
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 133
    .local v0, "var5":Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 134
    .local v1, "var6":F
    mul-float v2, p2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 135
    mul-float v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 137
    mul-float v2, p3, v1

    mul-float v3, p4, v1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 138
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 143
    .local v0, "var1":Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 144
    .local v1, "var2":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 153
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 154
    sget-object v2, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    new-instance v2, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    iput-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    .line 184
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method applyTransformation(FLcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V
    .locals 7
    .param p1, "var1"    # F
    .param p2, "var2"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;
    .param p3, "var3"    # Z

    .line 187
    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->applyFinishTranslation(FLcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    goto :goto_1

    .line 189
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    .line 190
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    .line 193
    .local v1, "var4":F
    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v3, p1, v2

    const v4, 0x3c23d70a    # 0.01f

    const v5, 0x3f4a3d71    # 0.79f

    if-gtz v3, :cond_2

    .line 194
    div-float v0, p1, v2

    .line 195
    .local v0, "var5":F
    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    .line 196
    .local v2, "var6":F
    sget-object v3, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .end local v0    # "var5":F
    .local v3, "var5":F
    goto :goto_0

    .line 198
    .end local v2    # "var6":F
    .end local v3    # "var5":F
    :cond_2
    sub-float v2, p1, v2

    const v3, 0x3f19999a    # 0.6f

    div-float/2addr v2, v3

    .line 199
    .restart local v2    # "var6":F
    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    add-float/2addr v3, v5

    .line 200
    .restart local v3    # "var5":F
    sget-object v6, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v0, v6

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    sub-float v2, v3, v0

    .line 203
    :goto_0
    sget-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 204
    .local v0, "var7":F
    iget v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    .line 205
    .local v4, "var8":F
    invoke-virtual {p2, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 206
    invoke-virtual {p2, v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 207
    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v5, v0

    add-float/2addr v5, v1

    invoke-virtual {p2, v5}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 208
    add-float v5, p1, v4

    const/high16 v6, 0x43580000    # 216.0f

    mul-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setRotation(F)V

    .line 211
    .end local v0    # "var7":F
    .end local v1    # "var4":F
    .end local v2    # "var6":F
    .end local v3    # "var5":F
    .end local v4    # "var8":F
    :cond_3
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 215
    .local v0, "var2":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getArrowEnabled()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getShowArrow()Z

    move-result v0

    return v0
.end method

.method public getArrowHeight()F
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowHeight()F

    move-result v0

    return v0
.end method

.method public getArrowScale()F
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowScale()F

    move-result v0

    return v0
.end method

.method public getArrowWidth()F
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getArrowWidth()F

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getCenterRadius()F
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getCenterRadius()F

    move-result v0

    return v0
.end method

.method public getColorSchemeColors()[I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getColors()[I

    move-result-object v0

    return-object v0
.end method

.method public getEndTrim()F
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 259
    const/4 v0, -0x3

    return v0
.end method

.method public getProgressRotation()F
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getRotation()F

    move-result v0

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setAlpha(I)V

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 286
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 289
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 291
    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 294
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 296
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "var1"    # F

    .line 299
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 301
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 304
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 306
    return-void
.end method

.method public setCenterRadius(F)V
    .locals 1
    .param p1, "var1"    # F

    .line 309
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 311
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/ColorFilter;

    .line 314
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 316
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "var1"    # [I

    .line 319
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColors([I)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 322
    return-void
.end method

.method public setOnAnimationEndCallback(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

    .line 325
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

    .line 326
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "var1"    # F

    .line 329
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 331
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 334
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 337
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/Paint$Cap;

    .line 340
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 342
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "var1"    # F

    .line 345
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 347
    return-void
.end method

.method public setStyle(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 350
    if-nez p1, :cond_0

    .line 351
    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_0

    .line 353
    :cond_0
    const/high16 v0, 0x40f00000    # 7.5f

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setSizeParameters(FFFF)V

    .line 356
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 357
    return-void
.end method

.method public start()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    .line 364
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 365
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 371
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mEnding:Z

    .line 372
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x693

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 377
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 380
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setRotation(F)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->resetOriginals()V

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 389
    return-void
.end method

.method updateRingColor(FLcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 3
    .param p1, "var1"    # F
    .param p2, "var2"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 392
    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 393
    sub-float v0, p1, v0

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getNextColor()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->evaluateColorChange(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColor(I)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setColor(I)V

    .line 398
    :goto_0
    return-void
.end method
