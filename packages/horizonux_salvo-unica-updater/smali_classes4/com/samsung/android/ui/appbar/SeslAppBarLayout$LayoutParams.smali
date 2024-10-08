.class public Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SeslAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public scrollFlags:I

.field public scrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1704
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1700
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 1705
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 1708
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1700
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 1709
    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->SeslAppBarLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1710
    .local v1, "var3":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 1711
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1712
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1715
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1716
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1719
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1700
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 1720
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1723
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1700
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 1724
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "var1"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 1727
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1700
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 1728
    return-void
.end method


# virtual methods
.method public getScrollFlags()I
    .locals 1

    .line 1731
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public isCollapsible()Z
    .locals 4

    .line 1739
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 1740
    .local v0, "var1":I
    const/4 v1, 0x1

    .line 1741
    .local v1, "var2":Z
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    and-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_1

    .line 1742
    :cond_0
    const/4 v1, 0x0

    .line 1745
    :cond_1
    return v1
.end method
