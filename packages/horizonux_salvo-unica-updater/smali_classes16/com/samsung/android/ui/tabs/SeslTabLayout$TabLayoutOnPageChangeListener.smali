.class public Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "SeslTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field public previousScrollState:I

.field public scrollState:I

.field public final tabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/ui/tabs/SeslTabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1701
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 1702
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1705
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 1706
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 1707
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # F
    .param p3, "var3"    # I

    .line 1710
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1711
    .local v0, "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    if-eqz v0, :cond_3

    .line 1712
    iget p3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 1713
    const/4 v1, 0x0

    .line 1715
    .local v1, "var5":Z
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    iget v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1716
    const/4 v3, 0x0

    .local v3, "var6":Z
    goto :goto_0

    .line 1718
    .end local v3    # "var6":Z
    :cond_0
    const/4 v3, 0x1

    .line 1721
    .restart local v3    # "var6":Z
    :goto_0
    iget v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    if-ne v4, v2, :cond_1

    iget v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-eqz v2, :cond_2

    .line 1722
    :cond_1
    const/4 v1, 0x1

    .line 1725
    :cond_2
    invoke-virtual {v0, p1, p2, v3, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setScrollPosition(IFZZ)V

    .line 1728
    .end local v1    # "var5":Z
    .end local v3    # "var6":Z
    :cond_3
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 1731
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1732
    .local v0, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1733
    iget v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 1735
    .local v1, "var3":I
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 1738
    :cond_0
    const/4 v2, 0x0

    .local v2, "var4":Z
    goto :goto_1

    .line 1736
    .end local v2    # "var4":Z
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1741
    .restart local v2    # "var4":Z
    :goto_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;Z)V

    .line 1744
    .end local v1    # "var3":I
    .end local v2    # "var4":Z
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1747
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    .line 1748
    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    .line 1749
    return-void
.end method
