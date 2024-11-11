.class Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "SeslOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DISTANCE_M2:F = 1.5f

.field private static final DURATION_M2:F = 1.8f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static INFLEXION:F = 0.0f

.field private static final INFLEXIONS:[F

.field private static SPLINE_POSITION:[F = null

.field private static final SPLINE_POSITIONS:[[F

.field private static SPLINE_TIME:[F = null

.field private static final SPLINE_TIMES:[[F

.field private static final START_TENSION:F = 0.5f

.field private static sEnableSmoothFling:Z

.field private static sRegulateCurrentTimeInterval:Z


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsDVFSBoosting:Z

.field private mMaximumVelocity:I

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mPrevTime:J

.field private mPrevTimeGap:J

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 270
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 275
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    .line 276
    const/4 v2, 0x1

    aget v1, v1, v2

    sput v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    .line 277
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [I

    fill-array-data v3, :array_1

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    .line 278
    aget-object v1, v1, v2

    sput-object v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 279
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    .line 280
    aget-object v1, v1, v2

    sput-object v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 282
    sput-boolean v2, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    .line 283
    sput-boolean v2, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    .line 307
    const/4 v1, 0x0

    .local v1, "mode":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 308
    sget-object v2, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v3, v2, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 309
    .local v3, "P1":F
    aget v2, v2, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    mul-float/2addr v2, v5

    sub-float v2, v5, v2

    .line 310
    .local v2, "P2":F
    const/4 v6, 0x0

    .local v6, "x_min":F
    const/4 v7, 0x0

    .line 311
    .local v7, "y_min":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v9, 0x64

    if-ge v8, v9, :cond_4

    .line 312
    int-to-float v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float v10, v9, v10

    .line 313
    .local v10, "alpha":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 315
    .local v9, "x_max":F
    :goto_2
    sub-float v11, v9, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v6

    .line 316
    .local v11, "x":F
    const/high16 v13, 0x40400000    # 3.0f

    mul-float v14, v11, v13

    sub-float v15, v5, v11

    mul-float/2addr v14, v15

    .line 317
    .local v14, "coef":F
    sub-float v15, v5, v11

    mul-float/2addr v15, v3

    mul-float v16, v11, v2

    add-float v15, v15, v16

    mul-float/2addr v15, v14

    mul-float v16, v11, v11

    mul-float v16, v16, v11

    add-float v15, v15, v16

    .line 318
    .local v15, "tx":F
    sub-float v16, v15, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v12, v0

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v12, v18

    if-gez v0, :cond_2

    .line 319
    nop

    .line 326
    .end local v15    # "tx":F
    sget-object v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v1

    sub-float v12, v5, v11

    mul-float/2addr v12, v4

    add-float/2addr v12, v11

    mul-float/2addr v12, v14

    mul-float v13, v11, v11

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    aput v12, v0, v8

    .line 327
    const/high16 v0, 0x3f800000    # 1.0f

    .line 329
    .local v0, "y_max":F
    :goto_3
    sub-float v12, v0, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v7

    .line 330
    .local v12, "y":F
    const/high16 v16, 0x40400000    # 3.0f

    mul-float v15, v12, v16

    sub-float v17, v5, v12

    mul-float v14, v15, v17

    .line 331
    sub-float v15, v5, v12

    mul-float/2addr v15, v4

    add-float/2addr v15, v12

    mul-float/2addr v15, v14

    mul-float v17, v12, v12

    mul-float v17, v17, v12

    add-float v15, v15, v17

    .line 332
    .local v15, "dy":F
    sub-float v17, v15, v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move/from16 v20, v14

    .end local v14    # "coef":F
    .local v20, "coef":F
    float-to-double v13, v4

    cmpg-double v4, v13, v18

    if-gez v4, :cond_0

    .line 333
    nop

    .line 340
    .end local v15    # "dy":F
    sget-object v4, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v4, v4, v1

    sub-float v13, v5, v12

    mul-float/2addr v13, v3

    mul-float v14, v12, v2

    add-float/2addr v13, v14

    mul-float v13, v13, v20

    mul-float v14, v12, v12

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    aput v13, v4, v8

    .line 311
    .end local v0    # "y_max":F
    .end local v9    # "x_max":F
    .end local v10    # "alpha":F
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    goto/16 :goto_1

    .line 334
    .restart local v0    # "y_max":F
    .restart local v9    # "x_max":F
    .restart local v10    # "alpha":F
    .restart local v15    # "dy":F
    :cond_0
    cmpl-float v4, v15, v10

    if-lez v4, :cond_1

    .line 335
    move v0, v12

    goto :goto_4

    .line 337
    :cond_1
    move v7, v12

    .line 339
    .end local v15    # "dy":F
    :goto_4
    move/from16 v14, v20

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_3

    .line 320
    .end local v0    # "y_max":F
    .end local v12    # "y":F
    .end local v20    # "coef":F
    .restart local v14    # "coef":F
    .local v15, "tx":F
    :cond_2
    cmpl-float v0, v15, v10

    if-lez v0, :cond_3

    .line 321
    move v0, v11

    move v9, v0

    .end local v9    # "x_max":F
    .local v0, "x_max":F
    goto :goto_5

    .line 323
    .end local v0    # "x_max":F
    .restart local v9    # "x_max":F
    :cond_3
    move v6, v11

    .line 325
    .end local v15    # "tx":F
    :goto_5
    const/4 v0, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    goto/16 :goto_2

    .line 342
    .end local v8    # "i":I
    .end local v9    # "x_max":F
    .end local v10    # "alpha":F
    .end local v11    # "x":F
    .end local v14    # "coef":F
    :cond_4
    sget-object v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v1

    .line 343
    .local v0, "fArr":[F
    sget-object v4, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v4, v4, v1

    aput v5, v4, v9

    .line 344
    aput v5, v0, v9

    .line 307
    .end local v0    # "fArr":[F
    .end local v2    # "P2":F
    .end local v3    # "P1":F
    .end local v6    # "x_min":F
    .end local v7    # "y_min":F
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 346
    .end local v1    # "mode":I
    :cond_5
    return-void

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x65
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x65
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 290
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 295
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    .line 296
    iput-wide v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    .line 301
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    .line 302
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 373
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    .line 376
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 269
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 269
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 269
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 269
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 269
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 269
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 269
    iget-wide v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 269
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .line 390
    sub-int v0, p3, p1

    int-to-float v0, v0

    sub-int v1, p2, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 391
    .local v0, "x":F
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    .line 392
    .local v2, "index":I
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 393
    int-to-float v3, v2

    div-float/2addr v3, v1

    .line 394
    .local v3, "x_inf":F
    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 395
    .local v4, "x_sup":F
    sget-object v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v5, v1, v2

    .line 396
    .local v5, "t_inf":F
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-float v6, v6

    sub-float v7, v0, v3

    sub-float v8, v4, v3

    div-float/2addr v7, v8

    add-int/lit8 v8, v2, 0x1

    aget v1, v1, v8

    sub-float/2addr v1, v5

    mul-float/2addr v7, v1

    add-float/2addr v7, v5

    mul-float/2addr v6, v7

    float-to-int v1, v6

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 398
    .end local v3    # "x_inf":F
    .end local v4    # "x_sup":F
    .end local v5    # "t_inf":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 534
    int-to-float v0, p3

    int-to-float v1, p3

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 535
    .local v0, "totalDuration":F
    iget-wide v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    neg-int v3, p3

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-long v5, v3

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 536
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    .line 537
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 538
    neg-float v1, v4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 539
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .line 383
    if-lez p0, :cond_0

    .line 384
    const/high16 v0, -0x3b060000    # -2000.0f

    return v0

    .line 386
    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    return v0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .line 504
    sget v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 10
    .param p1, "velocity"    # I

    .line 508
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 509
    .local v0, "l":D
    sget v2, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    .line 510
    .local v3, "decelMinusOne":D
    sget-boolean v5, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-nez v5, :cond_0

    .line 511
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    return-wide v5

    .line 513
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, v2

    float-to-int v2, v5

    .line 514
    .local v2, "index":I
    const/16 v5, 0x64

    if-le v2, v5, :cond_1

    .line 515
    const/16 v2, 0x64

    .line 517
    :cond_1
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    float-to-double v5, v5

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sget-object v9, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v9, v9, v2

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    const/high16 v7, 0x3fc00000    # 1.5f

    add-float/2addr v8, v7

    float-to-double v7, v8

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    sget v7, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v7, v7

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    return-wide v5
.end method

.method private getSplineFlingDuration(I)I
    .locals 10
    .param p1, "velocity"    # I

    .line 521
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 522
    .local v0, "l":D
    sget v2, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 523
    .local v2, "decelMinusOne":D
    sget-boolean v4, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    const-wide v5, 0x408f400000000000L    # 1000.0

    if-nez v4, :cond_0

    .line 524
    div-double v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v4, v7

    return v4

    .line 526
    :cond_0
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v4

    float-to-int v4, v7

    .line 527
    .local v4, "index":I
    const/16 v7, 0x64

    if-le v4, v7, :cond_1

    .line 528
    const/16 v4, 0x64

    .line 530
    :cond_1
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sget-object v9, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v9, v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    const v7, 0x3fe66666    # 1.8f

    add-float/2addr v8, v7

    float-to-double v7, v8

    mul-double/2addr v7, v5

    div-double v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double/2addr v7, v5

    double-to-int v5, v7

    return v5
.end method

.method private onEdgeReached()V
    .locals 7

    .line 585
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 586
    .local v1, "velocitySquared":F
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    .line 587
    .local v0, "distance":F
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 588
    .local v3, "sign":F
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 589
    neg-float v5, v3

    mul-float/2addr v5, v1

    int-to-float v6, v4

    mul-float/2addr v6, v2

    div-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 590
    int-to-float v0, v4

    .line 592
    :cond_0
    float-to-int v2, v0

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    .line 593
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    .line 594
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    .line 595
    .local v2, "i":I
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    if-gtz v4, :cond_1

    .line 596
    neg-float v0, v0

    .line 598
    :cond_1
    float-to-int v5, v0

    add-int/2addr v5, v2

    iput v5, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 599
    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    iput v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 600
    sget-boolean v4, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    if-eqz v4, :cond_2

    .line 601
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    .line 603
    :cond_2
    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .line 555
    const/4 v0, 0x1

    if-le p1, p2, :cond_1

    if-lt p1, p3, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    const-string v1, "SeslOverScroller"

    const-string v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    goto :goto_6

    .line 556
    :cond_1
    :goto_0
    if-le p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 557
    .local v0, "positive":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 558
    move v1, p3

    .local v1, "edge":I
    goto :goto_2

    .line 560
    .end local v1    # "edge":I
    :cond_3
    move v1, p2

    .line 562
    .restart local v1    # "edge":I
    :goto_2
    sub-int v2, p1, v1

    .line 563
    .local v2, "overDistance":I
    mul-int v3, v2, p4

    if-ltz v3, :cond_4

    .line 564
    invoke-direct {p0, p1, v1, p4}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 565
    :cond_4
    invoke-direct {p0, p4}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_7

    .line 566
    if-eqz v0, :cond_5

    move v7, p2

    goto :goto_3

    :cond_5
    move v7, p1

    :goto_3
    if-eqz v0, :cond_6

    move v8, p1

    goto :goto_4

    :cond_6
    move v8, p3

    :goto_4
    iget v9, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 568
    :cond_7
    invoke-direct {p0, p1, v1, p4}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    .line 570
    .end local v0    # "positive":Z
    .end local v2    # "overDistance":I
    :goto_5
    nop

    .line 574
    .end local v1    # "edge":I
    :goto_6
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 543
    if-nez p3, :cond_0

    .line 544
    sub-int v0, p1, p2

    .local v0, "i":I
    goto :goto_0

    .line 546
    .end local v0    # "i":I
    :cond_0
    move v0, p3

    .line 548
    .restart local v0    # "i":I
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 549
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 550
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->onEdgeReached()V

    .line 551
    return-void
.end method

.method private startSpringback(III)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 451
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    .line 452
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    .line 453
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 454
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 455
    sub-int v0, p1, p2

    .line 456
    .local v0, "delta":I
    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 457
    neg-int v1, v0

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 458
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    .line 459
    int-to-double v1, v0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 460
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .line 606
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 623
    :pswitch_0
    iget-wide v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 624
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 621
    :pswitch_1
    return v1

    .line 608
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    .line 609
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 610
    .local v0, "i":I
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    .line 611
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 612
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 613
    invoke-static {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 614
    iget-wide v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->onEdgeReached()V

    .line 616
    goto :goto_0

    .line 618
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 627
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->update()Z

    .line 628
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 4
    .param p1, "extend"    # I

    .line 426
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 428
    return-void
.end method

.method finish()V
    .locals 5

    .line 412
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 413
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "com.samsung.android.os.SemPerfManager"

    const-string v4, "onSmoothScrollEvent"

    invoke-static {v3, v4, v0}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 416
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 417
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 418
    return-void
.end method

.method fling(IIIII)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 463
    iput p5, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 465
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 466
    int-to-float v1, p2

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 467
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    .line 468
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 469
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 470
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    .line 471
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 472
    if-gt p1, p4, :cond_6

    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    .line 477
    const-wide/16 v1, 0x0

    .line 478
    .local v1, "totalDistance":D
    if-eqz p2, :cond_2

    .line 479
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v3

    .line 480
    .local v3, "splineFlingDuration":I
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    .line 481
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 482
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 483
    sget-boolean v4, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-nez v4, :cond_2

    const/16 v4, 0x320

    if-ge p2, v4, :cond_1

    const/16 v4, -0x320

    if-gt p2, v4, :cond_2

    .line 484
    :cond_1
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "com.samsung.android.os.SemPerfManager"

    const-string v7, "onSmoothScrollEvent"

    invoke-static {v6, v7, v5}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iput-boolean v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    .line 488
    .end local v3    # "splineFlingDuration":I
    :cond_2
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    .line 489
    add-int/2addr v3, p1

    iput v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 490
    if-ge v3, p3, :cond_3

    .line 491
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v4, v3, p3}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 492
    iput p3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 494
    :cond_3
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    if-le v3, p4, :cond_4

    .line 495
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v4, v3, p4}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 496
    iput p4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 498
    :cond_4
    sget-boolean v3, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    if-eqz v3, :cond_5

    .line 499
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    .line 501
    :cond_5
    return-void

    .line 473
    .end local v1    # "totalDistance":D
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 474
    return-void
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 577
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 578
    iput p3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    .line 579
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 580
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 582
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 421
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 423
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 368
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    .line 369
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 349
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    .line 352
    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    goto :goto_0

    .line 354
    :cond_0
    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    .line 355
    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    .line 357
    :goto_0
    sget-object v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v0, v0, p1

    sput v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    .line 358
    sget-object v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, p1

    sput-object v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 359
    sget-object v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v0, v0, p1

    sput-object v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 361
    :cond_1
    return-void
.end method

.method public setRegulationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 364
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    .line 365
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 432
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 433
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    .line 434
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 435
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 436
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 437
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 438
    if-ge p1, p2, :cond_0

    .line 439
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 440
    :cond_0
    if-le p1, p3, :cond_1

    .line 441
    invoke-direct {p0, p1, p3, v1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    .line 443
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    .line 444
    return v0

    .line 446
    :cond_2
    return v1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    .line 402
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    .line 403
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 404
    add-int v1, p1, p2

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    .line 405
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    .line 406
    iput p3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    .line 407
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    .line 408
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    .line 409
    return-void
.end method

.method update()Z
    .locals 19

    .line 632
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v1, v3

    .line 633
    .local v1, "currentTime":J
    move-wide v3, v1

    .line 634
    .local v3, "j":J
    sget-boolean v5, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    if-nez v5, :cond_4

    .line 635
    iget v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    if-lez v5, :cond_0

    .line 636
    iget-wide v9, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    add-long/2addr v9, v1

    const-wide/16 v11, 0x2

    div-long v1, v9, v11

    .line 638
    :cond_0
    const/16 v9, 0x1e

    if-le v5, v9, :cond_2

    .line 639
    iget-wide v9, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    sub-long v11, v1, v9

    .line 640
    .local v11, "currentTimeGap":J
    iget-wide v13, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    const-wide/16 v15, 0x1

    add-long v17, v13, v15

    cmp-long v17, v11, v17

    if-lez v17, :cond_1

    .line 641
    add-long/2addr v9, v13

    add-long v1, v9, v15

    goto :goto_0

    .line 642
    :cond_1
    sub-long v17, v13, v15

    cmp-long v17, v11, v17

    if-gez v17, :cond_2

    .line 643
    add-long/2addr v9, v13

    sub-long v1, v9, v15

    .line 646
    .end local v11    # "currentTimeGap":J
    :cond_2
    :goto_0
    cmp-long v9, v1, v6

    if-gez v9, :cond_3

    .line 647
    const-wide/16 v1, 0x0

    .line 649
    :cond_3
    iget-wide v9, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    sub-long v9, v1, v9

    iput-wide v9, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    .line 650
    iput-wide v1, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    .line 651
    add-int/2addr v5, v8

    iput v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    .line 653
    :cond_4
    cmp-long v5, v1, v6

    const/4 v6, 0x0

    if-nez v5, :cond_6

    .line 654
    iget v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    if-lez v5, :cond_5

    .line 655
    return v8

    .line 657
    :cond_5
    return v6

    .line 658
    :cond_6
    iget v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v9, v5

    cmp-long v7, v1, v9

    if-lez v7, :cond_7

    .line 659
    return v6

    .line 661
    :cond_7
    const-wide/16 v6, 0x0

    .line 662
    .local v6, "distance":D
    iget v9, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mState:I

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v11, 0x40000000    # 2.0f

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 688
    :pswitch_0
    long-to-float v5, v1

    div-float/2addr v5, v10

    .line 689
    .local v5, "t":F
    iget v9, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v10, v9

    iget v12, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v13, v12, v5

    add-float/2addr v10, v13

    iput v10, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 690
    int-to-float v9, v9

    mul-float/2addr v9, v5

    mul-float/2addr v12, v5

    mul-float/2addr v12, v5

    div-float/2addr v12, v11

    add-float/2addr v9, v12

    float-to-double v6, v9

    .line 691
    goto :goto_1

    .line 680
    .end local v5    # "t":F
    :pswitch_1
    long-to-float v9, v1

    int-to-float v5, v5

    div-float/2addr v9, v5

    .line 681
    .local v9, "t":F
    mul-float v5, v9, v9

    .line 682
    .local v5, "t2":F
    iget v10, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    .line 683
    .local v10, "sign":F
    iget v12, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v13, v12

    mul-float/2addr v13, v10

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v5

    mul-float/2addr v11, v9

    mul-float/2addr v11, v5

    sub-float/2addr v14, v11

    mul-float/2addr v13, v14

    float-to-double v6, v13

    .line 684
    int-to-float v11, v12

    mul-float/2addr v11, v10

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v11, v12

    neg-float v12, v9

    add-float/2addr v12, v5

    mul-float/2addr v11, v12

    iput v11, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 685
    goto :goto_1

    .line 664
    .end local v5    # "t2":F
    .end local v9    # "t":F
    .end local v10    # "sign":F
    :pswitch_2
    long-to-float v5, v1

    iget v9, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v11, v9

    div-float/2addr v5, v11

    .line 665
    .local v5, "t":F
    const/high16 v11, 0x42c80000    # 100.0f

    mul-float v12, v5, v11

    float-to-int v12, v12

    .line 666
    .local v12, "index":I
    const/high16 v13, 0x3f800000    # 1.0f

    .line 667
    .local v13, "distanceCoef":F
    const/4 v14, 0x0

    .line 668
    .local v14, "velocityCoef":F
    const/16 v15, 0x64

    if-ge v12, v15, :cond_8

    .line 669
    int-to-float v15, v12

    div-float/2addr v15, v11

    .line 670
    .local v15, "t_inf":F
    add-int/lit8 v8, v12, 0x1

    int-to-float v8, v8

    div-float/2addr v8, v11

    .line 671
    .local v8, "t_sup":F
    sget-object v11, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v17, v11, v12

    .line 672
    .local v17, "d_inf":F
    add-int/lit8 v18, v12, 0x1

    aget v11, v11, v18

    sub-float v11, v11, v17

    sub-float v18, v8, v15

    div-float v14, v11, v18

    .line 673
    sub-float v11, v5, v15

    mul-float/2addr v11, v14

    add-float v13, v17, v11

    .line 675
    .end local v8    # "t_sup":F
    .end local v15    # "t_inf":F
    .end local v17    # "d_inf":F
    :cond_8
    iget v8, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v11, v8

    mul-float/2addr v11, v13

    float-to-double v6, v11

    .line 676
    int-to-float v8, v8

    mul-float/2addr v8, v14

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v8, v10

    iput v8, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 677
    nop

    .line 694
    .end local v5    # "t":F
    .end local v12    # "index":I
    .end local v13    # "distanceCoef":F
    .end local v14    # "velocityCoef":F
    :goto_1
    iget v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v5, v8

    iput v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 695
    const/4 v5, 0x1

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 2
    .param p1, "q"    # F

    .line 379
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 380
    return-void
.end method
