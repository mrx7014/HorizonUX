.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0

    .line 10133
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;-><init>()V

    .line 10134
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 10137
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 10138
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 10139
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 10140
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10141
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 10144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$5600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10145
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$5600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onSectionsChanged()V

    .line 10148
    :cond_1
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/Object;

    .line 10151
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 10152
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10153
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 10156
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 10159
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 10160
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10161
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 10164
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 10167
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 10168
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10169
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 10172
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 10175
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 10176
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10177
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 10180
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .line 10183
    sget-boolean v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 10184
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10186
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 10187
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 10190
    :goto_0
    return-void
.end method
