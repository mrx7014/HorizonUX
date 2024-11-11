.class public Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;
.source "CreditsPageListItemDecoration.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

.field private mSeslListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

.field private mSeslRoundedCornerBottom:Lcom/samsung/android/ui/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;)V
    .locals 7
    .param p1, "activity"    # Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    .line 37
    if-eqz p1, :cond_2

    .line 41
    new-instance v0, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    invoke-virtual {v1}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mSeslListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 42
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    .line 43
    invoke-virtual {v1}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    invoke-virtual {v3}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    const v4, 0x7f060155

    const v5, 0x7f060156

    if-eqz v3, :cond_0

    .line 44
    move v3, v4

    goto :goto_0

    .line 45
    :cond_0
    move v3, v5

    :goto_0
    nop

    .line 43
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 42
    const/16 v3, 0xf

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 47
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mSeslListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 49
    new-instance v0, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    invoke-virtual {v1}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mSeslRoundedCornerBottom:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 50
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    .line 51
    invoke-virtual {v1}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    invoke-virtual {v2}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v4, v5

    :goto_1
    nop

    .line 51
    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 50
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 55
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mSeslRoundedCornerBottom:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 56
    return-void

    .line 38
    :cond_2
    new-instance v0, Lcom/mesalabs/cerberus/utils/CerberusException;

    const-string v1, "Activity is null!!!"

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canScrollUp(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 7
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 82
    .local v0, "layoutManager":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 83
    return v2

    .line 86
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 87
    .local v1, "isntFirstItem":Z
    :goto_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 89
    .local v4, "childAt":Landroid/view/View;
    if-nez v1, :cond_4

    if-nez v4, :cond_2

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 93
    return v3

    .line 95
    :cond_3
    return v2

    .line 90
    :cond_4
    :goto_1
    return v1
.end method

.method private getChildCount(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findViewHolderForLayoutPosition(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->getIsItem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 62
    invoke-direct {p0, p2}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->getChildCount(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v0

    .line 63
    .local v0, "childCount":I
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v1

    .line 66
    .local v1, "width":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 67
    invoke-virtual {p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, "childAt":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 70
    .local v4, "y":I
    iget-object v5, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 71
    const/4 v6, 0x0

    iget v7, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mDividerHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    iget-object v5, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    .end local v3    # "childAt":Landroid/view/View;
    .end local v4    # "y":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mSeslListRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mSeslRoundedCornerBottom:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual {p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 78
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mDividerHeight:I

    .line 110
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListItemDecoration;->mListActivity:Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/aboutpage/CreditsActivity;->getListView()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidateItemDecorations()V

    .line 111
    return-void
.end method
