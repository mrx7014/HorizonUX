.class public Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
.source "CreditsPageListViewHolder.java"


# instance fields
.field private mIsItem:Z

.field private mLibIconView:Lcom/google/android/material/imageview/ShapeableImageView;

.field private mLibNameTextView:Landroid/widget/TextView;

.field private mLibSummaryTextView:Landroid/widget/TextView;

.field private mParentView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mIsItem:Z

    .line 36
    if-eqz v0, :cond_1

    .line 37
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mParentView:Landroid/widget/LinearLayout;

    .line 38
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mLibIconView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 39
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mParentView:Landroid/widget/LinearLayout;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mLibNameTextView:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mParentView:Landroid/widget/LinearLayout;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mLibSummaryTextView:Landroid/widget/TextView;

    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public getIsItem()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mIsItem:Z

    return v0
.end method

.method public onBindViewHolder(Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;)V
    .locals 4
    .param p1, "viewModel"    # Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;

    .line 45
    iget-boolean v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mIsItem:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mLibIconView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->getLibIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mLibIconView:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    const/high16 v2, 0x42340000    # 45.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 48
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mLibNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->getLibName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->getLibDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mLibSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mLibSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->getLibDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setItemOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "ocl"    # Landroid/view/View$OnClickListener;

    .line 61
    iget-boolean v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mIsItem:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsPageListViewHolder;->mParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_0
    return-void
.end method
