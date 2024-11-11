.class public Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mFullSpan:Z

.field mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1820
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(II)V

    .line 1821
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1816
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1817
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1828
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1829
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1824
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1825
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 1832
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)V

    .line 1833
    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .locals 1

    .line 1844
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    if-nez v0, :cond_0

    .line 1845
    const/4 v0, -0x1

    return v0

    .line 1847
    :cond_0
    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    return v0
.end method

.method public isFullSpan()Z
    .locals 1

    .line 1840
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return v0
.end method

.method public setFullSpan(Z)V
    .locals 0
    .param p1, "fullSpan"    # Z

    .line 1836
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 1837
    return-void
.end method
