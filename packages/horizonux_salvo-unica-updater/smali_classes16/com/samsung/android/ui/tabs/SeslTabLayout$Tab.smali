.class public Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
.super Ljava/lang/Object;
.source "SeslTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# instance fields
.field public contentDesc:Ljava/lang/CharSequence;

.field public customView:Landroid/view/View;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public labelVisibilityMode:I

.field public parent:Lcom/samsung/android/ui/tabs/SeslTabLayout;

.field public position:I

.field public tag:Ljava/lang/Object;

.field public text:Ljava/lang/CharSequence;

.field public view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1556
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->labelVisibilityMode:I

    .line 1558
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->position:I

    .line 1564
    return-void
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1567
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->customView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1575
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->position:I

    return v0
.end method

.method public getTabLabelVisibility()I
    .locals 1

    .line 1579
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->labelVisibilityMode:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 3

    .line 1587
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->parent:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1588
    .local v0, "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    if-eqz v0, :cond_1

    .line 1590
    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->position:I

    if-ne v1, v2, :cond_0

    .line 1591
    const/4 v1, 0x1

    .local v1, "var2":Z
    goto :goto_0

    .line 1593
    .end local v1    # "var2":Z
    :cond_0
    const/4 v1, 0x0

    .line 1596
    .restart local v1    # "var2":Z
    :goto_0
    return v1

    .line 1598
    .end local v1    # "var2":Z
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tab not attached to a TabLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 1603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->parent:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1604
    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 1605
    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->tag:Ljava/lang/Object;

    .line 1606
    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1607
    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1608
    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 1609
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->position:I

    .line 1610
    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->customView:Landroid/view/View;

    .line 1611
    return-void
.end method

.method public select()V
    .locals 3

    .line 1614
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->parent:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1615
    .local v0, "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    if-eqz v0, :cond_0

    .line 1616
    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 1620
    return-void

    .line 1618
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tab not attached to a TabLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public seslGetTextView()Landroid/widget/TextView;
    .locals 2

    .line 1624
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->customView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 1626
    .local v0, "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    if-eqz v0, :cond_0

    .line 1627
    iget-object v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 1628
    .local v1, "var2":Landroid/widget/TextView;
    return-object v1

    .line 1632
    .end local v0    # "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    .end local v1    # "var2":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x0

    .line 1633
    .local v0, "var2":Landroid/widget/TextView;
    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 0
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .line 1637
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 1638
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->updateView()V

    .line 1639
    return-object p0
.end method

.method public setCustomView(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 3
    .param p1, "var1"    # I

    .line 1643
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 1644
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 1648
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v0, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->removeAllViews()V

    .line 1652
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->customView:Landroid/view/View;

    .line 1653
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->updateView()V

    .line 1654
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 4
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 1658
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1659
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->parent:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 1660
    .local v0, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout;
    iget v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabGravity:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1661
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->parent:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateTabViews(Z)V

    .line 1664
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->updateView()V

    .line 1665
    sget-boolean v1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->hasBadgeDrawable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v1, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1666
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->invalidate()V

    .line 1669
    :cond_2
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 1673
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->position:I

    .line 1674
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 1
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .line 1677
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1681
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1682
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->updateView()V

    .line 1683
    return-object p0
.end method

.method public updateView()V
    .locals 1

    .line 1687
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 1688
    .local v0, "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->update()V

    .line 1692
    :cond_0
    return-void
.end method
