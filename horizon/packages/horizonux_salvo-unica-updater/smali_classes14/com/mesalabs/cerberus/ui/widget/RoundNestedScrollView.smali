.class public Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;
.super Lcom/samsung/android/ui/widget/SeslNestedScrollView;
.source "RoundNestedScrollView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;->mContext:Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->RoundNestedScrollView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "obtainStyledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 45
    .local v2, "roundedCorners":I
    new-instance v3, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 46
    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 47
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mesalabs/cerberus/utils/ViewUtils;->getRoundAndBgColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 58
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method
