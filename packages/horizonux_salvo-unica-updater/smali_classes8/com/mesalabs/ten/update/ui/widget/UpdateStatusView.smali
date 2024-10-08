.class public Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;
.super Landroid/widget/LinearLayout;
.source "UpdateStatusView.java"


# instance fields
.field private mCheckingStatus:I

.field private mContainerView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableColor:I

.field private mFadeInAnim:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnim:Landroid/view/animation/AlphaAnimation;

.field private mImageView:Landroid/widget/ImageView;

.field private mMoveToZeroY_TV:Landroid/animation/ObjectAnimator;

.field private mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

.field private mText:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mCheckingStatus:I

    .line 53
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->init()V

    .line 56
    return-void
.end method

.method private disableImageView()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContainerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContainerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setVisibility(I)V

    .line 166
    return-void
.end method

.method private disableProgress()V
    .locals 7

    .line 169
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContainerView:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 171
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContainerView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 176
    iget v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mCheckingStatus:I

    packed-switch v0, :pswitch_data_0

    .line 195
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 183
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 184
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x1

    new-array v5, v4, [F

    aput v1, v5, v2

    .line 185
    const-string v6, "scaleX"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v2

    new-array v5, v4, [F

    aput v1, v5, v2

    .line 186
    const-string v1, "scaleY"

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v4

    .line 184
    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 187
    .local v0, "scaleDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 190
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    goto :goto_0

    .line 178
    .end local v0    # "scaleDown":Landroid/animation/ObjectAnimator;
    :pswitch_1
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 179
    .local v0, "animatable":Landroid/graphics/drawable/Animatable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 180
    nop

    .line 198
    .end local v0    # "animatable":Landroid/graphics/drawable/Animatable;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->removeAllViews()V

    .line 61
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0049

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    .line 64
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContainerView:Landroid/widget/LinearLayout;

    .line 65
    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mTextView:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    .line 68
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->initAnimationFields()V

    .line 69
    return-void
.end method

.method private initAnimationFields()V
    .locals 7

    .line 72
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    .line 73
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 74
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mFadeOutAnim:Landroid/view/animation/AlphaAnimation;

    .line 75
    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 77
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v1, v2, v5

    const-string v1, "translationY"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mMoveToZeroY_TV:Landroid/animation/ObjectAnimator;

    .line 78
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 79
    return-void
.end method


# virtual methods
.method public getCheckingStatus()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mCheckingStatus:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 130
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mMoveToZeroY_TV:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 132
    :cond_0
    return-void
.end method

.method public setUpdateStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .line 86
    iput p1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mCheckingStatus:I

    .line 88
    const v0, 0x7f06008e

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f00b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800a9

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06011d

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    goto/16 :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a8

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    .line 93
    goto :goto_0

    .line 95
    :pswitch_2
    const-string v0, ""

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    .line 98
    goto :goto_0

    .line 105
    :pswitch_3
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800aa

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    .line 108
    goto :goto_0

    .line 100
    :pswitch_4
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    .line 103
    nop

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->setText(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->disableImageView()V

    goto :goto_1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->disableProgress()V

    .line 122
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public start(I)V
    .locals 5
    .param p1, "status"    # I

    .line 135
    iput p1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mCheckingStatus:I

    .line 137
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 150
    const-string v3, ""

    iput-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    .line 151
    iput-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    iput v1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    .line 154
    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a8

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06008e

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    .line 143
    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mDrawableColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    nop

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->setText(Ljava/lang/String;)V

    .line 160
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
