.class final Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;
.super Ljava/lang/Object;
.source "SeslGapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 161
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$1;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 12

    .line 183
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    .local v0, "viewCount":I
    const/4 v1, 0x0

    .line 185
    .local v1, "totalTaskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    .line 186
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 187
    .local v4, "view":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 188
    iget-object v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)V

    .line 189
    iget-object v3, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    iget v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v1, v3

    .line 185
    .end local v4    # "view":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "totalTaskIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_6

    .line 196
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 197
    .local v5, "view":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWindowVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 198
    goto :goto_5

    .line 201
    :cond_2
    iget-object v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    .line 202
    .local v6, "prefetchRegistry":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;
    iget v7, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 203
    .local v7, "viewVelocity":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    iget v9, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_5

    .line 205
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v2, v9, :cond_3

    .line 206
    new-instance v9, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;

    invoke-direct {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;-><init>()V

    .line 207
    .local v9, "task":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 209
    .end local v9    # "task":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;

    .line 211
    .restart local v9    # "task":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
    :goto_3
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v11

    .line 213
    .local v10, "distanceToItem":I
    if-gt v10, v7, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    move v11, v3

    :goto_4
    iput-boolean v11, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->immediate:Z

    .line 214
    iput v7, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->viewVelocity:I

    .line 215
    iput v10, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->distanceToItem:I

    .line 216
    iput-object v5, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->view:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 217
    iget-object v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v11, v11, v8

    iput v11, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->position:I

    .line 219
    nop

    .end local v9    # "task":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
    .end local v10    # "distanceToItem":I
    add-int/lit8 v2, v2, 0x1

    .line 203
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 195
    .end local v5    # "view":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .end local v6    # "prefetchRegistry":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;
    .end local v7    # "viewVelocity":I
    .end local v8    # "j":I
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    .end local v4    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v4, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    return-void
.end method

.method private flushTaskWithDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;J)V
    .locals 4
    .param p1, "task"    # Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
    .param p2, "deadlineNs"    # J

    .line 289
    iget-boolean v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->immediate:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    .line 290
    .local v0, "taskDeadlineNs":J
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->view:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->position:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->prefetchPositionWithDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;IJ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 291
    .local v2, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-direct {p0, v3, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->prefetchInnerRecyclerViewWithDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;J)V

    .line 294
    :cond_1
    return-void
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3
    .param p1, "deadlineNs"    # J

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;

    .line 299
    .local v1, "task":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
    iget-object v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->view:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-nez v2, :cond_0

    .line 300
    goto :goto_1

    .line 302
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->flushTaskWithDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;J)V

    .line 303
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;->clear()V

    .line 297
    .end local v1    # "task":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$Task;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method static isPrefetchPositionAttached(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)Z
    .locals 5
    .param p0, "view"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "position"    # I

    .line 227
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 228
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 229
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 230
    .local v2, "attachedView":Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 231
    .local v3, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const/4 v4, 0x1

    return v4

    .line 228
    .end local v2    # "attachedView":Landroid/view/View;
    .end local v3    # "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;J)V
    .locals 3
    .param p1, "innerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "deadlineNs"    # J

    .line 263
    if-nez p1, :cond_0

    .line 264
    return-void

    .line 267
    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeAndRecycleViews()V

    .line 271
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    .line 272
    .local v0, "innerPrefetchRegistry":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)V

    .line 274
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v1, :cond_3

    .line 276
    :try_start_0
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 277
    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-object v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->prepareForNestedPrefetch(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    .line 279
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    .line 280
    .local v2, "innerPosition":I
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->prefetchPositionWithDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;IJ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    nop

    .end local v2    # "innerPosition":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 283
    .end local v1    # "i":I
    :cond_2
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 284
    goto :goto_1

    .line 283
    :catchall_0
    move-exception v1

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 284
    throw v1

    .line 286
    :cond_3
    :goto_1
    return-void
.end method

.method private prefetchPositionWithDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;IJ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "position"    # I
    .param p3, "deadlineNs"    # J

    .line 239
    invoke-static {p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->isPrefetchPositionAttached(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 246
    .local v0, "recycler":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 247
    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 249
    .local v2, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll(Z)V

    .line 258
    nop

    .line 259
    return-object v2

    .line 257
    .end local v2    # "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll(Z)V

    .line 258
    throw v2
.end method


# virtual methods
.method public add(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method postFromTraversal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "prefetchDx"    # I
    .param p3, "prefetchDy"    # I

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mPostTimeNs:J

    .line 154
    invoke-virtual {p1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 158
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    .line 159
    return-void
.end method

.method prefetch(J)V
    .locals 0
    .param p1, "deadlineNs"    # J

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->buildTaskList()V

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->flushTasksWithDeadline(J)V

    .line 310
    return-void
.end method

.method public remove(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    .local v0, "removeSuccess":Z
    return-void
.end method

.method public run()V
    .locals 9

    .line 315
    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 338
    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mPostTimeNs:J

    .line 339
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 318
    return-void

    .line 321
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 322
    .local v2, "size":I
    const-wide/16 v3, 0x0

    .line 323
    .local v3, "latestFrameVsyncMs":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 324
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 325
    .local v6, "view":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 326
    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v3, v7

    .line 323
    .end local v6    # "view":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 330
    .end local v5    # "i":I
    :cond_2
    cmp-long v5, v3, v0

    if-nez v5, :cond_3

    .line 338
    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mPostTimeNs:J

    .line 339
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 331
    return-void

    .line 334
    :cond_3
    :try_start_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mFrameIntervalNs:J

    add-long/2addr v5, v7

    .line 336
    .local v5, "nextFrameNs":J
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .end local v2    # "size":I
    .end local v3    # "latestFrameVsyncMs":J
    .end local v5    # "nextFrameNs":J
    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mPostTimeNs:J

    .line 339
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 340
    nop

    .line 341
    return-void

    .line 338
    :catchall_0
    move-exception v2

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mPostTimeNs:J

    .line 339
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 340
    throw v2
.end method
