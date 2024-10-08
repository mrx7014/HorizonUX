.class public Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;
.super Landroidx/fragment/app/Fragment;
.source "MainCardsFragment.java"


# instance fields
.field private changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

.field private fic:Lcom/mesalabs/ten/update/ui/widget/CardView;

.field private mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIsDownloaded:Z

.field private mROMStubListener:Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;

.field private mROMUpdate:Lcom/mesalabs/ten/update/ota/ROMUpdate;

.field private mRootView:Landroid/view/View;

.field private preInstallWarningText:Landroid/widget/TextView;

.field private unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

.field private updateStatusView:Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;


# direct methods
.method public static synthetic $r8$lambda$-Y1L0fM3ger0rcyGAAZ819SsEgk(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->postROMUpdatesCheck(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mROMStubListener:Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    .line 46
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    .line 46
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private postROMUpdatesCheck(I)V
    .locals 2
    .param p1, "status"    # I

    .line 191
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateRefreshButton(Z)V

    .line 192
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->updateStatusView:Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;

    invoke-virtual {v0, p1}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->setUpdateStatus(I)V

    .line 194
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getUpdateAvailability()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->start()V

    .line 196
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    const v1, 0x7f0f009e

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setDescText(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    new-instance v1, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$5;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$5;-><init>(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public checkForROMUpdates()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->updateStatusView:Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->getCheckingStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->updateStatusView:Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->setUpdateStatus(I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->stop()V

    .line 184
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setDescText(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mROMUpdate:Lcom/mesalabs/ten/update/ota/ROMUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ota/ROMUpdate;->checkUpdates(Z)V

    .line 188
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mContext:Landroid/content/Context;

    .line 91
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 66
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 67
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mIsDownloaded:Z

    .line 72
    new-instance v0, Lcom/mesalabs/ten/update/ota/ROMUpdate;

    iget-object v1, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mROMStubListener:Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;

    invoke-direct {v0, p1, v1}, Lcom/mesalabs/ten/update/ota/ROMUpdate;-><init>(Landroid/content/Context;Lcom/mesalabs/ten/update/ota/ROMUpdate$StubListener;)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mROMUpdate:Lcom/mesalabs/ten/update/ota/ROMUpdate;

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    const v0, 0x7f0c0046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    .line 78
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .line 95
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mIsDownloaded:Z

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->updateStatusView:Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->setUpdateStatus(I)V

    .line 98
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->preInstallWarningText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080099

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    const v1, 0x7f0f00a2

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setTitleText(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    const v1, 0x7f0f00a1

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setDescText(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    new-instance v1, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$1;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$1;-><init>(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 113
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 114
    .local v0, "itemLayoutTransition":Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mContainer:Landroid/widget/LinearLayout;

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

    .line 115
    .local v1, "scaleDown":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mContainer:Landroid/widget/LinearLayout;

    new-array v5, v2, [Landroid/animation/PropertyValuesHolder;

    new-array v8, v4, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 116
    .local v3, "scaleUp":Landroid/animation/Animator;
    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 117
    const-wide/16 v5, 0x28a

    invoke-virtual {v0, v4, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 118
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 119
    const-wide/16 v5, 0x96

    invoke-virtual {v0, v7, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 120
    new-instance v5, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v7, v5}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 121
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 122
    const-wide/16 v8, 0x50

    invoke-virtual {v0, v5, v8, v9}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 124
    iget-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f090107

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mContainer:Landroid/widget/LinearLayout;

    .line 125
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 127
    iget-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f09014d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;

    iput-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->updateStatusView:Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;

    .line 128
    iget-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f090111

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    iput-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    .line 129
    new-instance v6, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$2;

    invoke-direct {v6, p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$2;-><init>(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)V

    invoke-virtual {v5, v6}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    invoke-virtual {v5, v7}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setClickable(Z)V

    .line 136
    iget-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f09012e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->preInstallWarningText:Landroid/widget/TextView;

    .line 138
    iget-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0900f9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mesalabs/ten/update/ui/widget/CardView;

    iput-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    .line 139
    invoke-virtual {v5, v7}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setEnabled(Z)V

    .line 141
    iget-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0900fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mesalabs/ten/update/ui/widget/CardView;

    iput-object v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->fic:Lcom/mesalabs/ten/update/ui/widget/CardView;

    .line 142
    new-instance v6, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$3;

    invoke-direct {v6, p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$3;-><init>(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)V

    invoke-virtual {v5, v6}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-boolean v5, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->mIsDownloaded:Z

    if-eqz v5, :cond_0

    .line 160
    iget-object v4, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->updateStatusView:Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->start(I)V

    .line 161
    iget-object v4, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->changelogView:Lcom/mesalabs/ten/update/ui/widget/ChangelogView;

    invoke-virtual {v4}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->start()V

    .line 162
    iget-object v4, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->preInstallWarningText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v4, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    invoke-virtual {v4, v2}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setEnabled(Z)V

    .line 164
    iget-object v2, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080099

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v2, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    const v4, 0x7f0f00a2

    invoke-virtual {p0, v4}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setTitleText(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    const v4, 0x7f0f00a1

    invoke-virtual {p0, v4}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setDescText(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->unc:Lcom/mesalabs/ten/update/ui/widget/CardView;

    new-instance v4, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$4;

    invoke-direct {v4, p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment$4;-><init>(Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;)V

    invoke-virtual {v2, v4}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->updateStatusView:Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;

    invoke-virtual {v2, v4}, Lcom/mesalabs/ten/update/ui/widget/UpdateStatusView;->start(I)V

    .line 175
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;->checkForROMUpdates()V

    .line 178
    :goto_0
    return-void

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
