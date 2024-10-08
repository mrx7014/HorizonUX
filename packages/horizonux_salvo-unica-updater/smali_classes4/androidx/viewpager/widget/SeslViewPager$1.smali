.class Landroidx/viewpager/widget/SeslViewPager$1;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/viewpager/widget/SeslViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/viewpager/widget/SeslViewPager$ItemInfo;Landroidx/viewpager/widget/SeslViewPager$ItemInfo;)I
    .locals 2
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .param p2, "var2"    # Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 82
    iget v0, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget v1, p2, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 80
    check-cast p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    check-cast p2, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/SeslViewPager$1;->compare(Landroidx/viewpager/widget/SeslViewPager$ItemInfo;Landroidx/viewpager/widget/SeslViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
