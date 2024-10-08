.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 9002
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8996
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9003
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 9006
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8996
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9007
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 9014
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8996
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9015
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9018
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 8996
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9019
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 9010
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 8996
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9011
    return-void
.end method


# virtual methods
.method public getViewAdapterPosition()I
    .locals 1

    .line 9022
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewLayoutPosition()I
    .locals 1

    .line 9026
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getViewPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9031
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getPosition()I

    move-result v0

    return v0
.end method

.method public isItemChanged()Z
    .locals 1

    .line 9035
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public isItemRemoved()Z
    .locals 1

    .line 9039
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public isViewInvalid()Z
    .locals 1

    .line 9043
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public viewNeedsUpdate()Z
    .locals 1

    .line 9047
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    return v0
.end method
