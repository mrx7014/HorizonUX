.class public Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public childIndex:I

.field public gravity:I

.field public isDecor:Z

.field public needsMeasure:Z

.field public position:I

.field public widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2963
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2960
    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->widthFactor:F

    .line 2964
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 2967
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2960
    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->widthFactor:F

    .line 2968
    sget-object v0, Landroidx/viewpager/widget/SeslViewPager;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2969
    .local v0, "var3":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->gravity:I

    .line 2970
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2971
    return-void
.end method
