.class public Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
.source "CreditsPageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter<",
        "Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

.field private mModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;",
            "Ljava/util/List<",
            "Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p2, "model":Ljava/util/List;, "Ljava/util/List<Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;>;"
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->mActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    .line 33
    iput-object p2, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->mModel:Ljava/util/List;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;

    .line 27
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->mModel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;)Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;

    .line 27
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->mActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->mModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 48
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;
    .param p2, "position"    # I

    .line 59
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->mModel:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;

    invoke-virtual {p1, v0}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->onBindViewHolder(Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;)V

    .line 60
    invoke-virtual {p1}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->getIsItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter$1;-><init>(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;I)V

    invoke-virtual {p1, v0}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->setItemOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->onBindViewHolder(Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c004f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0052

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;

    invoke-direct {v1, v0, p2}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;

    move-result-object p1

    return-object p1
.end method
