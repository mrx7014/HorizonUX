.class Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "SeslGapWorker.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 5
    .param p1, "layoutPosition"    # I
    .param p2, "pixelDistance"    # I

    .line 91
    if-ltz p1, :cond_3

    .line 95
    if-ltz p2, :cond_2

    .line 99
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 100
    .local v0, "storagePosition":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 102
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 103
    :cond_0
    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 105
    .local v1, "oldArray":[I
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 106
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .end local v1    # "oldArray":[I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aput p1, v1, v0

    .line 110
    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 112
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 113
    return-void

    .line 96
    .end local v0    # "storagePosition":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Layout positions must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method clearPrefetchPositions()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    .line 127
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 130
    return-void
.end method

.method collectPrefetchPositionsFromView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "nested"    # Z

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 65
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    .line 66
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 70
    .local v0, "layout":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    if-eqz p2, :cond_1

    .line 72
    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    iget-object v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 81
    :cond_2
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_3

    .line 82
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 83
    iput-boolean p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 84
    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->updateViewCacheSize()V

    .line 87
    :cond_3
    return-void
.end method

.method lastPrefetchIncludedPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_1

    .line 117
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 122
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method setPrefetchVector(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 59
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    .line 60
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 61
    return-void
.end method
