.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 7474
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # I

    .line 7476
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 7480
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 7484
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 7485
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 7489
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 7490
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .line 7494
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    return-object v0
.end method

.method public getParentEnd()I
    .locals 2

    .line 7498
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParentStart()I
    .locals 1

    .line 7502
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$2;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method
