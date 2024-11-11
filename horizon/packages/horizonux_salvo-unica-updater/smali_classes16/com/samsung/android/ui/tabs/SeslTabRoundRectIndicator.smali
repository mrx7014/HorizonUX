.class public Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;
.super Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
.source "SeslTabRoundRectIndicator.java"


# instance fields
.field private mPressAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-static {p1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080174

    goto :goto_0

    :cond_0
    const v0, 0x7f080175

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;
    .param p1, "x1"    # Landroid/view/animation/AnimationSet;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method


# virtual methods
.method onHide()V
    .locals 4

    .line 65
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 66
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 67
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->setAlpha(F)V

    .line 70
    return-void
.end method

.method onSetSelectedIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->setHide()V

    .line 137
    :cond_0
    return-void
.end method

.method onShow()V
    .locals 3

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->setAlpha(F)V

    .line 75
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 76
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 57
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 58
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->onHide()V

    .line 61
    :cond_0
    return-void
.end method

.method startPressEffect()V
    .locals 15

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->setAlpha(F)V

    .line 84
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    .line 85
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 86
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v5, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator$1;-><init>(Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 99
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f733333    # 0.95f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f733333    # 0.95f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 100
    .local v1, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 101
    sget-object v5, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 103
    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->isSelected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v5

    .line 107
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 108
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 109
    sget-object v2, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 113
    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    return-void
.end method

.method startReleaseEffect()V
    .locals 12

    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->setAlpha(F)V

    .line 119
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 120
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 121
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 122
    .local v2, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 123
    sget-object v3, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 124
    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    return-void
.end method
