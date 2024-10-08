.class Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;
.super Ljava/lang/Object;
.source "SeslChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChildrenHelper"


# instance fields
.field final mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

.field final mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

.field final mHiddenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    .line 34
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    .line 36
    return-void
.end method

.method private getOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .line 74
    const/4 v0, -0x1

    if-gez p1, :cond_0

    .line 75
    return v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildCount()I

    move-result v1

    .line 78
    .local v1, "limit":I
    move v2, p1

    .line 79
    .local v2, "offset":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 80
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->countOnesBefore(I)I

    move-result v3

    .line 81
    .local v3, "removedBefore":I
    sub-int v4, v2, v3

    sub-int v4, p1, v4

    .line 82
    .local v4, "diff":I
    if-nez v4, :cond_2

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    :cond_1
    return v2

    .line 88
    :cond_2
    add-int/2addr v2, v4

    .line 90
    .end local v3    # "removedBefore":I
    .end local v4    # "diff":I
    goto :goto_0

    .line 91
    :cond_3
    return v0
.end method

.method private hideViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->onEnteredHiddenState(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method private unhideViewInternal(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addView(Landroid/view/View;IZ)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "hidden"    # Z

    .line 58
    if-gez p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildCount()I

    move-result v0

    .local v0, "offset":I
    goto :goto_0

    .line 61
    .end local v0    # "offset":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getOffset(I)I

    move-result v0

    .line 63
    .restart local v0    # "offset":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1, v0, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->insert(IZ)V

    .line 64
    if-eqz p3, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->addView(Landroid/view/View;I)V

    .line 71
    return-void
.end method

.method addView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hidden"    # Z

    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->addView(Landroid/view/View;IZ)V

    .line 54
    return-void
.end method

.method attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "hidden"    # Z

    .line 155
    if-gez p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildCount()I

    move-result v0

    .local v0, "offset":I
    goto :goto_0

    .line 158
    .end local v0    # "offset":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getOffset(I)I

    move-result v0

    .line 160
    .restart local v0    # "offset":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1, v0, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->insert(IZ)V

    .line 161
    if-eqz p4, :cond_1

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v1, p1, v0, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 168
    return-void
.end method

.method detachViewFromParent(I)V
    .locals 2
    .param p1, "index"    # I

    .line 183
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getOffset(I)I

    move-result v0

    .line 184
    .local v0, "offset":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->remove(I)Z

    .line 185
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->detachViewFromParent(I)V

    .line 189
    return-void
.end method

.method findHiddenNonRemovedView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 142
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 143
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 144
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 145
    .local v3, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    return-object v2

    .line 142
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getChildAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getOffset(I)I

    move-result v0

    .line 125
    .local v0, "offset":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method getChildCount()I
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getUnfilteredChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 179
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getUnfilteredChildCount()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildCount()I

    move-result v0

    return v0
.end method

.method hide(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 211
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 212
    .local v0, "offset":I
    if-ltz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->set(I)V

    .line 219
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->hideViewInternal(Landroid/view/View;)V

    .line 223
    return-void

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method indexOfChild(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 193
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    return v1

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    return v1

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->countOnesBefore(I)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method isHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeAllViewsUnfiltered()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->reset()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    .line 132
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->removeAllViews()V

    .line 138
    return-void
.end method

.method removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 96
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->removeViewAt(I)V

    .line 106
    return-void
.end method

.method removeViewAt(I)V
    .locals 3
    .param p1, "index"    # I

    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getOffset(I)I

    move-result v0

    .line 110
    .local v0, "offset":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->removeViewAt(I)V

    .line 121
    return-void
.end method

.method removeViewIfHidden(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 244
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 248
    return v1

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->remove(I)Z

    .line 252
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 255
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->removeViewAt(I)V

    .line 256
    return v1

    .line 258
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unhide(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 227
    .local v0, "offset":I
    if-ltz v0, :cond_1

    .line 230
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->mBucket:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Bucket;->clear(I)V

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    .line 235
    return-void

    .line 231
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
