.class public Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;
.super Ljava/lang/Object;
.source "SeslElasticInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final ELASTIC_40:Landroid/view/animation/Interpolator;

.field public static final ELASTIC_50:Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mPeriod:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->ELASTIC_40:Landroid/view/animation/Interpolator;

    .line 22
    new-instance v0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->ELASTIC_50:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "amplitude"    # F
    .param p2, "period"    # F

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 24
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->mPeriod:F

    .line 27
    iput p1, p0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 28
    iput p2, p0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->mPeriod:F

    .line 29
    return-void
.end method

.method private out(FFF)F
    .locals 10
    .param p1, "t"    # F
    .param p2, "a"    # F
    .param p3, "p"    # F

    .line 37
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 38
    return v0

    .line 40
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 41
    return v1

    .line 43
    :cond_1
    cmpl-float v2, p3, v0

    if-nez v2, :cond_2

    .line 44
    const p3, 0x3e99999a    # 0.3f

    .line 46
    :cond_2
    cmpl-float v0, p2, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v0, :cond_4

    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    div-float/2addr v1, p2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    float-to-double v4, p3

    div-double/2addr v4, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .local v0, "s":F
    goto :goto_1

    .line 47
    .end local v0    # "s":F
    :cond_4
    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 48
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p3, v0

    .line 52
    .restart local v0    # "s":F
    :goto_1
    float-to-double v4, p2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-float v1, p1, v0

    float-to-double v6, v1

    mul-double/2addr v6, v2

    float-to-double v1, p3

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v4, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v1

    double-to-float v1, v4

    return v1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .line 32
    iget v0, p0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->mAmplitude:F

    iget v1, p0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->mPeriod:F

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;->out(FFF)F

    move-result v0

    return v0
.end method
