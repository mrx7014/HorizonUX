.class public abstract Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7397
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/Rect;
    .param p2, "var2"    # I
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7401
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 7402
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/Rect;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p4, "var4"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7405
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 7406
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7410
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7413
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 7414
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7418
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7421
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 7422
    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 7425
    return-void
.end method
