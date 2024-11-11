.class Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "SeslLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

.field mPosition:I

.field mValid:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1389
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->reset()V

    .line 1390
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .line 1400
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 1401
    return-void
.end method

.method public assignFromView(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .line 1450
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 1455
    :goto_0
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 1456
    return-void
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .line 1419
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    .line 1420
    .local v0, "totalSpaceChange":I
    if-ltz v0, :cond_0

    .line 1421
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 1422
    return-void

    .line 1424
    :cond_0
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 1425
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1426
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 1427
    .local v1, "endAfterPadding":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 1428
    if-lez v1, :cond_1

    .line 1429
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1430
    .local v3, "decoratedMeasurement":I
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    .line 1431
    .local v4, "startAfterPadding":I
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v4

    sub-int v2, v3, v2

    .line 1432
    .local v2, "min":I
    if-gez v2, :cond_1

    .line 1433
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v6, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 1436
    .end local v1    # "endAfterPadding":I
    .end local v2    # "min":I
    .end local v3    # "decoratedMeasurement":I
    .end local v4    # "startAfterPadding":I
    :cond_1
    goto :goto_0

    .line 1437
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    .line 1438
    .local v1, "decoratedStart":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v3, v1, v3

    .line 1439
    .local v3, "startAfterPadding":I
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 1440
    if-lez v3, :cond_3

    .line 1441
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v0

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v4, v2

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v4, v2

    .line 1442
    .local v4, "endAfterPadding":I
    if-gez v4, :cond_3

    .line 1443
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 1447
    .end local v1    # "decoratedStart":I
    .end local v3    # "startAfterPadding":I
    .end local v4    # "endAfterPadding":I
    :cond_3
    :goto_0
    return-void
.end method

.method isViewValidAsAnchor(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1414
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 1415
    .local v0, "layoutParams":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method reset()V
    .locals 1

    .line 1393
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 1394
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 1395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 1396
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mValid:Z

    .line 1397
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
