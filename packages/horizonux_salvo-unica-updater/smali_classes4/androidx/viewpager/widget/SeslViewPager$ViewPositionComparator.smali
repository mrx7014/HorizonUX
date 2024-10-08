.class public Landroidx/viewpager/widget/SeslViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3126
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 3129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 3130
    .local v0, "var5":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 3131
    .local v1, "var6":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    iget-boolean v2, v0, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    .line 3132
    .local v2, "var3":Z
    iget-boolean v3, v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1

    .line 3134
    if-eqz v2, :cond_0

    .line 3135
    const/4 v3, 0x1

    .local v3, "var4":B
    goto :goto_0

    .line 3137
    .end local v3    # "var4":B
    :cond_0
    const/4 v3, -0x1

    .line 3140
    .restart local v3    # "var4":B
    :goto_0
    return v3

    .line 3142
    .end local v3    # "var4":B
    :cond_1
    iget v3, v0, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->position:I

    iget v4, v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->position:I

    sub-int/2addr v3, v4

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3124
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/SeslViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
