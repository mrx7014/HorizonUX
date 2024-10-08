.class public Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;
.super Landroidx/fragment/app/Fragment;
.source "DownloadProgressFragment.java"


# instance fields
.field private changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

.field private downloadProgressView:Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

.field private mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;

.field private preInstallWarningText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    .line 38
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getDownloadProgressView()Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->downloadProgressView:Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    return-object v0
.end method

.method public getPreInstallWarningTextView()Landroid/widget/TextView;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->preInstallWarningText:Landroid/widget/TextView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mRootView:Landroid/view/View;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mContext:Landroid/content/Context;

    .line 71
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 51
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    const v0, 0x7f0c0045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mRootView:Landroid/view/View;

    .line 58
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 76
    .local v0, "itemLayoutTransition":Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v3, v7

    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 77
    .local v1, "scaleDown":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mContainer:Landroid/widget/LinearLayout;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-static {v3, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 78
    .local v2, "scaleUp":Landroid/animation/Animator;
    invoke-virtual {v0, v4, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 79
    const-wide/16 v5, 0x28a

    invoke-virtual {v0, v4, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 80
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 81
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v7, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 82
    new-instance v3, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v7, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 83
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 84
    const-wide/16 v4, 0x50

    invoke-virtual {v0, v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 86
    iget-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090106

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mContainer:Landroid/widget/LinearLayout;

    .line 87
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 89
    iget-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090116

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    iput-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->downloadProgressView:Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    .line 91
    iget-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090110

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    iput-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    .line 92
    new-instance v4, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment$1;

    invoke-direct {v4, p0}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment$1;-><init>(Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;)V

    invoke-virtual {v3, v4}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    invoke-virtual {v3}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->start()V

    .line 100
    iget-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f09012d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->preInstallWarningText:Landroid/widget/TextView;

    .line 101
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
