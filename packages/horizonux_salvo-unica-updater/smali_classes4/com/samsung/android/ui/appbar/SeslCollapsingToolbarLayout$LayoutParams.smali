.class public Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SeslCollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final COLLAPSE_MODE_OFF:I = 0x0

.field public static final COLLAPSE_MODE_PARALLAX:I = 0x2

.field public static final COLLAPSE_MODE_PIN:I = 0x1

.field private static final DEFAULT_PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field private isTitleCustom:Z

.field mCollapseMode:I

.field mParallaxMult:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 991
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 977
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 978
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 992
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 981
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 977
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 978
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 983
    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslCollapsingToolbarLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 984
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 985
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->setParallaxMultiplier(F)V

    .line 986
    const/4 v1, 0x2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->isTitleCustom:Z

    .line 987
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 988
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 995
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 978
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 996
    return-void
.end method


# virtual methods
.method public getTitleIsCustom()Z
    .locals 1

    .line 999
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->isTitleCustom:Z

    return v0
.end method

.method public setParallaxMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .line 1003
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 1004
    return-void
.end method
