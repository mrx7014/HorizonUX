.class Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;
.super Ljava/lang/Object;
.source "SeslViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field final mLayoutHolderMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    .line 37
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 4
    .param p1, "vh"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "flag"    # I

    .line 69
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 70
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 71
    return-object v1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 74
    .local v2, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-eqz v2, :cond_4

    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_4

    .line 75
    iget v1, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    not-int v3, p2

    and-int/2addr v1, v3

    iput v1, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 77
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 78
    iget-object v1, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .local v1, "info":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    goto :goto_0

    .line 79
    .end local v1    # "info":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_1
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    .line 80
    iget-object v1, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 84
    .restart local v1    # "info":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_0
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_2

    .line 85
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 86
    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->recycle(Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;)V

    .line 88
    :cond_2
    return-object v1

    .line 82
    .end local v1    # "info":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must provide flag PRE or POST"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_4
    return-object v1
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 99
    .local v0, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->obtain()Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 104
    iput-object p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 105
    return-void
.end method

.method addToDisappearedInLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 128
    .local v0, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->obtain()Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 133
    return-void
.end method

.method addToOldChangeHolders(JLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 95
    return-void
.end method

.method addToPostLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 118
    .local v0, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->obtain()Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    iput-object p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 123
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 124
    return-void
.end method

.method addToPreLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "info"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 47
    .local v0, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->obtain()Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    iput-object p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 52
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 53
    return-void
.end method

.method clear()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 43
    return-void
.end method

.method getFromOldChangeHolders(J)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "key"    # J

    .line 113
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    return-object v0
.end method

.method isDisappearing(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 57
    .local v0, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isInPreLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 109
    .local v0, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onDetach()V
    .locals 0

    .line 185
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->drainCache()V

    .line 186
    return-void
.end method

.method public onViewDetached(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 189
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->removeFromDisappearedInLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 190
    return-void
.end method

.method popFromPostLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "vh"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 65
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->popFromLayoutStep(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "vh"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 61
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->popFromLayoutStep(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method process(Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_7

    .line 145
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 146
    .local v1, "viewHolder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 147
    .local v2, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 148
    invoke-interface {p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;->unused(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_1

    .line 149
    :cond_0
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 150
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_1

    .line 151
    invoke-interface {p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;->unused(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;->processDisappeared(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 155
    :cond_2
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 156
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;->processAppeared(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 157
    :cond_3
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 158
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;->processPersistent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 159
    :cond_4
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 160
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;->processDisappeared(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 161
    :cond_5
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 162
    iget-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;->processAppeared(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 163
    :cond_6
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 167
    :goto_1
    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->recycle(Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;)V

    .line 144
    .end local v1    # "viewHolder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v2    # "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 169
    .end local v0    # "index":I
    :cond_7
    return-void
.end method

.method removeFromDisappearedInLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 137
    .local v0, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 141
    return-void
.end method

.method removeViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 172
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    .line 175
    goto :goto_1

    .line 172
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 179
    .local v0, "info":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-eqz v0, :cond_2

    .line 180
    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->recycle(Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;)V

    .line 182
    :cond_2
    return-void
.end method
