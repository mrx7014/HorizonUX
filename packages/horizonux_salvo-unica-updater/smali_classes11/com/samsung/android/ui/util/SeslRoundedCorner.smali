.class public Lcom/samsung/android/ui/util/SeslRoundedCorner;
.super Ljava/lang/Object;
.source "SeslRoundedCorner.java"


# instance fields
.field mBottomLeftRound:Landroid/graphics/drawable/Drawable;

.field mBottomLeftRoundColor:I

.field mBottomRightRound:Landroid/graphics/drawable/Drawable;

.field mBottomRightRoundColor:I

.field mContext:Landroid/content/Context;

.field mIsMutate:Z

.field mRes:Landroid/content/res/Resources;

.field mRoundRadius:I

.field mRoundedCornerBounds:Landroid/graphics/Rect;

.field mRoundedCornerMode:I

.field mTopLeftRound:Landroid/graphics/drawable/Drawable;

.field mTopLeftRoundColor:I

.field mTopRightRound:Landroid/graphics/drawable/Drawable;

.field mTopRightRoundColor:I

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mIsMutate:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->initRoundedCorner()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMutate"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mIsMutate:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    .line 59
    iput-boolean p2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mIsMutate:Z

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->initRoundedCorner()V

    .line 61
    return-void
.end method

.method private drawRoundedCornerInternal(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 150
    iget v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v5, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    iget-object v5, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    :cond_2
    iget v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    :cond_3
    return-void
.end method

.method private initRoundedCorner()V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundRadius:I

    .line 109
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    .line 111
    .local v0, "darkTheme":Z
    iget-boolean v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mIsMutate:Z

    const v2, 0x7f0800d5

    const v3, 0x7f0800d4

    const v4, 0x7f08018b

    const v5, 0x7f08018a

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    const v2, 0x7f060155

    goto :goto_1

    :cond_1
    const v2, 0x7f060156

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 125
    .local v1, "color":I
    iput v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    .line 126
    iput v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    .line 127
    iput v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRoundColor:I

    .line 128
    iput v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    .line 129
    return-void
.end method


# virtual methods
.method public drawRoundedCorner(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    .line 134
    return-void
.end method

.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mX:I

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mY:I

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mX:I

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mY:I

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    .line 145
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mX:I

    iget v2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 146
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    .line 147
    return-void
.end method

.method public getRoundedCorners()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerMode:I

    return v0
.end method

.method public setRoundedCornerColor(II)V
    .locals 3
    .param p1, "corners"    # I
    .param p2, "color"    # I

    .line 77
    if-eqz p1, :cond_9

    .line 79
    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_8

    .line 80
    iget v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    if-eq p2, v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", on ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslRoundedCorner"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->initRoundedCorner()V

    .line 85
    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 86
    .local v0, "pdcf":Landroid/graphics/PorterDuffColorFilter;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    .line 87
    iput p2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    .line 88
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 90
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    .line 91
    iput p2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRoundColor:I

    .line 92
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 94
    :cond_5
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6

    .line 95
    iput p2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    .line 96
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 98
    :cond_6
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_7

    .line 99
    iput p2, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    .line 100
    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 102
    .end local v0    # "pdcf":Landroid/graphics/PorterDuffColorFilter;
    :cond_7
    nop

    .line 105
    return-void

    .line 103
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no rounded corner on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRoundedCorners(I)V
    .locals 3
    .param p1, "corners"    # I

    .line 64
    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_2

    .line 65
    iput p1, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mRoundedCornerMode:I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->initRoundedCorner()V

    .line 70
    :cond_1
    return-void

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
