.class Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;
.super Ljava/lang/Object;
.source "SeslOpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;

    .line 32
    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .line 198
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 199
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 200
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 201
    .local v2, "op1":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 202
    if-eqz v0, :cond_1

    .line 203
    return v1

    .line 206
    :cond_0
    const/4 v0, 0x1

    .line 199
    .end local v2    # "op1":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 209
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private swapMoveAdd(Ljava/util/List;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 3
    .param p2, "move"    # I
    .param p3, "moveOp"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .param p4, "add"    # I
    .param p5, "addOp"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            "I",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 148
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 149
    .local v0, "offset":I
    iget v1, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_0

    .line 150
    add-int/lit8 v0, v0, -0x1

    .line 152
    :cond_0
    iget v1, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_1

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 155
    :cond_1
    iget v1, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_2

    .line 156
    iget v1, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 158
    :cond_2
    iget v1, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_3

    .line 159
    iget v1, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 161
    :cond_3
    iget v1, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 162
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .locals 8
    .param p2, "badMove"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 43
    .local v0, "moveOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 44
    .local v7, "nextOp":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 52
    :pswitch_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->swapMoveUpdate(Ljava/util/List;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    goto :goto_0

    .line 46
    :pswitch_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->swapMoveRemove(Ljava/util/List;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 47
    goto :goto_0

    .line 49
    :pswitch_3
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->swapMoveAdd(Ljava/util/List;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 50
    nop

    .line 55
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    move v1, v0

    .local v1, "badMove":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 37
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 8
    .param p2, "movePos"    # I
    .param p3, "moveOp"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .param p4, "removePos"    # I
    .param p5, "removeOp"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            "I",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 59
    .local v0, "extraRm":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 62
    .local v1, "revertedMove":Z
    iget v2, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "moveIsBackwards":Z
    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v5, :cond_1

    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v6, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "moveIsBackwards":Z
    :cond_0
    const/4 v2, 0x1

    .line 70
    .restart local v2    # "moveIsBackwards":Z
    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v4

    if-ne v3, v5, :cond_1

    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v6, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    .line 72
    const/4 v1, 0x1

    .line 76
    :cond_1
    :goto_0
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    const/4 v6, 0x2

    if-ge v3, v5, :cond_2

    .line 77
    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    iput v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_1

    .line 78
    :cond_2
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_4

    .line 79
    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 80
    iput v6, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    .line 81
    iput v4, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 82
    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-nez v3, :cond_3

    .line 83
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;

    invoke-interface {v3, p5}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 86
    :cond_3
    return-void

    .line 89
    :cond_4
    :goto_1
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v5, :cond_5

    .line 90
    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v3, v4

    iput v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_2

    .line 91
    :cond_5
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_6

    .line 92
    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v5

    iget v5, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v5

    .line 93
    .local v3, "remaining":I
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;

    iget v7, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v7, v4

    const/4 v4, 0x0

    invoke-interface {v5, v6, v7, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v0

    .line 94
    iget v4, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v4, v5

    iput v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 97
    .end local v3    # "remaining":I
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 98
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;

    invoke-interface {v3, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 101
    return-void

    .line 104
    :cond_7
    if-eqz v2, :cond_b

    .line 105
    if-eqz v0, :cond_9

    .line 106
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_8

    .line 107
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 109
    :cond_8
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_9

    .line 110
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 113
    :cond_9
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_a

    .line 114
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 116
    :cond_a
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_f

    .line 117
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 120
    :cond_b
    if-eqz v0, :cond_d

    .line 121
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_c

    .line 122
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 124
    :cond_c
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_d

    .line 125
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 128
    :cond_d
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_e

    .line 129
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 131
    :cond_e
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_f

    .line 132
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 136
    :cond_f
    :goto_3
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_10

    .line 138
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 140
    :cond_10
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    :goto_4
    if-eqz v0, :cond_11

    .line 143
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 145
    :cond_11
    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;ILcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 7
    .param p2, "move"    # I
    .param p3, "moveOp"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .param p4, "update"    # I
    .param p5, "updateOp"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            "I",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 167
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 168
    .local v0, "extraUp1":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 169
    .local v1, "extraUp2":Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;
    iget v2, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v2, v3, :cond_0

    .line 170
    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v5

    iput v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_0

    .line 171
    :cond_0
    iget v2, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_1

    .line 172
    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v5

    iput v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 173
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;

    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget-object v6, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v0

    .line 175
    :cond_1
    :goto_0
    iget v2, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, v3, :cond_2

    .line 176
    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v5

    iput v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    goto :goto_1

    .line 177
    :cond_2
    iget v2, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_3

    .line 178
    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    iget v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    .line 179
    .local v2, "remaining":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;

    iget v6, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v5

    iget-object v5, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v6, v2, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    move-result-object v1

    .line 180
    iget v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v2

    iput v3, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 182
    .end local v2    # "remaining":I
    :cond_3
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget v2, p5, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-lez v2, :cond_4

    .line 184
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 186
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;

    invoke-interface {v2, p5}, Lcom/samsung/android/ui/recyclerview/widget/SeslOpReorderer$Callback;->recycleUpdateOp(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 189
    :goto_2
    if-eqz v0, :cond_5

    .line 190
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 192
    :cond_5
    if-eqz v1, :cond_6

    .line 193
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 195
    :cond_6
    return-void
.end method
