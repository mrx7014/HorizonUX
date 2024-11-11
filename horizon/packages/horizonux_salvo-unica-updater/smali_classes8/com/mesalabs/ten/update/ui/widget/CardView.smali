.class public Lcom/mesalabs/ten/update/ui/widget/CardView;
.super Landroid/widget/LinearLayout;
.source "CardView.java"


# instance fields
.field private mBadgeTextView:Landroid/widget/TextView;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDescText:Ljava/lang/String;

.field private mDescTextView:Landroid/widget/TextView;

.field private mDividerView:Landroid/view/View;

.field private mIconColor:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconImageView:Landroid/widget/ImageView;

.field mIsDividerViewVisible:Z

.field private mParentView:Landroid/widget/RelativeLayout;

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mContext:Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/mesalabs/ten/update/ui/widget/CardView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mesalabs/ten/update/ui/widget/CardView$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-direct {p0, p2}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setStyleable(Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->init()V

    .line 49
    return-void
.end method

.method private init()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->removeAllViews()V

    .line 54
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0051

    invoke-static {v0, v1, p0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0050

    invoke-static {v0, v1, p0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconImageView:Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 65
    :cond_1
    :goto_0
    const v0, 0x7f090104

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mParentView:Landroid/widget/RelativeLayout;

    .line 67
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mContainerView:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f090143

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mTitleTextView:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescTextView:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :cond_2
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mBadgeTextView:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090114

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDividerView:Landroid/view/View;

    .line 81
    iget-boolean v2, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIsDividerViewVisible:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .line 46
    return-void
.end method

.method private setStyleable(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 86
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->CardView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "obtainStyledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconColor:I

    .line 89
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mTitleText:Ljava/lang/String;

    .line 90
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescText:Ljava/lang/String;

    .line 91
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIsDividerViewVisible:Z

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method


# virtual methods
.method public getDescText()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescText:Ljava/lang/String;

    return-object v0
.end method

.method public getIconColor()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconColor:I

    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public setBadgeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 133
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mBadgeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public setDescText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 121
    if-nez p1, :cond_0

    .line 122
    const-string p1, ""

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescText:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDescTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_0
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 137
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mDividerView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 97
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setFocusable(Z)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setClickable(Z)V

    .line 100
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mContainerView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 102
    return-void
.end method

.method public setIconColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 141
    iput p1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconColor:I

    .line 142
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 143
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/CardView;->init()V

    .line 149
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mTitleText:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/CardView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method
