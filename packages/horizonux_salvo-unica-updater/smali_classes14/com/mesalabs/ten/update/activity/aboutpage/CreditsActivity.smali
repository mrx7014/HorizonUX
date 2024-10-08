.class public Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;
.super Lcom/mesalabs/cerberus/base/BaseAppBarActivity;
.source "CreditsActivity.java"


# instance fields
.field private mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

.field private mSubheaderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;-><init>()V

    return-void
.end method

.method private getCreditsList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;>;"
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 91
    .local v1, "libIcons":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "libNames":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "libDescs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "libWebLinks":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 96
    new-instance v6, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v8, v2, v5

    aget-object v9, v3, v5

    aget-object v10, v4, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 101
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;

    invoke-direct {v5}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

.method private initListView()V
    .locals 7

    .line 70
    const v0, 0x7f090137

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 72
    new-instance v0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;

    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getCreditsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListAdapter;-><init>(Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;Ljava/util/List;)V

    .line 73
    .local v0, "adapter":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    new-instance v1, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;-><init>(Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;)V

    .line 74
    .local v1, "decoration":Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v2, "divider":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010214

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 77
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    new-instance v4, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    iget-object v6, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setLayoutManager(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    .line 78
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setAdapter(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V

    .line 80
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;)V

    .line 81
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mContext:Landroid/content/Context;

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setItemAnimator(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;)V

    .line 83
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 84
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    .line 85
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getIsAppBarExpanded()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mListView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 60
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mSubheaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v3}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->getAppBarLayout()Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mSubheaderText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mSubheaderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->setContentView(I)V

    .line 44
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    const v1, 0x7f0f005c

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setTitleText(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    new-instance v1, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity$1;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity$1;-><init>(Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButton(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f09013e

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mSubheaderText:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v3}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->getAppBarLayout()Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mSubheaderText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->mSubheaderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->initListView()V

    .line 56
    return-void
.end method
