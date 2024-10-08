.class public final Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 9255
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 9247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 9248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 9256
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 9257
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRequestedCacheMax:I

    .line 9258
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    .line 9259
    return-void
.end method

.method private attachAccessibilityDelegateOnBind(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9263
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9264
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9265
    .local v0, "var2":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 9266
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 9269
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    if-nez v1, :cond_1

    .line 9270
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-direct {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setAccessibilityDelegateCompat(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;)V

    .line 9271
    const-string v1, "SeslRecyclerView"

    const-string v2, "attachAccessibilityDelegate: mAccessibilityDelegate is null, so re create"

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9274
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9275
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9276
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 9280
    .end local v0    # "var2":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p1, "var1"    # Landroid/view/ViewGroup;
    .param p2, "var2"    # Z

    .line 9292
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "var3":I
    :goto_0
    if-ltz v0, :cond_1

    .line 9293
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9294
    .local v2, "var4":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 9295
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 9292
    .end local v2    # "var4":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9299
    :cond_1
    if-eqz p2, :cond_3

    .line 9300
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 9301
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9302
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 9304
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 9305
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9306
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9310
    :cond_3
    :goto_1
    return-void
.end method

.method private invalidateDisplayListInt(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9283
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 9284
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 9287
    :cond_0
    return-void
.end method

.method private tryBindViewHolderByDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIJ)Z
    .locals 9
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # J

    .line 9313
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iput-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 9314
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 9315
    .local v0, "var6":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getNanoTime()J

    move-result-wide v7

    .line 9317
    .local v7, "var7":J
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p4, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    move v2, v0

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9318
    const/4 v1, 0x0

    .local v1, "var9":Z
    goto :goto_0

    .line 9320
    .end local v1    # "var9":Z
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->bindViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)V

    .line 9321
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 9322
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    sub-long v3, p4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 9323
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->attachAccessibilityDelegateOnBind(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9324
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9325
    iput p3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9328
    :cond_1
    const/4 v1, 0x1

    .line 9331
    .restart local v1    # "var9":Z
    :goto_0
    return v1
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "var2"    # Z

    .line 9335
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9336
    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 9337
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 9338
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, v2

    check-cast v1, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 9341
    :cond_0
    if-eqz p2, :cond_1

    .line 9342
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->dispatchViewRecycled(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9345
    :cond_1
    iput-object v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 9346
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getRecycledViewPool()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->putRecycledView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9347
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 8
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 9350
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v6

    .line 9351
    .local v6, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v6, :cond_4

    .line 9354
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result v7

    .line 9355
    .local v7, "var4":I
    if-ltz v7, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 9356
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, v6

    move v2, v7

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIJ)Z

    .line 9357
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 9359
    .local v0, "var6":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 9360
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 9361
    .local v1, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9362
    .end local v1    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9363
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 9364
    .restart local v1    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9366
    .end local v1    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 9369
    .restart local v1    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9370
    iput-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9372
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 9373
    const/4 v2, 0x1

    .local v2, "var5":Z
    goto :goto_1

    .line 9375
    .end local v2    # "var5":Z
    :cond_2
    const/4 v2, 0x0

    .line 9378
    .restart local v2    # "var5":Z
    :goto_1
    iput-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9379
    .end local v0    # "var6":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .end local v2    # "var5":Z
    nop

    .line 9383
    .end local v7    # "var4":I
    return-void

    .line 9380
    .restart local v7    # "var4":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9352
    .end local v7    # "var4":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 9386
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9387
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 9388
    return-void
.end method

.method clearOldPositions()V
    .locals 3

    .line 9391
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9394
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9395
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearOldPosition()V

    .line 9394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9398
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9400
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 9401
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearOldPosition()V

    .line 9400
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9404
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 9405
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9407
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 9408
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearOldPosition()V

    .line 9407
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9412
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .line 9415
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9416
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 9417
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9420
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "var1"    # I

    .line 9423
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 9424
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9425
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result p1

    .line 9428
    :cond_0
    return p1

    .line 9430
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchViewRecycled(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9435
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecyclerListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 9436
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecyclerListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerListener;->onViewRecycled(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9439
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 9440
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onViewRecycled(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9443
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    if-eqz v0, :cond_2

    .line 9444
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->removeViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9447
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 7
    .param p1, "var1"    # I

    .line 9451
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 9452
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9453
    .local v0, "var2":I
    if-eqz v0, :cond_4

    .line 9454
    const/4 v1, 0x0

    .local v1, "var4":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_1

    .line 9455
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9456
    .local v3, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 9457
    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9458
    return-object v3

    .line 9454
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9462
    .end local v1    # "var4":I
    .end local v3    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9463
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result p1

    .line 9464
    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 9465
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v3

    .line 9467
    .local v3, "var5":J
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_3

    .line 9468
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9469
    .local v1, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    .line 9470
    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9471
    return-object v1

    .line 9467
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9477
    .end local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "var5":J
    :cond_3
    const/4 v1, 0x0

    .line 9478
    .restart local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    return-object v1

    .line 9482
    .end local v0    # "var2":I
    .end local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    const/4 v0, 0x0

    .line 9483
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    return-object v0
.end method

.method getRecycledViewPool()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;
    .locals 1

    .line 9487
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 9488
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    .line 9491
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .line 9495
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 9499
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapOrCachedViewForId(JIZ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 5
    .param p1, "var1"    # J
    .param p3, "var3"    # I
    .param p4, "var4"    # Z

    .line 9503
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 9508
    .local v0, "var5":I
    :goto_0
    if-gez v0, :cond_4

    .line 9509
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    :goto_1
    if-ltz v0, :cond_3

    .line 9510
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9511
    .local v1, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 9512
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 9513
    move-object v2, v1

    .line 9514
    .local v2, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-nez p4, :cond_0

    .line 9515
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9516
    move-object v2, v1

    .line 9519
    :cond_0
    return-object v2

    .line 9522
    .end local v2    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    if-nez p4, :cond_2

    .line 9523
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 9524
    const/4 v2, 0x0

    .line 9525
    .restart local v2    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    return-object v2

    .line 9509
    .end local v2    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 9530
    .end local v1    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    const/4 v1, 0x0

    .line 9531
    .local v1, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_2

    .line 9534
    .end local v1    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9535
    .local v1, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_8

    .line 9536
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_7

    .line 9537
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9538
    move-object v2, v1

    .line 9539
    .restart local v2    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 9540
    move-object v2, v1

    .line 9541
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_5

    .line 9542
    const/4 v3, 0x2

    const/16 v4, 0xe

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 9543
    move-object v2, v1

    goto :goto_2

    .line 9541
    :cond_5
    move-object v1, v2

    goto :goto_2

    .line 9539
    :cond_6
    move-object v1, v2

    .line 9559
    .end local v2    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .local v1, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_2
    return-object v1

    .line 9549
    .local v1, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_7
    if-nez p4, :cond_8

    .line 9550
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9551
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9552
    iget-object v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 9556
    :cond_8
    nop

    .end local v1    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v0, v0, -0x1

    .line 9557
    goto/16 :goto_0
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 9563
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9564
    .local v0, "var3":I
    const/4 v1, 0x0

    .line 9568
    .local v1, "var4":I
    :goto_0
    if-lt v1, v0, :cond_5

    .line 9569
    if-nez p2, :cond_1

    .line 9570
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v2

    .line 9571
    .local v2, "var6":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 9572
    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 9573
    .local v3, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->unhide(Landroid/view/View;)V

    .line 9574
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 9575
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 9579
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v4, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->detachViewFromParent(I)V

    .line 9580
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 9581
    const/16 v4, 0x2020

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9582
    goto/16 :goto_2

    .line 9576
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9586
    .end local v2    # "var6":Landroid/view/View;
    .end local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9588
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 9589
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9590
    .local v2, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 9591
    move-object v3, v2

    .line 9592
    .restart local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-nez p2, :cond_2

    .line 9593
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9594
    move-object v3, v2

    .line 9597
    :cond_2
    return-object v3

    .line 9588
    .end local v2    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9601
    :cond_4
    const/4 v3, 0x0

    .line 9602
    .restart local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_2

    .line 9605
    .end local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9606
    .restart local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    if-ne v2, p1, :cond_7

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    if-nez v2, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_7

    .line 9607
    :cond_6
    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9608
    nop

    .line 9614
    :goto_2
    return-object v3

    .line 9611
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # I

    .line 9618
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # I

    .line 9622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 9626
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 9630
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9632
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9633
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 9634
    .local v2, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    if-eqz v2, :cond_0

    .line 9635
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9632
    .end local v2    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9639
    .end local v1    # "var2":I
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 9642
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9644
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9645
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9646
    .local v2, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    .line 9647
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9648
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 9644
    .end local v2    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9652
    .end local v1    # "var2":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9653
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 9656
    :cond_3
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 9659
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9661
    .local v0, "var3":I
    const/4 v1, 0x0

    .local v1, "var4":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9662
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9663
    .local v2, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 9664
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 9661
    .end local v2    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9668
    .end local v1    # "var4":I
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 9674
    if-ge p1, p2, :cond_0

    .line 9675
    move v0, p1

    .line 9676
    .local v0, "var3":I
    move v1, p2

    .line 9677
    .local v1, "var4":I
    const/4 v2, -0x1

    .local v2, "var5":B
    goto :goto_0

    .line 9679
    .end local v0    # "var3":I
    .end local v1    # "var4":I
    .end local v2    # "var5":B
    :cond_0
    move v0, p2

    .line 9680
    .restart local v0    # "var3":I
    move v1, p1

    .line 9681
    .restart local v1    # "var4":I
    const/4 v2, 0x1

    .line 9684
    .restart local v2    # "var5":B
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9686
    .local v3, "var6":I
    const/4 v4, 0x0

    .local v4, "var7":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 9687
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9688
    .local v5, "var8":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v5, :cond_2

    iget v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v0, :cond_2

    iget v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-gt v6, v1, :cond_2

    .line 9689
    iget v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_1

    .line 9690
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 9692
    :cond_1
    invoke-virtual {v5, v2, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 9686
    .end local v5    # "var8":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9697
    .end local v4    # "var7":I
    :cond_3
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .line 9700
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var4":I
    :goto_0
    if-ltz v0, :cond_2

    .line 9701
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9702
    .local v1, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    .line 9703
    iget v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    add-int v3, p1, p2

    if-lt v2, v3, :cond_0

    .line 9704
    neg-int v2, p2

    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1

    .line 9705
    :cond_0
    iget v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v2, p1, :cond_1

    .line 9706
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9707
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 9700
    .end local v1    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9712
    .end local v0    # "var4":I
    :cond_2
    return-void
.end method

.method onAdapterChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .param p3, "var3"    # Z

    .line 9715
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->clear()V

    .line 9716
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getRecycledViewPool()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Z)V

    .line 9717
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 9720
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 9721
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$5202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 9722
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$5302(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)Z

    .line 9723
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 9724
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9725
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 1

    .line 9728
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var1":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9729
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 9728
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9732
    .end local v0    # "var1":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9733
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$5400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9734
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 9737
    :cond_1
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 9740
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 9741
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9742
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 9745
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 9746
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9747
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9750
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9751
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    .line 9752
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9753
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 9756
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9757
    return-void
.end method

.method recycleViewHolderInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 9760
    const/4 v0, 0x0

    .line 9761
    .local v0, "var2":Z
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_b

    .line 9762
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_a

    .line 9764
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_9

    .line 9767
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$5500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    .line 9769
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onFailedToRecycleView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9770
    const/4 v1, 0x1

    .local v1, "var4":Z
    goto :goto_0

    .line 9772
    .end local v1    # "var4":Z
    :cond_0
    const/4 v1, 0x0

    .line 9778
    .restart local v1    # "var4":Z
    :goto_0
    const/4 v2, 0x0

    .line 9779
    .local v2, "var5":Z
    const/4 v3, 0x0

    .line 9780
    .local v3, "var6":Z
    const/4 v4, 0x0

    .line 9781
    .local v4, "var7":Z
    if-nez v1, :cond_1

    .line 9782
    move v5, v4

    .line 9783
    .local v5, "var8":Z
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRecyclable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 9784
    goto/16 :goto_3

    .line 9788
    .end local v5    # "var8":Z
    :cond_1
    move v1, v3

    .line 9789
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    if-lez v5, :cond_6

    .line 9790
    move v1, v3

    .line 9791
    const/16 v5, 0x20e

    invoke-virtual {p1, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 9792
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9793
    .local v5, "var9":I
    move v6, v5

    .line 9794
    .local v6, "var10":I
    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    if-lt v5, v7, :cond_2

    .line 9795
    move v6, v5

    .line 9796
    if-lez v5, :cond_2

    .line 9797
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 9798
    add-int/lit8 v6, v5, -0x1

    .line 9802
    :cond_2
    move v7, v6

    .line 9803
    .local v7, "var11":I
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$5400()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 9804
    move v7, v6

    .line 9805
    if-lez v6, :cond_5

    .line 9806
    move v7, v6

    .line 9807
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    iget v9, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 9808
    add-int/lit8 v6, v6, -0x1

    .line 9810
    :goto_1
    if-ltz v6, :cond_4

    .line 9811
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget v5, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 9812
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v8, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 9813
    goto :goto_2

    .line 9816
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 9819
    :cond_4
    :goto_2
    add-int/lit8 v7, v6, 0x1

    .line 9824
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9825
    const/4 v1, 0x1

    .line 9829
    .end local v5    # "var9":I
    .end local v6    # "var10":I
    .end local v7    # "var11":I
    :cond_6
    move v2, v1

    .line 9830
    move v5, v4

    .line 9831
    .local v5, "var8":Z
    if-nez v1, :cond_7

    .line 9832
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 9833
    const/4 v5, 0x1

    .line 9834
    move v2, v1

    .line 9838
    .end local v3    # "var6":Z
    .end local v4    # "var7":Z
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v3, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->removeViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9839
    if-nez v2, :cond_8

    if-nez v5, :cond_8

    if-eqz v0, :cond_8

    .line 9840
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 9843
    .end local v1    # "var4":Z
    .end local v2    # "var5":Z
    .end local v5    # "var8":Z
    :cond_8
    nop

    .line 9852
    return-void

    .line 9765
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9763
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tmp detached view should be removed from SeslRecyclerView before it can be recycled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9845
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAttached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9846
    .local v1, "var3":Ljava/lang/StringBuilder;
    iget-object v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 9847
    const/4 v0, 0x1

    .line 9850
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 9855
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9856
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .line 9859
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 9860
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canReuseUpdatedViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9861
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 9862
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 9865
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setScrapContainer(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Z)V

    .line 9866
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9868
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9869
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9872
    :cond_3
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setScrapContainer(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Z)V

    .line 9873
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9876
    :goto_1
    return-void
.end method

.method setRecycledViewPool(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    .line 9879
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 9880
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->detach()V

    .line 9883
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    .line 9884
    if-eqz p1, :cond_1

    .line 9885
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->attach(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V

    .line 9888
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;

    .line 9891
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mViewCacheExtension:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;

    .line 9892
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 9895
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRequestedCacheMax:I

    .line 9896
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->updateViewCacheSize()V

    .line 9897
    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 18
    .param p1, "var1"    # I
    .param p2, "var2"    # Z
    .param p3, "var3"    # J

    .line 9900
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v0, p2

    if-ltz v7, :cond_19

    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v7, v1, :cond_19

    .line 9901
    const/4 v1, 0x0

    .line 9902
    .local v1, "var5":Z
    const/4 v2, 0x0

    .line 9903
    .local v2, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9904
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 9905
    if-eqz v2, :cond_0

    .line 9906
    const/4 v1, 0x1

    goto :goto_0

    .line 9908
    :cond_0
    const/4 v1, 0x0

    .line 9912
    :cond_1
    :goto_0
    move-object v3, v2

    .line 9913
    .local v3, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    move v4, v1

    .line 9914
    .local v4, "var8":Z
    const/4 v5, 0x0

    if-nez v2, :cond_7

    .line 9915
    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 9916
    move-object v3, v2

    .line 9917
    move v4, v1

    .line 9918
    if-eqz v2, :cond_6

    .line 9919
    invoke-virtual {v6, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 9920
    if-nez v0, :cond_4

    .line 9921
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 9922
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isScrap()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9923
    iget-object v8, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v9, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8, v9, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9924
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    .line 9925
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 9926
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 9929
    :cond_3
    :goto_1
    invoke-virtual {v6, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9932
    :cond_4
    const/4 v3, 0x0

    .line 9933
    move v4, v1

    move v8, v4

    goto :goto_2

    .line 9935
    :cond_5
    const/4 v4, 0x1

    .line 9936
    move-object v3, v2

    move v8, v4

    goto :goto_2

    .line 9918
    :cond_6
    move v8, v4

    goto :goto_2

    .line 9914
    :cond_7
    move v8, v4

    .line 9941
    .end local v4    # "var8":Z
    .local v8, "var8":Z
    :goto_2
    move-object v2, v3

    .line 9942
    move v1, v8

    .line 9943
    if-nez v3, :cond_11

    .line 9944
    iget-object v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v4, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result v4

    .line 9945
    .local v4, "var9":I
    if-ltz v4, :cond_10

    iget-object v9, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v4, v9, :cond_10

    .line 9949
    iget-object v9, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v9, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    .line 9950
    .local v9, "var10":I
    move-object v2, v3

    .line 9951
    move v1, v8

    .line 9952
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 9953
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v10, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 9954
    move-object v2, v3

    .line 9955
    move v1, v8

    .line 9956
    if-eqz v3, :cond_8

    .line 9957
    iput v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 9958
    const/4 v1, 0x1

    .line 9959
    move-object v2, v3

    .line 9963
    :cond_8
    move-object v3, v2

    .line 9964
    if-nez v2, :cond_b

    .line 9965
    move-object v3, v2

    .line 9966
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mViewCacheExtension:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;

    if-eqz v10, :cond_b

    .line 9967
    invoke-virtual {v10, v6, v7, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v10

    .line 9968
    .local v10, "var11":Landroid/view/View;
    move-object v3, v2

    .line 9969
    if-eqz v10, :cond_b

    .line 9970
    iget-object v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v11, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 9971
    if-eqz v2, :cond_a

    .line 9975
    move-object v3, v2

    .line 9976
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_3

    .line 9977
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 9972
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 9983
    .end local v10    # "var11":Landroid/view/View;
    :cond_b
    :goto_3
    move-object v2, v3

    .line 9984
    if-nez v3, :cond_c

    .line 9985
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getRecycledViewPool()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 9986
    move-object v2, v3

    .line 9987
    if-eqz v3, :cond_c

    .line 9988
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->resetInternal()V

    .line 9989
    move-object v2, v3

    .line 9990
    sget-boolean v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v10, :cond_c

    .line 9991
    invoke-direct {v6, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->invalidateDisplayListInt(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 9992
    move-object v2, v3

    .line 9997
    :cond_c
    if-nez v2, :cond_f

    .line 9998
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getNanoTime()J

    move-result-wide v16

    .line 9999
    .local v16, "var12":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, p3, v10

    if-eqz v10, :cond_d

    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    move v11, v9

    move-wide/from16 v12, v16

    move-wide/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v10

    if-nez v10, :cond_d

    .line 10000
    const/4 v2, 0x0

    .line 10001
    return-object v2

    .line 10004
    :cond_d
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    iget-object v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v10, v11, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 10005
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$5400()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 10006
    iget-object v10, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v10

    .line 10007
    .local v10, "var17":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    if-eqz v10, :cond_e

    .line 10008
    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v11, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 10012
    .end local v10    # "var17":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_e
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getNanoTime()J

    move-result-wide v10

    .line 10013
    .local v10, "var14":J
    iget-object v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRecyclerPool:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    sub-long v13, v10, v16

    invoke-virtual {v12, v9, v13, v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    goto :goto_4

    .line 9997
    .end local v10    # "var14":J
    .end local v16    # "var12":J
    :cond_f
    move v9, v1

    move-object v10, v2

    move-object v11, v3

    goto :goto_4

    .line 9946
    .end local v9    # "var10":I
    :cond_10
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inconsistency detected. Invalid item position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(offset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ").state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v10, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 9943
    .end local v4    # "var9":I
    :cond_11
    move v9, v1

    move-object v10, v2

    move-object v11, v3

    .line 10017
    .end local v1    # "var5":Z
    .end local v2    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v3    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .local v9, "var5":Z
    .local v10, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .local v11, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_4
    if-eqz v9, :cond_12

    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x2000

    invoke-virtual {v10, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 10018
    invoke-virtual {v10, v5, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 10019
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v1, :cond_12

    .line 10020
    invoke-static {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I

    move-result v1

    .line 10021
    .local v1, "var16":I
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    or-int/lit16 v4, v1, 0x1000

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v3, v10, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v2

    .line 10022
    .local v2, "var18":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v10, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 10026
    .end local v1    # "var16":I
    .end local v2    # "var18":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_12
    const/4 v12, 0x0

    .line 10027
    .end local p2    # "var2":Z
    .local v12, "var2":Z
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10028
    iput v7, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_5

    .line 10029
    :cond_13
    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 10030
    :cond_14
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->findPositionOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIJ)Z

    move-result v12

    .line 10033
    :cond_15
    :goto_5
    iget-object v0, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10035
    .local v0, "var19":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_16

    .line 10036
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 10037
    .local v1, "var20":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v2, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 10038
    .end local v1    # "var20":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :cond_16
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 10039
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 10040
    .restart local v1    # "var20":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v2, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 10042
    .end local v1    # "var20":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :cond_17
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 10045
    .restart local v1    # "var20":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    :goto_6
    iput-object v10, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 10046
    if-eqz v9, :cond_18

    if-eqz v12, :cond_18

    .line 10047
    const/4 v2, 0x1

    .end local v12    # "var2":Z
    .local v2, "var2":Z
    goto :goto_7

    .line 10049
    .end local v2    # "var2":Z
    .restart local v12    # "var2":Z
    :cond_18
    const/4 v2, 0x0

    .line 10052
    .end local v12    # "var2":Z
    .restart local v2    # "var2":Z
    :goto_7
    iput-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 10053
    return-object v10

    .line 10055
    .end local v0    # "var19":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "var20":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .end local v2    # "var2":Z
    .end local v8    # "var8":Z
    .end local v9    # "var5":Z
    .end local v10    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v11    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .restart local p2    # "var2":Z
    :cond_19
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid item position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Item count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method unscrapView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 10060
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$5300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10061
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10063
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10066
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$5202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 10067
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$5302(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)Z

    .line 10068
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 10069
    return-void
.end method

.method updateViewCacheSize()V
    .locals 3

    .line 10073
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 10074
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .local v0, "var1":I
    goto :goto_0

    .line 10076
    .end local v0    # "var1":I
    :cond_0
    const/4 v0, 0x0

    .line 10079
    .restart local v0    # "var1":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    .line 10081
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .end local v0    # "var1":I
    .local v1, "var1":I
    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mViewCacheMax:I

    if-le v0, v2, :cond_1

    .line 10082
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 10081
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 10085
    :cond_1
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 10088
    const/4 v0, 0x1

    .line 10090
    .local v0, "var2":Z
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10091
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v1

    .local v1, "var3":Z
    goto :goto_0

    .line 10093
    .end local v1    # "var3":Z
    :cond_0
    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-ltz v1, :cond_3

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 10097
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    iget v2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 10098
    const/4 v1, 0x0

    .restart local v1    # "var3":Z
    goto :goto_0

    .line 10100
    .end local v1    # "var3":Z
    :cond_1
    move v1, v0

    .line 10101
    .restart local v1    # "var3":Z
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10102
    move v1, v0

    .line 10103
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    iget v5, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 10104
    const/4 v1, 0x0

    .line 10110
    :cond_2
    :goto_0
    return v1

    .line 10094
    .end local v1    # "var3":Z
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method viewRangeUpdate(II)V
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 10114
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var3":I
    :goto_0
    if-ltz v0, :cond_1

    .line 10115
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 10116
    .local v1, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 10117
    iget v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 10118
    .local v2, "var5":I
    if-lt v2, p1, :cond_0

    add-int v3, p1, p2

    if-ge v2, v3, :cond_0

    .line 10119
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 10120
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 10114
    .end local v1    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v2    # "var5":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10125
    .end local v0    # "var3":I
    :cond_1
    return-void
.end method
