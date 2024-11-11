.class public Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;
.super Ljava/lang/Object;
.source "SeslAnimationUtils.java"


# static fields
.field public static final ELASTIC_40:Landroid/view/animation/Interpolator;

.field public static final ELASTIC_50:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

.field public static final SINE_OUT_80:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->ELASTIC_40:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/view/animation/SeslElasticInterpolator;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->ELASTIC_50:Landroid/view/animation/Interpolator;

    .line 26
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 28
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    .line 32
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v2, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_OUT_80:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
