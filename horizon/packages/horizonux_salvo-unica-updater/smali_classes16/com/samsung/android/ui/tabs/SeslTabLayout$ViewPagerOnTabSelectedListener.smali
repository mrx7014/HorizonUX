.class public Lcom/samsung/android/ui/tabs/SeslTabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "SeslTabLayout.java"

# interfaces
.implements Lcom/samsung/android/ui/tabs/SeslTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field public final viewPager:Landroidx/viewpager/widget/SeslViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/SeslViewPager;)V
    .locals 0
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager;

    .line 2676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2677
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    .line 2678
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2681
    return-void
.end method

.method public onTabSelected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2684
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItem(I)V

    .line 2685
    return-void
.end method

.method public onTabUnselected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2688
    return-void
.end method
