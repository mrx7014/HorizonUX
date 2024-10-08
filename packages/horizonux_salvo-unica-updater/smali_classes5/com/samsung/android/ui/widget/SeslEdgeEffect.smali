.class public Lcom/samsung/android/ui/widget/SeslEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SeslEdgeEffect.java"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final ATTRS:[I

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 19.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final EDGE_PADDING_TAB_IN_DIP:F = 3.0f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MSG_CALL_ONRELEASE:I = 0x1

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final SESL_STATE_APPEAR:I = 0x5

.field private static final SESL_STATE_KEEP:I = 0x6

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAB_HEIGHT_BUFFER_IN_DIP:F = 5.0f


# instance fields
.field private SESL_MAX_ALPHA:F

.field private SESL_MAX_SCALE:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDuration:F

.field private mEdgeControlPointHeight:F

.field private mEdgePadding:F

.field private mForceCallOnRelease:Ljava/lang/Runnable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOnReleaseCalled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPullDistance:F

.field private mSeslHostView:Landroid/view/View;

.field private mStartTime:J

.field private mState:I

.field private final mTabHeight:F

.field private final mTabHeightBuffer:F

.field private mTargetDisplacement:F

.field private mTempDeltaDistance:F

.field private mTempDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10104ce

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->ATTRS:[I

    .line 45
    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->COS:F

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SIN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 64
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDisplacement:F

    .line 73
    new-instance v1, Lcom/samsung/android/ui/widget/SeslEdgeEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect$1;-><init>(Lcom/samsung/android/ui/widget/SeslEdgeEffect;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    .line 88
    new-instance v1, Lcom/samsung/android/ui/widget/SeslEdgeEffect$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect$2;-><init>(Lcom/samsung/android/ui/widget/SeslEdgeEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 102
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 103
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    .line 107
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 110
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTargetDisplacement:F

    .line 116
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->ATTRS:[I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/content/res/TypedArray;
    const v3, -0x99999a

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 119
    .local v1, "themeColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    const v3, 0xffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x33000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 125
    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTabHeight:F

    .line 126
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTabHeightBuffer:F

    .line 127
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/ui/widget/SeslEdgeEffect;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/widget/SeslEdgeEffect;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 42
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTempDeltaDistance:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/widget/SeslEdgeEffect;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 42
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTempDisplacement:F

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/ui/widget/SeslEdgeEffect;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dipToPixels(F)F
    .locals 2
    .param p1, "dipValue"    # F

    .line 245
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private isEdgeEffectRunning()Z
    .locals 2

    .line 275
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private update()V
    .locals 7

    .line 289
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 290
    .local v0, "t":F
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 291
    .local v1, "interp":F
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlpha:F

    .line 292
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 293
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDisplacement:F

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDisplacement:F

    .line 294
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v2, v0, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    return-void

    .line 295
    :cond_1
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    .line 345
    return-void

    .line 336
    :pswitch_0
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 337
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    .line 338
    const/high16 v2, 0x43e10000    # 450.0f

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    .line 339
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlpha:F

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 340
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 341
    iput v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 342
    iput v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 343
    return-void

    .line 325
    :pswitch_1
    iput v4, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 326
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    .line 327
    iput v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    .line 328
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    .line 329
    .local v2, "f3":F
    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 330
    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 331
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    .line 332
    .local v3, "f4":F
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 333
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 334
    return-void

    .line 322
    .end local v2    # "f3":F
    .end local v3    # "f4":F
    :pswitch_2
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 323
    return-void

    .line 319
    :pswitch_3
    iput v5, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 320
    return-void

    .line 308
    :pswitch_4
    iput v4, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 309
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    .line 310
    iput v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    .line 311
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    .line 312
    .local v2, "f":F
    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 313
    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 314
    iget v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    .line 315
    .local v3, "f2":F
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 316
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 317
    return-void

    .line 297
    .end local v2    # "f":F
    .end local v3    # "f2":F
    :pswitch_5
    const/4 v2, 0x5

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 298
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    .line 299
    const/high16 v2, 0x437a0000    # 250.0f

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    .line 300
    iput v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 301
    iput v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 302
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 303
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 304
    iput v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 305
    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 306
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->update()V

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 251
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 252
    .local v1, "centerX":F
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleY:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 253
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDisplacement:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    .line 254
    .local v2, "max":F
    move v3, v1

    .line 255
    .local v3, "controlX":F
    iget v5, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mEdgePadding:F

    add-float/2addr v5, v6

    .line 256
    .local v5, "controlY":F
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v7

    .line 257
    .local v6, "topDistance":F
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 258
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget v8, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mEdgePadding:F

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    sub-float v8, v3, v6

    add-float v10, v3, v6

    iget-object v9, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v12, v9

    iget v13, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mEdgePadding:F

    move v9, v5

    move v11, v5

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 261
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 263
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlpha:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 264
    iget-object v7, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 265
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 266
    const/4 v7, 0x0

    .line 267
    .local v7, "oneLastFrame":Z
    iget v8, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-ne v8, v10, :cond_0

    iget v8, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleY:F

    cmpl-float v4, v8, v4

    if-nez v4, :cond_0

    .line 268
    iput v9, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 269
    const/4 v7, 0x1

    .line 271
    :cond_0
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    if-nez v4, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    const/4 v9, 0x1

    :cond_2
    return v9
.end method

.method public finish()V
    .locals 1

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 132
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 146
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 7
    .param p1, "velocity"    # I

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 153
    const-class v2, Landroid/view/HapticFeedbackConstants;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    const-string v3, "hidden_semGetVibrationIndex"

    goto :goto_0

    :cond_0
    const-string v3, "semGetVibrationIndex"

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 157
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 159
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x2710

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 160
    .local v0, "velocity2":I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    .line 161
    const/high16 v2, 0x437a0000    # 250.0f

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    .line 162
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 163
    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 164
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 165
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 166
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTargetDisplacement:F

    .line 167
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    .end local v0    # "velocity2":I
    :cond_2
    return-void
.end method

.method public onPull(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    .line 173
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPull(FF)V

    .line 174
    return-void
.end method

.method public onPull(FF)V
    .locals 8
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 178
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPullDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 179
    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPullDistance:F

    .line 184
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 185
    .local v3, "now":J
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTargetDisplacement:F

    .line 186
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    iget-wide v5, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7

    .line 187
    :cond_1
    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    .line 188
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleY:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 190
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    return-void

    .line 193
    :cond_3
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPullDistance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    if-eqz v0, :cond_7

    .line 194
    :cond_4
    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 195
    const-class v0, Landroid/view/HapticFeedbackConstants;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v1, v6, :cond_5

    const-string v1, "hidden_semGetVibrationIndex"

    goto :goto_0

    :cond_5
    const-string v1, "semGetVibrationIndex"

    :goto_0
    new-array v6, v5, [Ljava/lang/Object;

    const/16 v7, 0x1c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v1, v6}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    .local v0, "indexOfHaptic":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 197
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 200
    .end local v0    # "indexOfHaptic":I
    :cond_6
    iput v5, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 201
    iput-wide v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    .line 202
    const/high16 v0, 0x43270000    # 167.0f

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    .line 203
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPullDistance:F

    .line 206
    :cond_7
    return-void
.end method

.method public onPullCallOnRelease(FFI)V
    .locals 4
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F
    .param p3, "delayTime"    # I

    .line 279
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTempDeltaDistance:F

    .line 280
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTempDisplacement:F

    .line 281
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPullDistance:F

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 212
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1

    .line 213
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mState:I

    .line 214
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlpha:F

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 215
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 216
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 217
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 218
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mStartTime:J

    .line 219
    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mDuration:F

    .line 221
    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 225
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    return-void
.end method

.method public setSeslHostView(Landroid/view/View;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;

    .line 285
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    .line 286
    return-void
.end method

.method public setSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 230
    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    sget v2, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->SIN:F

    div-float/2addr v0, v2

    .line 231
    .local v0, "r":F
    sget v3, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->COS:F

    mul-float v4, v3, v0

    sub-float v4, v0, v4

    .line 232
    .local v4, "h":F
    int-to-float v5, p2

    mul-float/2addr v5, v1

    div-float/2addr v5, v2

    .line 233
    .local v5, "or":F
    mul-float/2addr v3, v5

    sub-float v1, v5, v3

    .line 234
    .local v1, "f":F
    int-to-float v2, p1

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTabHeight:F

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mTabHeightBuffer:F

    add-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 235
    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mEdgePadding:F

    .line 236
    const/high16 v2, 0x41980000    # 19.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0

    .line 238
    :cond_0
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mEdgePadding:F

    .line 239
    const/high16 v2, 0x41e80000    # 29.0f

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    .line 241
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v7, p2

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v2, v3, v6, p1, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    return-void
.end method
