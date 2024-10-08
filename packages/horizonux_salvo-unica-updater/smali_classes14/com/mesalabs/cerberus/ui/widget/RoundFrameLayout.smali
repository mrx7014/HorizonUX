.class public Lcom/mesalabs/cerberus/ui/widget/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundFrameLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsNightMode:Z

.field mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/widget/RoundFrameLayout;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/RoundFrameLayout;->mIsNightMode:Z

    .line 43
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/RoundFrameLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->RoundFrameLayout:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "obtainStyledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 47
    .local v1, "roundedCorners":I
    new-instance v2, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/widget/RoundFrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mesalabs/cerberus/ui/widget/RoundFrameLayout;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 48
    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/RoundFrameLayout;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method
