.class Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;
.super Ljava/lang/Object;
.source "SeslAdapterHelper.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;Z)V

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 45
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    .line 46
    iput-boolean p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mDisableRecycler:Z

    .line 47
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mOpReorderer:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;

    .line 48
    return-void
.end method

.method private applyAdd(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 376
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 377
    return-void
.end method

.method private applyMove(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 98
    return-void
.end method

.method private applyRemove(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 11
    .param p1, "op"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 101
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 102
    .local v0, "tmpStart":I
    const/4 v1, 0x0

    .line 103
    .local v1, "tmpCount":I
    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    .line 104
    .local v2, "tmpEnd":I
    const/4 v3, -0x1

    .line 105
    .local v3, "type":I
    iget v4, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .local v4, "position":I
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v4, v2, :cond_5

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, "typeChanged":Z
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    invoke-interface {v8, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->findViewHolder(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v8

    .line 108
    .local v8, "vh":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/4 v9, 0x1

    if-nez v8, :cond_2

    invoke-direct {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->canFindInPreLayout(I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    if-ne v3, v9, :cond_1

    .line 117
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v5

    .line 118
    .local v5, "newOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 119
    const/4 v7, 0x1

    .line 121
    .end local v5    # "newOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 109
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 110
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v5

    .line 111
    .restart local v5    # "newOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 112
    const/4 v7, 0x1

    .line 114
    .end local v5    # "newOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_3
    const/4 v3, 0x1

    .line 123
    :goto_2
    if-eqz v7, :cond_4

    .line 124
    sub-int/2addr v4, v1

    .line 125
    sub-int/2addr v2, v1

    .line 126
    const/4 v1, 0x1

    goto :goto_3

    .line 128
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 105
    .end local v7    # "typeChanged":Z
    .end local v8    # "vh":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_3
    add-int/2addr v4, v9

    goto :goto_0

    .line 131
    .end local v4    # "position":I
    :cond_5
    iget v4, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_6

    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 133
    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object p1

    .line 135
    :cond_6
    if-nez v3, :cond_7

    .line 136
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_4

    .line 138
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 140
    :goto_4
    return-void
.end method

.method private applyUpdate(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 9
    .param p1, "op"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 143
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 144
    .local v0, "tmpStart":I
    const/4 v1, 0x0

    .line 145
    .local v1, "tmpCount":I
    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    .line 146
    .local v2, "tmpEnd":I
    const/4 v3, -0x1

    .line 147
    .local v3, "type":I
    iget v4, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .local v4, "position":I
    :goto_0
    const/4 v5, 0x4

    if-ge v4, v2, :cond_4

    .line 148
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    invoke-interface {v6, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->findViewHolder(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v6

    .line 149
    .local v6, "vh":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/4 v7, 0x1

    if-nez v6, :cond_2

    invoke-direct {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    if-ne v3, v7, :cond_1

    .line 160
    iget-object v8, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v5

    .line 162
    .local v5, "newOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 163
    const/4 v1, 0x0

    .line 164
    move v0, v4

    .line 166
    .end local v5    # "newOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 150
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 151
    iget-object v8, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v5

    .line 153
    .restart local v5    # "newOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 154
    const/4 v1, 0x0

    .line 155
    move v0, v4

    .line 157
    .end local v5    # "newOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_3
    const/4 v3, 0x1

    .line 168
    :goto_2
    nop

    .end local v6    # "vh":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/2addr v1, v7

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .end local v4    # "position":I
    :cond_4
    iget v4, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_5

    .line 171
    iget-object v4, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 172
    .local v4, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 173
    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object p1

    .line 175
    .end local v4    # "payload":Ljava/lang/Object;
    :cond_5
    if-nez v3, :cond_6

    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->dispatchAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_3

    .line 178
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->postponeAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 180
    :goto_3
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .locals 7
    .param p1, "position"    # I

    .line 356
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 357
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 358
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 359
    .local v2, "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 360
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 361
    return v5

    .line 363
    :cond_0
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v3, v5, :cond_2

    .line 364
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 365
    .local v3, "end":I
    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 366
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 367
    return v5

    .line 365
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 357
    .end local v2    # "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .end local v3    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 12
    .param p1, "op"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 183
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    .line 195
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    .line 199
    .local v0, "tmpStart":I
    const/4 v2, 0x1

    .line 200
    .local v2, "tmpCnt":I
    iget v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 202
    .local v3, "offsetPositionForPartial":I
    iget v4, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 210
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "op should be remove or update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :pswitch_1
    const/4 v4, 0x1

    .line 205
    .local v4, "positionMultiplier":I
    goto :goto_0

    .line 207
    .end local v4    # "positionMultiplier":I
    :pswitch_2
    const/4 v4, 0x0

    .line 208
    .restart local v4    # "positionMultiplier":I
    nop

    .line 212
    :goto_0
    const/4 v5, 0x1

    .local v5, "p":I
    :goto_1
    iget v6, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-ge v5, v6, :cond_4

    .line 213
    iget v6, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    mul-int v7, v4, v5

    add-int/2addr v6, v7

    .line 214
    .local v6, "pos":I
    iget v7, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    .line 218
    .local v7, "updatedPos":I
    const/4 v8, 0x0

    .line 219
    .local v8, "continuous":Z
    iget v9, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_1

    :pswitch_3
    goto :goto_2

    .line 221
    :pswitch_4
    add-int/lit8 v9, v0, 0x1

    if-ne v7, v9, :cond_0

    move v10, v1

    :cond_0
    move v8, v10

    .line 222
    goto :goto_2

    .line 224
    :pswitch_5
    if-ne v7, v0, :cond_1

    move v10, v1

    :cond_1
    move v8, v10

    .line 227
    :goto_2
    if-eqz v8, :cond_2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 230
    :cond_2
    iget v9, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    iget-object v10, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v9, v0, v2, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v9

    .line 234
    .local v9, "tmp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;I)V

    .line 235
    invoke-virtual {p0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 236
    iget v10, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 237
    add-int/2addr v3, v2

    .line 239
    :cond_3
    move v0, v7

    .line 240
    const/4 v2, 0x1

    .line 212
    .end local v6    # "pos":I
    .end local v7    # "updatedPos":I
    .end local v8    # "continuous":Z
    .end local v9    # "tmp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 243
    .end local v5    # "p":I
    :cond_4
    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 244
    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 245
    if-lez v2, :cond_5

    .line 246
    iget v5, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v5, v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v5

    .line 250
    .local v5, "tmp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;I)V

    .line 251
    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 261
    .end local v5    # "tmp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_5
    return-void

    .line 184
    .end local v0    # "tmpStart":I
    .end local v1    # "payload":Ljava/lang/Object;
    .end local v2    # "tmpCnt":I
    .end local v3    # "offsetPositionForPartial":I
    .end local v4    # "positionMultiplier":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 4
    .param p1, "op"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 383
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_0

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->offsetPositionsForMove(II)V

    .line 390
    goto :goto_0

    .line 396
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 397
    goto :goto_0

    .line 392
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    .line 394
    goto :goto_0

    .line 386
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 387
    nop

    .line 401
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 8
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 280
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ltz v1, :cond_e

    .line 281
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 282
    .local v4, "postponed":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v6, 0x2

    if-ne v5, v2, :cond_9

    .line 284
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v5, :cond_0

    .line 285
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 286
    .local v2, "start":I
    iget v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .local v5, "end":I
    goto :goto_1

    .line 288
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_0
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 289
    .restart local v2    # "start":I
    iget v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 291
    .restart local v5    # "end":I
    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v5, :cond_6

    .line 292
    iget v7, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v7, :cond_3

    .line 293
    if-ne p2, v3, :cond_1

    .line 294
    iget v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 295
    :cond_1
    if-ne p2, v6, :cond_2

    .line 296
    iget v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 298
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 300
    :cond_3
    if-ne p2, v3, :cond_4

    .line 301
    iget v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 302
    :cond_4
    if-ne p2, v6, :cond_5

    .line 303
    iget v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 305
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 307
    :cond_6
    iget v7, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v7, :cond_8

    .line 308
    if-ne p2, v3, :cond_7

    .line 309
    iget v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 310
    iget v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    .line 311
    :cond_7
    if-ne p2, v6, :cond_8

    .line 312
    iget v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 313
    iget v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 316
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_8
    :goto_4
    goto :goto_5

    .line 317
    :cond_9
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_b

    .line 318
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v3, :cond_a

    .line 319
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_5

    .line 320
    :cond_a
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v6, :cond_d

    .line 321
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_5

    .line 324
    :cond_b
    if-ne p2, v3, :cond_c

    .line 325
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v3

    iput v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_5

    .line 326
    :cond_c
    if-ne p2, v6, :cond_d

    .line 327
    iget v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    iput v2, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 280
    .end local v4    # "postponed":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_d
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .restart local v1    # "i":I
    :goto_6
    if-ltz v1, :cond_12

    .line 341
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 342
    .local v3, "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_10

    .line 343
    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v5, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-eq v4, v5, :cond_f

    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gez v4, :cond_11

    .line 344
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 345
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_7

    .line 347
    :cond_10
    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gtz v4, :cond_11

    .line 348
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 349
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 340
    .end local v3    # "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_11
    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 352
    .end local v1    # "i":I
    :cond_12
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;
    .locals 1
    .param p1, "ops"    # [Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 52
    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .line 515
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 516
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 517
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 518
    .local v2, "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 534
    :sswitch_0
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_0

    .line 535
    iget p1, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 537
    :cond_0
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_1

    .line 538
    add-int/lit8 p1, p1, -0x1

    .line 540
    :cond_1
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_3

    .line 541
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 525
    :sswitch_1
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_3

    .line 526
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 527
    .local v3, "end":I
    if-le v3, p1, :cond_2

    .line 528
    const/4 v4, -0x1

    return v4

    .line 530
    :cond_2
    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    .line 531
    .end local v3    # "end":I
    goto :goto_1

    .line 520
    :sswitch_2
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_3

    .line 521
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    .line 516
    .end local v2    # "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    .end local v1    # "i":I
    :cond_4
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 89
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    invoke-interface {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 94
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    .line 484
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->consumePostponedUpdates()V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 486
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 487
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 488
    .local v2, "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 502
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 503
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 498
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 499
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 500
    goto :goto_1

    .line 494
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 495
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 496
    goto :goto_1

    .line 490
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->onDispatchSecondPass(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 491
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 492
    nop

    .line 506
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 507
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 486
    .end local v2    # "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 511
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 512
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;I)V
    .locals 3
    .param p1, "op"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .line 264
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->onDispatchFirstPass(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 265
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 271
    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 268
    nop

    .line 276
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .line 416
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 417
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 418
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 419
    .local v2, "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 420
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_0

    .line 421
    iget p1, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 423
    :cond_0
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_1

    .line 424
    add-int/lit8 p1, p1, -0x1

    .line 426
    :cond_1
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_5

    .line 427
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 430
    :cond_2
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_5

    .line 431
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 432
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_3

    .line 433
    const/4 v3, -0x1

    return v3

    .line 435
    :cond_3
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1

    .line 436
    :cond_4
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 437
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    .line 417
    .end local v2    # "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v1    # "i":I
    :cond_6
    return p1
.end method

.method hasAnyUpdateTypes(I)Z
    .locals 1
    .param p1, "updateTypes"    # I

    .line 408
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasPendingUpdates()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasUpdates()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 641
    .local v0, "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    if-nez v0, :cond_0

    .line 642
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 644
    :cond_0
    iput p1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    .line 645
    iput p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 646
    iput p3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 647
    iput-object p4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 649
    :goto_0
    return-object v0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 445
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 446
    return v0

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 450
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method onItemRangeInserted(II)Z
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 454
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 455
    return v0

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 459
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method onItemRangeMoved(III)Z
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .line 472
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 473
    return v0

    .line 475
    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 478
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, p1, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 480
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 476
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onItemRangeRemoved(II)Z
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 463
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 464
    return v0

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 468
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method preProcess()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mOpReorderer:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->reorderOps(Ljava/util/List;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 66
    .local v2, "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 77
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->applyMove(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 74
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->applyUpdate(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 75
    goto :goto_1

    .line 71
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->applyRemove(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 72
    goto :goto_1

    .line 68
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->applyAdd(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 69
    nop

    .line 80
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 81
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 64
    .end local v2    # "op":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 1
    .param p1, "op"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 654
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    .line 655
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 658
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 661
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 662
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 663
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 666
    return-void
.end method

.method reset()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->mExistingUpdateTypes:I

    .line 59
    return-void
.end method
