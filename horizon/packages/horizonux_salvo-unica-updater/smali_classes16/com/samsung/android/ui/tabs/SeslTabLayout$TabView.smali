.class public final Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "SeslTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# instance fields
.field public badgeAnchorView:Landroid/view/View;

.field public badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field public baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public customIconView:Landroid/widget/ImageView;

.field public customTextView:Landroid/widget/TextView;

.field public customView:Landroid/view/View;

.field public defaultMaxLines:I

.field public iconView:Landroid/widget/ImageView;

.field public mDotBadgeView:Landroid/widget/TextView;

.field public mIconSize:I

.field public mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

.field public mIsCallPerformClick:Z

.field public mMainTabTouchBackground:Landroid/view/View;

.field public mNBadgeView:Landroid/widget/TextView;

.field public mTabViewKeyListener:Landroid/view/View$OnKeyListener;

.field public mTextParentView:Landroid/widget/RelativeLayout;

.field public tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/ui/tabs/SeslTabLayout;
    .param p2, "var2"    # Landroid/content/Context;

    .line 1776
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1777
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1759
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->defaultMaxLines:I

    .line 1767
    new-instance v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$1;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;)V

    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTabViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 1778
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 1779
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setGravity(I)V

    .line 1780
    iget-boolean v0, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->inlineLabel:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setOrientation(I)V

    .line 1781
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setClickable(Z)V

    .line 1782
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x3ea

    invoke-static {v0, v2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    .line 1783
    const/4 v0, 0x0

    check-cast v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1784
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTabViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1785
    iget v0, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mDepthStyle:I

    if-ne v0, v1, :cond_0

    .line 1786
    iget v0, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingTop:I

    iget v1, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingBottom:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1789
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIconSize:I

    .line 1790
    return-void
.end method

.method private getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 1793
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-object v0
.end method

.method private getContentWidth()I
    .locals 12

    .line 1798
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 1799
    .local v0, "var1":[Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 1800
    .local v1, "var2":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 1801
    .local v2, "var3":I
    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 1802
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 1803
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customView:Landroid/view/View;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 1804
    array-length v3, v0

    .line 1805
    .local v3, "var4":I
    const/4 v4, 0x0

    .line 1806
    .local v4, "var5":I
    move v5, v4

    .line 1809
    .local v5, "var6":I
    move v6, v4

    .local v6, "var7":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1810
    aget-object v7, v0, v2

    .line 1811
    .local v7, "var11":Landroid/view/View;
    move v8, v4

    .line 1812
    .local v8, "var8":I
    move v9, v5

    .line 1813
    .local v9, "var9":I
    move v10, v6

    .line 1814
    .local v10, "var10":I
    if-eqz v7, :cond_2

    .line 1815
    move v8, v4

    .line 1816
    move v9, v5

    .line 1817
    move v10, v6

    .line 1818
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 1819
    if-eqz v6, :cond_0

    .line 1820
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 1822
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1825
    :goto_1
    if-eqz v6, :cond_1

    .line 1826
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .line 1828
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    .line 1831
    :goto_2
    const/4 v10, 0x1

    .line 1832
    move v9, v5

    .line 1833
    move v8, v6

    .line 1837
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1838
    move v4, v8

    .line 1839
    move v5, v9

    .line 1809
    .end local v7    # "var11":Landroid/view/View;
    .end local v8    # "var8":I
    .end local v9    # "var9":I
    move v6, v10

    goto :goto_0

    .line 1842
    .end local v6    # "var7":I
    .end local v10    # "var10":I
    :cond_3
    sub-int v6, v4, v5

    return v6
.end method

.method private getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 3

    .line 1846
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v0, :cond_0

    .line 1847
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 1850
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 1851
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 1852
    .local v0, "var1":Lcom/google/android/material/badge/BadgeDrawable;
    if-eqz v0, :cond_1

    .line 1853
    return-object v0

    .line 1855
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create badge"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final addOnLayoutChangeListener(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 1860
    if-eqz p1, :cond_0

    .line 1861
    new-instance v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$2;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1871
    :cond_0
    return-void
.end method

.method public final approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2
    .param p1, "var1"    # Landroid/text/Layout;
    .param p2, "var2"    # I
    .param p3, "var3"    # F

    .line 1874
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public final drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 1878
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1879
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1880
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1881
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1884
    :cond_0
    return-void
.end method

.method public drawableStateChanged()V
    .locals 3

    .line 1887
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1888
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    .line 1889
    .local v0, "var1":[I
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1890
    .local v1, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1891
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1894
    :cond_0
    return-void
.end method

.method public final getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 1897
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 1898
    .local v0, "var2":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 1899
    .local v1, "var3":Landroid/widget/FrameLayout;
    if-eq p1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eq p1, v2, :cond_0

    .line 1900
    const/4 v2, 0x0

    return-object v2

    .line 1902
    :cond_0
    sget-boolean v2, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v2, :cond_1

    .line 1903
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1906
    :cond_1
    return-object v1
.end method

.method public getTab()Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 1

    .line 1911
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    return-object v0
.end method

.method public final hasBadgeDrawable()Z
    .locals 1

    .line 1916
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    .line 1917
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 1919
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 1922
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/Configuration;

    .line 1926
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1927
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIconSize:I

    .line 1928
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1931
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1932
    const-class v0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1933
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1938
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1939
    const-class v0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1940
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 1942
    .local v0, "var2":Lcom/google/android/material/badge/BadgeDrawable;
    const-string v1, ", "

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1943
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1944
    .local v2, "var3":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1945
    .local v3, "var4":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1946
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v4}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1948
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1951
    .end local v2    # "var3":Ljava/lang/CharSequence;
    .end local v3    # "var4":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    .line 1952
    .local v2, "var5":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    .restart local v3    # "var4":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1955
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1960
    .end local v3    # "var4":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 1964
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1965
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 1966
    .local v0, "var6":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1967
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 1968
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 1969
    .local v1, "var7":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    .line 1970
    .local v2, "var8":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_0

    .line 1971
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    goto :goto_0

    .line 1973
    :cond_0
    sub-int p2, p4, p2

    .line 1976
    :goto_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setRight(I)V

    .line 1977
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1978
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1982
    .end local v1    # "var7":Landroid/view/View;
    .end local v2    # "var8":Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget-object v1, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 1983
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 1984
    .local v1, "var9":Landroid/widget/TextView;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_4

    .line 1985
    iget v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIconSize:I

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int p3, v2, v3

    .line 1986
    move p2, p3

    .line 1987
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mIconTextGap:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1988
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mIconTextGap:I

    add-int p2, p3, v2

    .line 1991
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1992
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1993
    neg-int p2, p2

    .line 1994
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 1995
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 1996
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 1997
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1999
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2000
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 2001
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 2002
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->offsetLeftAndRight(I)V

    .line 2007
    .end local v1    # "var9":Landroid/widget/TextView;
    :cond_4
    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 22
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 2011
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2012
    .local v2, "var3":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2013
    .local v3, "var4":I
    iget-object v4, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-virtual {v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabMaxWidth()I

    move-result v4

    .line 2015
    .local v4, "var5":I
    iget-object v5, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v5, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mRequestedTabWidth:I

    const/high16 v6, -0x80000000

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 2016
    iget-object v5, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v5, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mRequestedTabWidth:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .local v5, "var6":I
    goto :goto_0

    .line 2018
    .end local v5    # "var6":I
    :cond_0
    move/from16 v5, p1

    .line 2019
    .restart local v5    # "var6":I
    if-lez v4, :cond_2

    .line 2021
    if-eqz v3, :cond_1

    .line 2022
    move/from16 v5, p1

    .line 2023
    if-gt v2, v4, :cond_1

    .line 2024
    goto :goto_0

    .line 2028
    :cond_1
    iget-object v8, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v8, v8, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabMaxWidth:I

    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2033
    :cond_2
    :goto_0
    invoke-super {v0, v5, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2034
    iget-object v8, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2035
    .local v8, "var7":Landroid/widget/TextView;
    if-eqz v8, :cond_d

    iget-object v10, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customView:Landroid/view/View;

    if-nez v10, :cond_d

    .line 2036
    iget-object v10, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2037
    .local v10, "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget v11, v10, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextSize:F

    .line 2038
    .local v11, "var9":F
    float-to-int v12, v11

    invoke-virtual {v10, v8, v12}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 2039
    iget v3, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->defaultMaxLines:I

    .line 2040
    iget-object v12, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2041
    .local v12, "var15":Landroid/widget/ImageView;
    const/4 v13, 0x1

    .line 2043
    .local v13, "var13":Z
    const/4 v14, 0x1

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v15

    if-nez v15, :cond_3

    .line 2044
    const/4 v15, 0x1

    .line 2045
    .end local p1    # "var1":I
    .local v15, "var1":I
    move/from16 v16, v11

    move/from16 v7, v16

    .local v16, "var10":F
    goto :goto_1

    .line 2047
    .end local v15    # "var1":I
    .end local v16    # "var10":F
    .restart local p1    # "var1":I
    :cond_3
    iget-object v8, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2048
    move v15, v3

    .line 2049
    .end local p1    # "var1":I
    .restart local v15    # "var1":I
    move/from16 v16, v11

    .line 2050
    .restart local v16    # "var10":F
    if-eqz v8, :cond_5

    .line 2051
    move v15, v3

    .line 2052
    move/from16 v16, v11

    .line 2053
    invoke-virtual {v8}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    if-le v7, v14, :cond_4

    .line 2054
    iget-object v7, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v7, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextMultiLineSize:F

    .line 2055
    .end local v16    # "var10":F
    .local v7, "var10":F
    move v15, v3

    goto :goto_1

    .line 2053
    .end local v7    # "var10":F
    .restart local v16    # "var10":F
    :cond_4
    move/from16 v7, v16

    goto :goto_1

    .line 2050
    :cond_5
    move/from16 v7, v16

    .line 2060
    .end local v16    # "var10":F
    .restart local v7    # "var10":F
    :goto_1
    iget-object v6, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    .line 2061
    .end local v11    # "var9":F
    .local v6, "var9":F
    iget-object v11, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLineCount()I

    move-result v11

    .line 2062
    .local v11, "var11":I
    iget-object v9, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v9}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    .line 2064
    sub-float v9, v7, v6

    move/from16 v18, v9

    .local v18, "var19":F
    const/16 v19, 0x0

    cmpl-float v9, v9, v19

    if-nez v9, :cond_6

    const/16 v17, 0x0

    goto :goto_2

    :cond_6
    cmpg-float v9, v18, v19

    if-gez v9, :cond_7

    const/16 v17, -0x1

    goto :goto_2

    :cond_7
    move/from16 v17, v14

    :goto_2
    move/from16 v9, v17

    .line 2065
    .local v9, "var12":I
    if-nez v9, :cond_9

    if-ltz v3, :cond_8

    if-eq v15, v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v19, v2

    move/from16 p1, v3

    goto :goto_5

    .line 2066
    :cond_9
    :goto_3
    move/from16 v17, v13

    .line 2067
    .local v17, "var14":Z
    move/from16 v19, v2

    .end local v2    # "var3":I
    .local v19, "var3":I
    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    if-ne v2, v14, :cond_b

    .line 2068
    move/from16 v17, v13

    .line 2069
    if-lez v9, :cond_b

    .line 2070
    move/from16 v17, v13

    .line 2071
    if-ne v11, v14, :cond_b

    .line 2073
    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2074
    .local v2, "var16":Landroid/text/Layout;
    if-eqz v2, :cond_a

    .line 2075
    move/from16 v17, v13

    .line 2076
    const/4 v14, 0x0

    invoke-virtual {v0, v2, v14, v7}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getPaddingLeft()I

    move-result v21

    sub-int v14, v14, v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getPaddingRight()I

    move-result v21

    sub-int v14, v14, v21

    int-to-float v14, v14

    cmpg-float v14, v20, v14

    if-gtz v14, :cond_a

    .line 2077
    goto :goto_4

    .line 2081
    :cond_a
    const/16 v17, 0x0

    .line 2087
    .end local v2    # "var16":Landroid/text/Layout;
    :cond_b
    :goto_4
    if-eqz v17, :cond_c

    .line 2088
    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2089
    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-object v14, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    move/from16 p1, v3

    .end local v3    # "var4":I
    .local p1, "var4":I
    float-to-int v3, v7

    invoke-virtual {v2, v14, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 2090
    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2091
    invoke-super {v0, v5, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_5

    .line 2087
    .end local p1    # "var4":I
    .restart local v3    # "var4":I
    :cond_c
    move/from16 p1, v3

    .line 2096
    .end local v6    # "var9":F
    .end local v7    # "var10":F
    .end local v9    # "var12":I
    .end local v10    # "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    .end local v11    # "var11":I
    .end local v12    # "var15":Landroid/widget/ImageView;
    .end local v13    # "var13":Z
    .end local v17    # "var14":Z
    .end local v18    # "var19":F
    .end local v19    # "var3":I
    .local v2, "var3":I
    :goto_5
    move/from16 v3, p1

    .end local v2    # "var3":I
    .end local v3    # "var4":I
    .restart local v19    # "var3":I
    .restart local p1    # "var4":I
    goto :goto_6

    .line 2035
    .end local v15    # "var1":I
    .end local v19    # "var3":I
    .restart local v2    # "var3":I
    .restart local v3    # "var4":I
    .local p1, "var1":I
    :cond_d
    move/from16 v19, v2

    .line 2096
    .end local v2    # "var3":I
    .restart local v19    # "var3":I
    move/from16 v15, p1

    .end local p1    # "var1":I
    .restart local v15    # "var1":I
    :goto_6
    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    if-eqz v2, :cond_f

    .line 2097
    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2098
    .local v2, "var17":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget v6, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    if-nez v6, :cond_f

    iget v6, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mDepthStyle:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 2099
    if-lez v4, :cond_e

    .line 2100
    iget-object v6, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/widget/TextView;->measure(II)V

    goto :goto_7

    .line 2102
    :cond_e
    const/4 v9, 0x0

    iget-object v6, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v9, v9}, Landroid/widget/TextView;->measure(II)V

    .line 2105
    :goto_7
    iget-object v6, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    .line 2106
    iget-object v6, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2107
    .local v6, "var18":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07028a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v15

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2108
    iget-object v7, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2109
    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v9, -0x80000000

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {v0, v7, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2113
    .end local v2    # "var17":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    .end local v6    # "var18":Landroid/view/ViewGroup$LayoutParams;
    :cond_f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 2116
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2117
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->startTabTouchAnimation(Landroid/view/MotionEvent;Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2119
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 4

    .line 2124
    iget-boolean v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIsCallPerformClick:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2125
    iput-boolean v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIsCallPerformClick:Z

    .line 2126
    return v1

    .line 2128
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2129
    .local v0, "var1":Z
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    if-eqz v3, :cond_2

    .line 2130
    if-nez v0, :cond_1

    .line 2131
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->playSoundEffect(I)V

    .line 2134
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->select()V

    .line 2135
    return v1

    .line 2137
    :cond_2
    return v0
.end method

.method public reset()V
    .locals 1

    .line 2143
    const/4 v0, 0x0

    check-cast v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 2144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setSelected(Z)V

    .line 2145
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 2148
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2149
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 2150
    .local v0, "var2":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2152
    if-eqz p1, :cond_0

    .line 2153
    const/4 v1, 0x0

    .local v1, "var3":B
    goto :goto_0

    .line 2155
    .end local v1    # "var3":B
    :cond_0
    const/16 v1, 0x8

    .line 2158
    .restart local v1    # "var3":B
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2161
    .end local v1    # "var3":B
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 5
    .param p1, "var1"    # Z

    .line 2164
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2166
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2167
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 2169
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 2172
    .restart local v0    # "var2":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2174
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2175
    .local v1, "var3":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 2176
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2179
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2180
    .local v2, "var4":Landroid/widget/ImageView;
    if-eqz v2, :cond_2

    .line 2181
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2184
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customView:Landroid/view/View;

    .line 2185
    .local v3, "var5":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 2186
    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 2189
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2190
    .local v4, "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    if-eqz v4, :cond_4

    .line 2191
    invoke-virtual {v4, p1}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setSelected(Z)V

    .line 2195
    .end local v0    # "var2":Z
    .end local v1    # "var3":Landroid/widget/TextView;
    .end local v2    # "var4":Landroid/widget/ImageView;
    .end local v3    # "var5":Landroid/view/View;
    .end local v4    # "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    :cond_4
    return-void
.end method

.method public setTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2198
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 2199
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2200
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->update()V

    .line 2203
    :cond_0
    return-void
.end method

.method public final showMainTabTouchBackground(I)V
    .locals 14
    .param p1, "var1"    # I

    .line 2206
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v0, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mDepthStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v0, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabBackgroundResId:I

    if-nez v0, :cond_3

    .line 2207
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2208
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2209
    .local v0, "var2":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2211
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 2212
    if-eq p1, v1, :cond_0

    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2213
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2214
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v4

    .line 2215
    .local v2, "var3":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2216
    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 2217
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2218
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2220
    .end local v2    # "var3":Landroid/view/animation/AlphaAnimation;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$3;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2240
    :cond_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v4

    .line 2241
    .restart local v2    # "var3":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2242
    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 2243
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2244
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const v6, 0x3f733333    # 0.95f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f733333    # 0.95f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2245
    .local v3, "var4":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2246
    sget-object v4, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2247
    invoke-virtual {v3, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 2248
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2249
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2253
    .end local v0    # "var2":Landroid/view/animation/AnimationSet;
    .end local v2    # "var3":Landroid/view/animation/AlphaAnimation;
    .end local v3    # "var4":Landroid/view/animation/ScaleAnimation;
    :cond_3
    :goto_0
    return-void
.end method

.method public final startTabTouchAnimation(Landroid/view/MotionEvent;Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "var1"    # Landroid/view/MotionEvent;
    .param p2, "var2"    # Landroid/view/KeyEvent;

    .line 2256
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    if-nez p1, :cond_0

    if-eqz p2, :cond_e

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_e

    .line 2257
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 2263
    .local v1, "var3":I
    if-eqz v1, :cond_8

    .line 2264
    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    .line 2265
    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 2266
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-object v4, v4, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2267
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2268
    .local v3, "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->startTextColorChangeAnimation(Landroid/widget/TextView;I)V

    .line 2269
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2270
    .local v4, "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->isSelected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2271
    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v5}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setHide()V

    .line 2274
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2275
    invoke-virtual {v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v5

    .line 2276
    .local v5, "var7":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v5, :cond_4

    .line 2277
    iget-object v6, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v6, v6, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2278
    .local v6, "var4":Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 2279
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-object v7, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2280
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2281
    .local v7, "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget-object v8, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v8, v8, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->access$000(Lcom/samsung/android/ui/tabs/SeslTabLayout;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->startTextColorChangeAnimation(Landroid/widget/TextView;I)V

    .line 2284
    .end local v7    # "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    :cond_3
    iget-object v7, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v4, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2285
    if-eqz v4, :cond_4

    .line 2286
    invoke-virtual {v4}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setShow()V

    .line 2290
    .end local v6    # "var4":Landroid/widget/TextView;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v6, v6, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mDepthStyle:I

    if-ne v6, v0, :cond_5

    .line 2291
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->showMainTabTouchBackground(I)V

    goto/16 :goto_1

    .line 2293
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2294
    .end local v4    # "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    .local v0, "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2295
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setReleased()V

    goto/16 :goto_1

    .line 2300
    .end local v0    # "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    .end local v3    # "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    .end local v5    # "var7":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    :cond_6
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->showMainTabTouchBackground(I)V

    .line 2301
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2302
    .local v2, "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    if-eqz v2, :cond_7

    .line 2303
    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setReleased()V

    .line 2304
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v3, p1}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2307
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->performClick()Z

    .line 2308
    iput-boolean v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIsCallPerformClick:Z

    goto/16 :goto_1

    .line 2312
    .end local v2    # "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    :cond_8
    iput-boolean v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIsCallPerformClick:Z

    .line 2313
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->position:I

    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-virtual {v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v3

    if-eq v2, v3, :cond_b

    .line 2314
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2315
    .local v2, "var9":Landroid/widget/TextView;
    if-eqz v2, :cond_b

    .line 2316
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-object v3, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2317
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2318
    .restart local v3    # "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->access$000(Lcom/samsung/android/ui/tabs/SeslTabLayout;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->startTextColorChangeAnimation(Landroid/widget/TextView;I)V

    .line 2319
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2320
    .restart local v4    # "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    if-eqz v4, :cond_9

    .line 2321
    invoke-virtual {v4}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setPressed()V

    .line 2324
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2325
    invoke-virtual {v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v5

    .line 2326
    .restart local v5    # "var7":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v5, :cond_c

    .line 2327
    iget-object v6, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v6, v6, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2328
    .restart local v6    # "var4":Landroid/widget/TextView;
    if-eqz v6, :cond_a

    .line 2329
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-object v7, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2330
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2331
    .restart local v7    # "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget-object v8, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v8, v8, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->startTextColorChangeAnimation(Landroid/widget/TextView;I)V

    .line 2334
    .end local v7    # "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    :cond_a
    iget-object v7, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v4, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2335
    if-eqz v4, :cond_c

    .line 2336
    invoke-virtual {v4}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setHide()V

    goto :goto_0

    .line 2343
    .end local v2    # "var9":Landroid/widget/TextView;
    .end local v3    # "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    .end local v4    # "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    .end local v5    # "var7":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .end local v6    # "var4":Landroid/widget/TextView;
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->position:I

    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-virtual {v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 2344
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2345
    .local v2, "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    if-eqz v2, :cond_c

    .line 2346
    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setPressed()V

    .line 2351
    .end local v2    # "var6":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    :cond_c
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->showMainTabTouchBackground(I)V

    .line 2354
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2356
    .end local v1    # "var3":I
    :cond_e
    return v0
.end method

.method public final tryAttachBadgeToAnchor(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 2362
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2363
    if-eqz p1, :cond_0

    .line 2364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setClipChildren(Z)V

    .line 2365
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setClipToPadding(Z)V

    .line 2366
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2367
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 2371
    :cond_0
    return-void
.end method

.method public final tryRemoveBadgeFromAnchor()V
    .locals 3

    .line 2375
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setClipChildren(Z)V

    .line 2378
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setClipToPadding(Z)V

    .line 2379
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2380
    .local v0, "var1":Lcom/google/android/material/badge/BadgeDrawable;
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 2381
    .local v1, "var2":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2382
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 2386
    .end local v0    # "var1":Lcom/google/android/material/badge/BadgeDrawable;
    .end local v1    # "var2":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public final tryUpdateBadgeAnchor()V
    .locals 4

    .line 2389
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2390
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2391
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    goto :goto_2

    .line 2395
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2396
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2397
    .local v0, "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2398
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 2399
    .local v1, "var3":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2400
    .local v2, "var4":Landroid/widget/ImageView;
    if-eq v1, v2, :cond_1

    .line 2401
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2402
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    goto :goto_0

    .line 2404
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    .line 2407
    :goto_0
    return-void

    .line 2411
    .end local v0    # "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .end local v1    # "var3":Landroid/view/View;
    .end local v2    # "var4":Landroid/widget/ImageView;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2412
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2413
    .restart local v0    # "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getTabLabelVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2414
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    .line 2415
    .restart local v1    # "var3":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2416
    .local v2, "var2":Landroid/widget/TextView;
    if-eq v1, v2, :cond_3

    .line 2417
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2418
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    goto :goto_1

    .line 2420
    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    .line 2423
    :goto_1
    return-void

    .line 2427
    .end local v0    # "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .end local v1    # "var3":Landroid/view/View;
    .end local v2    # "var2":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryRemoveBadgeFromAnchor()V

    .line 2431
    :cond_5
    :goto_2
    return-void
.end method

.method public final tryUpdateBadgeDrawableBounds(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 2435
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeAnchorView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2439
    :cond_0
    return-void
.end method

.method public final update()V
    .locals 10

    .line 2446
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2447
    .local v0, "tab2":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    const/4 v1, 0x0

    .line 2448
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 2449
    .local v3, "customView2":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_6

    .line 2450
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 2451
    .local v4, "parent":Landroid/view/ViewParent;
    if-eq v4, p0, :cond_2

    .line 2452
    if-eqz v4, :cond_1

    .line 2453
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2455
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2457
    :cond_2
    iput-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customView:Landroid/view/View;

    .line 2458
    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2459
    .local v5, "textView2":Landroid/widget/TextView;
    const/16 v6, 0x8

    if-eqz v5, :cond_3

    .line 2460
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2462
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2463
    .local v7, "imageView":Landroid/widget/ImageView;
    if-eqz v7, :cond_4

    .line 2464
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2465
    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2467
    :cond_4
    const v2, 0x1020014

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2468
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2469
    .local v2, "textView3":Landroid/widget/TextView;
    if-eqz v2, :cond_5

    .line 2470
    invoke-static {v2}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->defaultMaxLines:I

    .line 2472
    :cond_5
    const v6, 0x1020006

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2473
    .end local v2    # "textView3":Landroid/widget/TextView;
    .end local v4    # "parent":Landroid/view/ViewParent;
    .end local v5    # "textView2":Landroid/widget/TextView;
    .end local v7    # "imageView":Landroid/widget/ImageView;
    goto :goto_1

    .line 2474
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customView:Landroid/view/View;

    .line 2475
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 2476
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2477
    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customView:Landroid/view/View;

    .line 2479
    :cond_7
    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2480
    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2482
    .end local v4    # "view":Landroid/view/View;
    :goto_1
    const/4 v2, 0x0

    .line 2483
    .local v2, "z":Z
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customView:Landroid/view/View;

    if-nez v4, :cond_15

    .line 2484
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v4, :cond_f

    .line 2485
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2486
    .local v4, "context":Landroid/content/Context;
    const/4 v5, -0x2

    .line 2487
    .local v5, "i2":I
    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v6, v6, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mDepthStyle:I

    const/4 v7, 0x2

    const v8, 0x7f0900c7

    const/4 v9, 0x0

    if-ne v6, v7, :cond_9

    .line 2488
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c00af

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 2489
    .local v6, "relativeLayout2":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v7, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    if-eqz v7, :cond_8

    .line 2490
    const/4 v5, -0x1

    .line 2492
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v7, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mSubTabIndicatorHeight:I

    .line 2493
    .local v7, "i":I
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    iput-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2494
    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v8, v8, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mSubTabSelectedIndicatorColor:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    .line 2495
    iget-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    iget-object v9, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v9, v9, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mSubTabSelectedIndicatorColor:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    goto :goto_3

    .line 2498
    .end local v6    # "relativeLayout2":Landroid/widget/RelativeLayout;
    .end local v7    # "i":I
    :cond_9
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c00ae

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 2499
    .local v6, "relativeLayout3":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget-object v7, v7, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_a

    .line 2500
    const/4 v5, -0x1

    .line 2502
    :cond_a
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    iput-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2503
    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 2504
    .local v7, "seslAbsIndicatorView":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    if-eqz v7, :cond_b

    .line 2505
    iget-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v8, v8, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mTabSelectedIndicatorColor:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    .line 2507
    :cond_b
    const v8, 0x7f0900d9

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 2508
    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget-object v8, v8, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_d

    .line 2509
    iget-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-static {v4}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    const v9, 0x7f080172

    goto :goto_2

    :cond_c
    const v9, 0x7f080173

    :goto_2
    invoke-static {v4, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2510
    iget-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2512
    :cond_d
    move-object v8, v6

    .line 2513
    .local v8, "relativeLayout2":Landroid/widget/RelativeLayout;
    const/4 v9, -0x1

    move v7, v9

    .line 2515
    .end local v8    # "relativeLayout2":Landroid/widget/RelativeLayout;
    .local v6, "relativeLayout2":Landroid/widget/RelativeLayout;
    .local v7, "i":I
    :cond_e
    :goto_3
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2516
    invoke-virtual {p0, v6, v5, v7}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->addView(Landroid/view/View;II)V

    .line 2517
    const v8, 0x7f09020b

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2518
    iput-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    .line 2519
    invoke-static {v8}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->defaultMaxLines:I

    .line 2521
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "i2":I
    .end local v6    # "relativeLayout2":Landroid/widget/RelativeLayout;
    .end local v7    # "i":I
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    move-object v5, v4

    .local v5, "relativeLayout":Landroid/widget/RelativeLayout;
    if-eqz v4, :cond_10

    .line 2522
    const v4, 0x7f0900bf

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    .line 2524
    .end local v5    # "relativeLayout":Landroid/widget/RelativeLayout;
    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2525
    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2527
    :cond_11
    if-eqz v1, :cond_12

    .line 2528
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-object v4, v4, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v1, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2529
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-object v4, v4, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2530
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v4, :cond_12

    .line 2531
    invoke-static {v1, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2534
    .end local v4    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_12
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v5, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextAppearance:I

    invoke-static {v4, v5}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2535
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2536
    .local v4, "tabLayout":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget v6, v4, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextSize:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 2537
    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-object v5, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 2538
    .local v5, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_13

    .line 2539
    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2541
    :cond_13
    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2542
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryUpdateBadgeAnchor()V

    .line 2543
    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    .line 2544
    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    .line 2545
    .end local v4    # "tabLayout":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    .end local v5    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_14
    goto :goto_4

    :cond_15
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v4, :cond_16

    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_14

    .line 2546
    :cond_16
    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2548
    :goto_4
    if-eqz v0, :cond_17

    iget-object v4, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 2549
    iget-object v4, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2551
    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2552
    const/4 v2, 0x1

    .line 2554
    :cond_18
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setSelected(Z)V

    .line 2555
    return-void
.end method

.method public final updateBackgroundDrawable(Landroid/content/Context;)V
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;

    .line 2558
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 2559
    .local v0, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabBackgroundResId:I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mDepthStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 2560
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v1, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabBackgroundResId:I

    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2561
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2562
    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2563
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2566
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2567
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 2568
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2571
    :goto_0
    return-void
.end method

.method public final updateOrientation()V
    .locals 2

    .line 2574
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget-boolean v0, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->inlineLabel:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setOrientation(I)V

    .line 2575
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 2576
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 2578
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2581
    :goto_0
    return-void
.end method

.method public final updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 11
    .param p1, "var1"    # Landroid/widget/TextView;
    .param p2, "var2"    # Landroid/widget/ImageView;

    .line 2585
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2587
    .local v0, "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2588
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "var10":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 2590
    .end local v1    # "var10":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    .line 2593
    .restart local v1    # "var10":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2595
    .local v2, "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v2, :cond_1

    .line 2596
    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "var11":Ljava/lang/CharSequence;
    goto :goto_1

    .line 2598
    .end local v3    # "var11":Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    .line 2601
    .restart local v3    # "var11":Ljava/lang/CharSequence;
    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p2, :cond_3

    .line 2602
    if-eqz v1, :cond_2

    .line 2603
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2604
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2605
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setVisibility(I)V

    goto :goto_2

    .line 2607
    :cond_2
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2608
    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2612
    :cond_3
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    .line 2613
    .local v7, "var5":Z
    if-eqz p1, :cond_6

    .line 2614
    if-eqz v7, :cond_5

    .line 2615
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2616
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget v4, v4, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->labelVisibilityMode:I

    if-ne v4, v8, :cond_4

    .line 2617
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 2619
    :cond_4
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2622
    :goto_3
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    .line 2624
    :cond_5
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2625
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2629
    :cond_6
    :goto_4
    if-eqz p2, :cond_9

    .line 2630
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2632
    .local v4, "var12":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v7, :cond_8

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_8

    .line 2633
    iget-object v9, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v9, v9, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mIconTextGap:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    .line 2634
    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    iget v5, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mIconTextGap:I

    .local v5, "var6":I
    goto :goto_5

    .line 2636
    .end local v5    # "var6":I
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v5

    float-to-int v5, v5

    .restart local v5    # "var6":I
    goto :goto_5

    .line 2639
    .end local v5    # "var6":I
    :cond_8
    const/4 v5, 0x0

    .line 2642
    .restart local v5    # "var6":I
    :goto_5
    invoke-static {v4}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v9

    if-eq v5, v9, :cond_9

    .line 2643
    invoke-static {v4, v5}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2644
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2645
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2646
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2647
    if-eqz p1, :cond_9

    .line 2648
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2649
    .local v9, "var9":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    invoke-virtual {v9, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2650
    const/16 v6, 0xf

    invoke-virtual {v9, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2651
    const/16 v6, 0x11

    const v8, 0x7f0900bf

    invoke-virtual {v9, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2652
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2657
    .end local v4    # "var12":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "var6":I
    .end local v9    # "var9":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 2659
    .local v4, "var7":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v4, :cond_a

    .line 2660
    iget-object v5, v4, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .local v5, "var8":Ljava/lang/CharSequence;
    goto :goto_6

    .line 2662
    .end local v5    # "var8":Ljava/lang/CharSequence;
    :cond_a
    const/4 v5, 0x0

    .line 2665
    .restart local v5    # "var8":Ljava/lang/CharSequence;
    :goto_6
    if-eqz v7, :cond_b

    .line 2666
    const/4 v5, 0x0

    .line 2669
    :cond_b
    invoke-static {p0, v5}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2670
    return-void
.end method
