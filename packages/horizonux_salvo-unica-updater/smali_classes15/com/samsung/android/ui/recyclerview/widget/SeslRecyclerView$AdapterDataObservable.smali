.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7065
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    .line 7066
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .line 7070
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7071
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 7073
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 7076
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .line 7080
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var1":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7081
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;->onChanged()V

    .line 7080
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7084
    .end local v0    # "var1":I
    :cond_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7087
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "var3":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7088
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;

    invoke-virtual {v2, p1, p2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 7087
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7091
    .end local v0    # "var3":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7094
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7095
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/Object;

    .line 7098
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var4":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7099
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 7098
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7102
    .end local v0    # "var4":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7105
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var3":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7106
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 7105
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7109
    .end local v0    # "var3":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7112
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var3":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7113
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 7112
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7116
    .end local v0    # "var3":I
    :cond_0
    return-void
.end method
