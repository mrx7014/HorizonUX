.class public Lcom/samsung/android/ui/recyclerview/widget/AdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "AdapterListUpdateCallback.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/ListUpdateCallback;


# instance fields
.field private final mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 23
    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 27
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 28
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 37
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->notifyItemMoved(II)V

    .line 38
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 32
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 33
    return-void
.end method
