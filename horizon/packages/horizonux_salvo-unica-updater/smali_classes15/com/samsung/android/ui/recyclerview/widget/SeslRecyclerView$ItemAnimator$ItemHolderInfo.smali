.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7360
    return-void
.end method


# virtual methods
.method public setFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "var2"    # I

    .line 7367
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7368
    .local v0, "var3":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 7369
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 7370
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 7371
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 7372
    return-object p0
.end method
