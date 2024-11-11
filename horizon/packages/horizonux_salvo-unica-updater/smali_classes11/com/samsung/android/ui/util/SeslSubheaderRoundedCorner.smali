.class public Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;
.super Lcom/samsung/android/ui/util/SeslRoundedCorner;
.source "SeslSubheaderRoundedCorner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private drawRoundedCornerInternal(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 47
    iget v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    iget-object v5, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    iget-object v5, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    iget-object v4, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    :cond_2
    iget v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    :cond_3
    return-void
.end method


# virtual methods
.method public drawRoundedCorner(IIIILandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    invoke-direct {p0, p5}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    .line 31
    return-void
.end method

.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mX:I

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mY:I

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mX:I

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mY:I

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mX:I

    iget v2, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method
