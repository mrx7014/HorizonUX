.class Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "SeslLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCROLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LLM#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mInfinite:Z

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1483
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 1485
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 1490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 6

    .line 1508
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1509
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1510
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1511
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 1512
    .local v3, "lp":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1513
    goto :goto_1

    .line 1515
    :cond_0
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1516
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 1517
    return-object v2

    .line 1509
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1520
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    .line 1524
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 1525
    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 2
    .param p1, "ignore"    # Landroid/view/View;

    .line 1528
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1529
    .local v0, "nextViewInLimitedList":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1530
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0

    .line 1532
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1534
    :goto_0
    return-void
.end method

.method hasMore(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Z
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1495
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method log()V
    .locals 2

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LLM#LayoutState"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    return-void
.end method

.method next(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)Landroid/view/View;
    .locals 3
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 1499
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1500
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1502
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1503
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1504
    return-object v0
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "ignore"    # Landroid/view/View;

    .line 1537
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1538
    .local v0, "size":I
    const/4 v1, 0x0

    .line 1539
    .local v1, "closest":Landroid/view/View;
    const v2, 0x7fffffff

    .line 1543
    .local v2, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1544
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1545
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 1546
    .local v5, "lp":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    if-eq v4, p1, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1547
    goto :goto_1

    .line 1549
    :cond_0
    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int/2addr v6, v7

    .line 1550
    .local v6, "distance":I
    if-gez v6, :cond_1

    .line 1551
    goto :goto_1

    .line 1553
    :cond_1
    if-ge v6, v2, :cond_2

    .line 1554
    move-object v1, v4

    .line 1555
    move v2, v6

    .line 1556
    if-nez v6, :cond_2

    .line 1557
    goto :goto_2

    .line 1543
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "lp":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .end local v6    # "distance":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1561
    .end local v3    # "i":I
    :cond_3
    :goto_2
    return-object v1
.end method
