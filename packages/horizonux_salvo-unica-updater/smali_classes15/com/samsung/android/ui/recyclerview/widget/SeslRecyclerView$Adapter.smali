.class public abstract Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6925
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mHasStableIds:Z

    .line 6923
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    .line 6926
    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 3
    .param p2, "var2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 6929
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 6930
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6931
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    .line 6934
    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 6935
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6936
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onBindViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6937
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearPayload()V

    .line 6938
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6939
    .local v0, "var3":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    if-eqz v2, :cond_1

    .line 6940
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iput-boolean v1, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6943
    :cond_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 6944
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 6948
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6949
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 6950
    .local v0, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6955
    iput p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6956
    nop

    .line 6958
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 6956
    return-object v0

    .line 6951
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parent":Landroid/view/ViewGroup;
    .end local p2    # "viewType":I
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6958
    .end local v0    # "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    .restart local p1    # "parent":Landroid/view/ViewGroup;
    .restart local p2    # "viewType":I
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 6959
    throw v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "var1"    # I

    .line 6965
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "var1"    # I

    .line 6969
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 6973
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 6977
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 6981
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 6982
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 6985
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6986
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/Object;

    .line 6989
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6990
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 6993
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6994
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 6997
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 6998
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7001
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7002
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/Object;

    .line 7005
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7006
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7009
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 7010
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 7013
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 7014
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 7017
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 7018
    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 7021
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "var2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7026
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    .local p3, "var3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onBindViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)V

    .line 7027
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 7032
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 7035
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7039
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7042
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7045
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;

    .line 7048
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 7049
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 7052
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7055
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mHasStableIds:Z

    .line 7057
    return-void

    .line 7053
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAdapterDataObserver(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;

    .line 7060
    .local p0, "this":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 7061
    return-void
.end method
