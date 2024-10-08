.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 1607
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 1609
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addView(Landroid/view/View;I)V

    .line 1610
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 1611
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1614
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 1615
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_2

    .line 1616
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1617
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1620
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 1623
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v1, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$4300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1624
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 5
    .param p1, "var1"    # I

    .line 1627
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1628
    .local v0, "var2":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1629
    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 1630
    .local v1, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    .line 1631
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1632
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1635
    :cond_1
    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 1639
    .end local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$4400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 1640
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # I

    .line 1643
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 1651
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 1655
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 1659
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 1660
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 1661
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$4500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 1664
    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 1667
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 1668
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 1669
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$4600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 1672
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    .line 1675
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->getChildCount()I

    move-result v0

    .line 1677
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1678
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1679
    .local v2, "var3":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 1680
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1677
    .end local v2    # "var3":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1683
    .end local v1    # "var2":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeAllViews()V

    .line 1684
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 1687
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1688
    .local v0, "var2":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 1690
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1693
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeViewAt(I)V

    .line 1694
    return-void
.end method
