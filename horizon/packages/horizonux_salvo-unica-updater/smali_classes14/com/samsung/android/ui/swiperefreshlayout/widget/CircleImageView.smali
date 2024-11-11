.class Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field mShadowRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # I

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .local v0, "var3":F
    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 48
    .local v1, "var4":I
    const/4 v2, 0x0

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 49
    .local v2, "var5":I
    const/high16 v3, 0x40600000    # 3.5f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 53
    .local v3, "var6":Landroid/graphics/drawable/ShapeDrawable;
    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v0

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 55
    .end local v3    # "var6":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;

    iget v5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;I)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 56
    .restart local v3    # "var6":Landroid/graphics/drawable/ShapeDrawable;
    const/4 v4, 0x1

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    int-to-float v5, v5

    int-to-float v6, v2

    int-to-float v7, v1

    const/high16 v8, 0x1e000000

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 58
    iget v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 59
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setPadding(IIII)V

    .line 62
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method private elevationSupported()Z
    .locals 2

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 69
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 71
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 74
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 80
    .local v0, "var1":Landroid/view/animation/Animation$AnimationListener;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 89
    .local v0, "var1":Landroid/view/animation/Animation$AnimationListener;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setMeasuredDimension(II)V

    .line 101
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/animation/Animation$AnimationListener;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 105
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 116
    return-void
.end method
