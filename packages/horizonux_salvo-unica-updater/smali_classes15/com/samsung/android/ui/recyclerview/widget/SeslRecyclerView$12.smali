.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->initAdapterManager()V
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

    .line 4606
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 4608
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 4624
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onItemsMoved(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;III)V

    goto :goto_1

    .line 4621
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onItemsUpdated(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;IILjava/lang/Object;)V

    .line 4622
    goto :goto_1

    .line 4613
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onItemsRemoved(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    goto :goto_0

    .line 4610
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onItemsAdded(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    .line 4611
    goto :goto_1

    .line 4619
    :goto_0
    nop

    .line 4627
    :goto_1
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

.method public findViewHolder(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 4
    .param p1, "var1"    # I

    .line 4630
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findViewHolderForPosition(IZ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 4632
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 4633
    const/4 v1, 0x0

    .local v1, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_0

    .line 4635
    .end local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    move-object v1, v0

    .line 4636
    .restart local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4637
    const/4 v1, 0x0

    .line 4641
    :cond_1
    :goto_0
    return-object v1
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/Object;

    .line 4645
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 4646
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsChanged:Z

    .line 4647
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 4650
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 4651
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 4652
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 4655
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetPositionRecordsForMove(II)V

    .line 4656
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 4657
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 4660
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 4661
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 4662
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 4663
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 4664
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 4667
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 4668
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 4669
    return-void
.end method

.method public onDispatchFirstPass(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 4672
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->dispatchUpdate(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 4673
    return-void
.end method

.method public onDispatchSecondPass(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;

    .line 4676
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;->dispatchUpdate(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$UpdateOp;)V

    .line 4677
    return-void
.end method
