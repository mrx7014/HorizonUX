.class public Lcom/samsung/android/ui/preference/PreferenceViewHolder;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
.source "PreferenceViewHolder.java"


# instance fields
.field private final mCachedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerAllowedAbove:Z

.field private mDividerAllowedBelow:Z

.field mDrawBackground:Z

.field mDrawCorners:I

.field mSubheaderRound:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mCachedViews:Landroid/util/SparseArray;

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDrawBackground:Z

    .line 32
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mSubheaderRound:Z

    .line 37
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    const v1, 0x7f0900c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    const v1, 0x102003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mCachedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 46
    .local v0, "cachedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 47
    return-object v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 51
    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mCachedViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    :cond_1
    return-object v1
.end method

.method public isDividerAllowedAbove()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    return v0
.end method

.method public isDividerAllowedBelow()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    return v0
.end method

.method public seslGetDrawCorners()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDrawCorners:I

    return v0
.end method

.method public seslIsDrawSubheaderRound()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mSubheaderRound:Z

    return v0
.end method

.method seslSetPreferenceBackgroundType(ZIZ)V
    .locals 0
    .param p1, "draw"    # Z
    .param p2, "corners"    # I
    .param p3, "subheaderRound"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDrawBackground:Z

    .line 59
    iput p2, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDrawCorners:I

    .line 60
    iput-boolean p3, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mSubheaderRound:Z

    .line 61
    return-void
.end method

.method public setDividerAllowedAbove(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    .line 69
    return-void
.end method

.method public setDividerAllowedBelow(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    .line 77
    return-void
.end method
