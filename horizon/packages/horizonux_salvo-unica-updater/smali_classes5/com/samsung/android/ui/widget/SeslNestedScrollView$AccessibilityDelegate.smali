.class public Lcom/samsung/android/ui/widget/SeslNestedScrollView$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SeslNestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslNestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1767
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 1768
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1771
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1772
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    .line 1773
    .local v0, "var4":Lcom/samsung/android/ui/widget/SeslNestedScrollView;
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1775
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    .line 1776
    const/4 v1, 0x1

    .local v1, "var3":Z
    goto :goto_0

    .line 1778
    .end local v1    # "var3":Z
    :cond_0
    const/4 v1, 0x0

    .line 1781
    .restart local v1    # "var3":Z
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1782
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1783
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1784
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 1785
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v2

    invoke-static {p2, v2}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 1786
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1789
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1790
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    .line 1791
    .local v0, "var4":Lcom/samsung/android/ui/widget/SeslNestedScrollView;
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1792
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1793
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v1

    .line 1794
    .local v1, "var3":I
    if-lez v1, :cond_1

    .line 1795
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1796
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    .line 1797
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1800
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 1801
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1806
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/os/Bundle;

    .line 1809
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1810
    return v1

    .line 1812
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    .line 1813
    .local v0, "var6":Lcom/samsung/android/ui/widget/SeslNestedScrollView;
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1814
    return v3

    .line 1818
    :cond_1
    const/16 v2, 0x1000

    if-eq p2, v2, :cond_4

    .line 1819
    const/16 v2, 0x2000

    if-eq p2, v2, :cond_2

    .line 1820
    return v3

    .line 1822
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v2

    .line 1823
    .local v2, "var4":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result p2

    .line 1824
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    .line 1825
    .local v4, "var5":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    sub-int v6, v2, p2

    sub-int/2addr v6, v4

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1826
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    if-eq p2, v5, :cond_3

    .line 1827
    invoke-virtual {v0, v3, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollTo(II)V

    .line 1828
    return v1

    .line 1830
    :cond_3
    return v3

    .line 1834
    .end local v2    # "var4":I
    .end local v4    # "var5":I
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v2

    .line 1835
    .restart local v2    # "var4":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result p2

    .line 1836
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    .line 1837
    .restart local v4    # "var5":I
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    sub-int v6, v2, p2

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1838
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    if-eq p2, v5, :cond_5

    .line 1839
    invoke-virtual {v0, v3, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollTo(II)V

    .line 1840
    return v1

    .line 1842
    :cond_5
    return v3
.end method
