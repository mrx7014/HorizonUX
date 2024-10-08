.class public Lcom/samsung/android/ui/widget/SeslScroller;
.super Ljava/lang/Object;
.source "SeslScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslScroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field public static DECELERATION_RATE:F = 0.0f

.field public static final DEFAULT_DURATION:I = 0xfa

.field public static final END_TENSION:F = 1.0f

.field public static final FLING_MODE:I = 0x1

.field public static final INFLEXION:F = 0.35f

.field public static final NB_SAMPLES:I = 0x64

.field public static final P1:F = 0.175f

.field public static final P2:F = 0.35000002f

.field public static final SCROLL_MODE:I = 0x0

.field public static final SPLINE_POSITION:[F

.field public static final SPLINE_TIME:[F

.field public static final START_TENSION:F = 0.5f


# instance fields
.field public mCurrVelocity:F

.field public mCurrX:I

.field public mCurrY:I

.field public mDeceleration:F

.field public mDeltaX:F

.field public mDeltaY:F

.field public mDistance:I

.field public mDuration:I

.field public mDurationReciprocal:F

.field public mFinalX:I

.field public mFinalY:I

.field public mFinished:Z

.field public mFlingFriction:F

.field public mFlywheel:Z

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mMaxX:I

.field public mMaxY:I

.field public mMinX:I

.field public mMinY:I

.field public mMode:I

.field public mPhysicalCoeff:F

.field public final mPpi:F

.field public mStartTime:J

.field public mStartX:I

.field public mStartY:I

.field public mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 24
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/samsung/android/ui/widget/SeslScroller;->DECELERATION_RATE:F

    .line 33
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lcom/samsung/android/ui/widget/SeslScroller;->SPLINE_POSITION:[F

    .line 34
    new-array v0, v0, [F

    sput-object v0, Lcom/samsung/android/ui/widget/SeslScroller;->SPLINE_TIME:[F

    .line 65
    const/4 v0, 0x0

    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 66
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    .line 67
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 68
    .local v5, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 70
    .local v3, "x_max":F
    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 71
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 72
    .local v9, "coef":F
    sub-float v10, v4, v6

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    .line 73
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 74
    nop

    .line 81
    .end local v10    # "tx":F
    sget-object v10, Lcom/samsung/android/ui/widget/SeslScroller;->SPLINE_POSITION:[F

    sub-float v13, v4, v6

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    add-float/2addr v13, v6

    mul-float/2addr v13, v9

    mul-float v17, v6, v6

    mul-float v17, v17, v6

    add-float v13, v13, v17

    aput v13, v10, v2

    .line 82
    const/high16 v10, 0x3f800000    # 1.0f

    .line 84
    .local v10, "y_max":F
    :goto_2
    sub-float v13, v10, v1

    div-float/2addr v13, v7

    add-float/2addr v13, v1

    .line 85
    .local v13, "y":F
    mul-float v17, v13, v8

    sub-float v18, v4, v13

    mul-float v9, v17, v18

    .line 86
    sub-float v17, v4, v13

    mul-float v17, v17, v14

    add-float v17, v17, v13

    mul-float v17, v17, v9

    mul-float v18, v13, v13

    mul-float v18, v18, v13

    add-float v17, v17, v18

    .line 87
    .local v17, "dy":F
    sub-float v18, v17, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v19, v9

    .end local v9    # "coef":F
    .local v19, "coef":F
    float-to-double v8, v7

    cmpg-double v7, v8, v15

    if-gez v7, :cond_0

    .line 88
    nop

    .line 95
    .end local v17    # "dy":F
    sget-object v7, Lcom/samsung/android/ui/widget/SeslScroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v13

    mul-float/2addr v4, v11

    mul-float/2addr v12, v13

    add-float/2addr v4, v12

    mul-float v4, v4, v19

    mul-float v8, v13, v13

    mul-float/2addr v8, v13

    add-float/2addr v4, v8

    aput v4, v7, v2

    .line 66
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v10    # "y_max":F
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 89
    .restart local v3    # "x_max":F
    .restart local v5    # "alpha":F
    .restart local v10    # "y_max":F
    .restart local v17    # "dy":F
    :cond_0
    cmpl-float v7, v17, v5

    if-lez v7, :cond_1

    .line 90
    move v7, v13

    move v10, v7

    .end local v10    # "y_max":F
    .local v7, "y_max":F
    goto :goto_3

    .line 92
    .end local v7    # "y_max":F
    .restart local v10    # "y_max":F
    :cond_1
    move v1, v13

    .line 94
    .end local v17    # "dy":F
    :goto_3
    move/from16 v9, v19

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    .line 75
    .end local v13    # "y":F
    .end local v19    # "coef":F
    .restart local v9    # "coef":F
    .local v10, "tx":F
    :cond_2
    cmpl-float v7, v10, v5

    if-lez v7, :cond_3

    .line 76
    move v3, v6

    goto :goto_4

    .line 78
    :cond_3
    move v0, v6

    .line 80
    .end local v10    # "tx":F
    :goto_4
    goto/16 :goto_1

    .line 97
    .end local v2    # "i":I
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    :cond_4
    sget-object v2, Lcom/samsung/android/ui/widget/SeslScroller;->SPLINE_POSITION:[F

    .line 98
    .local v2, "fArr":[F
    sget-object v5, Lcom/samsung/android/ui/widget/SeslScroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    .line 99
    aput v4, v2, v3

    .line 100
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    .end local v2    # "fArr":[F
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/widget/SeslScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFlingFriction:F

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 113
    if-nez p2, :cond_0

    .line 114
    new-instance v0, Lcom/samsung/android/ui/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 116
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mPpi:F

    .line 119
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/widget/SeslScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeceleration:F

    .line 120
    iput-boolean p3, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFlywheel:Z

    .line 121
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/widget/SeslScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mPhysicalCoeff:F

    .line 122
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .line 130
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mPpi:F

    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 3
    .param p1, "velocity"    # F

    .line 276
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFlingFriction:F

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 9
    .param p1, "velocity"    # F

    .line 284
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFlingFriction:F

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    sget v2, Lcom/samsung/android/ui/widget/SeslScroller;->DECELERATION_RATE:F

    float-to-double v3, v2

    float-to-double v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslScroller;->getSplineDeceleration(F)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private getSplineFlingDuration(F)I
    .locals 6
    .param p1, "velocity"    # F

    .line 280
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    sget v2, Lcom/samsung/android/ui/widget/SeslScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 288
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrX:I

    .line 289
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrY:I

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 291
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 12

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 181
    .local v0, "timePassed":I
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 182
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mMode:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 189
    :pswitch_0
    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 190
    .local v3, "t":F
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v3, v4

    float-to-int v5, v5

    .line 191
    .local v5, "index":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 192
    .local v6, "distanceCoef":F
    const/4 v7, 0x0

    .line 193
    .local v7, "velocityCoef":F
    const/16 v8, 0x64

    if-ge v5, v8, :cond_1

    .line 194
    int-to-float v8, v5

    div-float/2addr v8, v4

    .line 195
    .local v8, "t_inf":F
    add-int/lit8 v9, v5, 0x1

    int-to-float v9, v9

    div-float/2addr v9, v4

    .line 196
    .local v9, "t_sup":F
    sget-object v4, Lcom/samsung/android/ui/widget/SeslScroller;->SPLINE_POSITION:[F

    aget v10, v4, v5

    .line 197
    .local v10, "d_inf":F
    add-int/lit8 v11, v5, 0x1

    aget v4, v4, v11

    sub-float/2addr v4, v10

    sub-float v11, v9, v8

    div-float v7, v4, v11

    .line 198
    sub-float v4, v3, v8

    mul-float/2addr v4, v7

    add-float v6, v10, v4

    .line 200
    .end local v8    # "t_inf":F
    .end local v9    # "t_sup":F
    .end local v10    # "d_inf":F
    :cond_1
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDistance:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    int-to-float v1, v1

    div-float/2addr v4, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrVelocity:F

    .line 201
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartX:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrX:I

    .line 202
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mMaxX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrX:I

    .line 203
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mMinX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrX:I

    .line 204
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartY:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrY:I

    .line 205
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mMaxY:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrY:I

    .line 206
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mMinY:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrY:I

    .line 207
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrX:I

    iget v8, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    if-ne v4, v8, :cond_2

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    if-ne v1, v4, :cond_2

    .line 208
    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    goto :goto_0

    .line 184
    .end local v3    # "t":F
    .end local v5    # "index":I
    .end local v6    # "distanceCoef":F
    .end local v7    # "velocityCoef":F
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDurationReciprocal:F

    mul-float/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 185
    .local v1, "x":F
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartX:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeltaX:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrX:I

    .line 186
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartY:I

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeltaY:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrY:I

    .line 187
    nop

    .line 209
    .end local v1    # "x":F
    :cond_2
    :goto_0
    goto :goto_1

    .line 213
    :cond_3
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrX:I

    .line 214
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrY:I

    .line 215
    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 217
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 2
    .param p1, "extend"    # I

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslScroller;->timePassed()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDuration:I

    .line 295
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDurationReciprocal:F

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 297
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 16
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 239
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-boolean v5, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFlywheel:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    if-nez v5, :cond_0

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslScroller;->getCurrVelocity()F

    move-result v5

    .line 241
    .local v5, "oldVel":F
    iget v6, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    iget v7, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 242
    .local v6, "dx":F
    iget v7, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    iget v8, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 243
    .local v7, "dy":F
    float-to-double v8, v6

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 244
    .local v8, "hyp":F
    div-float v9, v6, v8

    mul-float/2addr v9, v5

    .line 245
    .local v9, "oldVelocityX":F
    div-float v10, v7, v8

    mul-float/2addr v10, v5

    .line 246
    .local v10, "oldVelocityY":F
    int-to-float v11, v3

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v12

    cmpl-float v11, v11, v12

    if-nez v11, :cond_0

    int-to-float v11, v4

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v12

    cmpl-float v11, v11, v12

    if-nez v11, :cond_0

    .line 247
    int-to-float v11, v3

    add-float/2addr v11, v9

    float-to-int v3, v11

    .line 248
    .end local p3    # "velocityX":I
    .local v3, "velocityX":I
    int-to-float v11, v4

    add-float/2addr v11, v10

    float-to-int v4, v11

    .line 251
    .end local v5    # "oldVel":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "oldVelocityX":F
    .end local v10    # "oldVelocityY":F
    .end local p4    # "velocityY":I
    .local v4, "velocityY":I
    :cond_0
    const/4 v5, 0x1

    iput v5, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMode:I

    .line 252
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 253
    int-to-double v5, v3

    int-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 254
    .local v5, "velocity":F
    iput v5, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mVelocity:F

    .line 255
    invoke-direct {v0, v5}, Lcom/samsung/android/ui/widget/SeslScroller;->getSplineFlingDuration(F)I

    move-result v6

    iput v6, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mDuration:I

    .line 256
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartTime:J

    .line 257
    iput v1, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartX:I

    .line 258
    iput v2, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartY:I

    .line 259
    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    int-to-float v7, v3

    div-float/2addr v7, v5

    .line 260
    .local v7, "coeffX":F
    :goto_0
    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v6, v4

    div-float v8, v6, v5

    :goto_1
    move v6, v8

    .line 261
    .local v6, "coeffY":F
    invoke-direct {v0, v5}, Lcom/samsung/android/ui/widget/SeslScroller;->getSplineFlingDistance(F)D

    move-result-wide v8

    .line 262
    .local v8, "totalDistance":D
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-double v10, v10

    mul-double/2addr v10, v8

    double-to-int v10, v10

    iput v10, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mDistance:I

    .line 263
    move/from16 v10, p5

    iput v10, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMinX:I

    .line 264
    move/from16 v11, p6

    iput v11, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMaxX:I

    .line 265
    move/from16 v12, p7

    iput v12, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMinY:I

    .line 266
    move/from16 v13, p8

    iput v13, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMaxY:I

    .line 267
    float-to-double v14, v7

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/2addr v14, v1

    iput v14, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    .line 268
    iget v15, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMaxX:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    .line 269
    iget v15, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMinX:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    .line 270
    float-to-double v14, v6

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/2addr v14, v2

    iput v14, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    .line 271
    iget v15, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMaxY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    .line 272
    iget v15, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mMinY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    .line 273
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .line 138
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 139
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 154
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrVelocity:F

    return v0

    .line 157
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mVelocity:F

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I

    .line 304
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    .line 305
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeltaX:F

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 307
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I

    .line 310
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    .line 311
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeltaY:F

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 313
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeceleration:F

    .line 126
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFlingFriction:F

    .line 127
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 221
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslScroller;->startScroll(IIIII)V

    .line 222
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mMode:I

    .line 226
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinished:Z

    .line 227
    iput p5, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDuration:I

    .line 228
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartTime:J

    .line 229
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartX:I

    .line 230
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartY:I

    .line 231
    add-int v0, p1, p3

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalX:I

    .line 232
    add-int v0, p2, p4

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mFinalY:I

    .line 233
    int-to-float v0, p3

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeltaX:F

    .line 234
    int-to-float v0, p4

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDeltaY:F

    .line 235
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mDurationReciprocal:F

    .line 236
    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 300
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/ui/widget/SeslScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
