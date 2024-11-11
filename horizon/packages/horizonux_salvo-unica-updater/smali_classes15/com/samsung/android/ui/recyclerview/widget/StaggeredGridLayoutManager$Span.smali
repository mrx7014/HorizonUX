.class Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;
    .param p2, "index"    # I

    .line 1859
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 1854
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 1855
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 1856
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 1860
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 1861
    return-void
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 1940
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 1941
    .local v0, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1942
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 1944
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1945
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 1947
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1948
    :cond_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 1950
    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 3
    .param p1, "reverseLayout"    # Z
    .param p2, "offset"    # I

    .line 1954
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    .line 1955
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .local v1, "reference":I
    goto :goto_0

    .line 1957
    .end local v1    # "reference":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1959
    .restart local v1    # "reference":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 1960
    if-ne v1, v0, :cond_1

    .line 1961
    return-void

    .line 1963
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 1964
    :cond_3
    return-void

    .line 1966
    :cond_4
    if-eq p2, v0, :cond_5

    .line 1967
    add-int/2addr v1, p2

    .line 1969
    :cond_5
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 1970
    return-void
.end method

.method calculateCachedEnd()V
    .locals 5

    .line 1907
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1908
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 1909
    .local v1, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 1910
    iget-boolean v3, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    .line 1911
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v3

    .line 1912
    .local v3, "fsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-ne v4, v2, :cond_0

    .line 1913
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 1916
    .end local v3    # "fsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 5

    .line 1875
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1876
    .local v0, "startView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 1877
    .local v1, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 1878
    iget-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_0

    .line 1879
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    .line 1880
    .local v2, "fsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1881
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 1884
    .end local v2    # "fsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method clear()V
    .locals 1

    .line 1973
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1974
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 1975
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 1976
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 2040
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findFirstPartiallyVisibleItemPosition()I
    .locals 3

    .line 2036
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 2032
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    .line 2052
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findLastPartiallyVisibleItemPosition()I
    .locals 3

    .line 2048
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .line 2044
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I
    .locals 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptCompletelyVisible"    # Z
    .param p5, "acceptEndPointInclusion"    # Z

    .line 2056
    move-object v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 2057
    .local v2, "start":I
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 2058
    .local v3, "end":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    move v6, p1

    if-le v1, v6, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v4

    .line 2059
    .local v7, "next":I
    :goto_0
    move v8, p1

    .local v8, "i":I
    :goto_1
    if-eq v8, v1, :cond_9

    .line 2060
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2061
    .local v9, "child":Landroid/view/View;
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v10, v10, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10, v9}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    .line 2062
    .local v10, "childStart":I
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11, v9}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 2063
    .local v11, "childEnd":I
    const/4 v12, 0x0

    if-eqz p5, :cond_1

    if-gt v10, v3, :cond_2

    goto :goto_2

    :cond_1
    if-ge v10, v3, :cond_2

    :goto_2
    move v13, v5

    goto :goto_3

    :cond_2
    move v13, v12

    .line 2064
    .local v13, "childStartInclusion":Z
    :goto_3
    if-eqz p5, :cond_3

    if-lt v11, v2, :cond_4

    goto :goto_4

    :cond_3
    if-le v11, v2, :cond_4

    :goto_4
    move v12, v5

    .line 2065
    .local v12, "childEndInclusion":Z
    :cond_4
    if-eqz v13, :cond_8

    if-eqz v12, :cond_8

    .line 2066
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 2067
    if-lt v10, v2, :cond_8

    if-gt v11, v3, :cond_8

    .line 2068
    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v9}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    return v4

    .line 2070
    :cond_5
    if-eqz p4, :cond_6

    .line 2071
    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v9}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    return v4

    .line 2072
    :cond_6
    if-lt v10, v2, :cond_7

    if-le v11, v3, :cond_8

    .line 2073
    :cond_7
    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v9}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    return v4

    .line 2059
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childStart":I
    .end local v11    # "childEnd":I
    .end local v12    # "childEndInclusion":Z
    .end local v13    # "childStartInclusion":Z
    :cond_8
    add-int/2addr v8, v7

    goto :goto_1

    .line 2077
    .end local v8    # "i":I
    :cond_9
    return v4
.end method

.method findOnePartiallyVisibleChild(IIZ)I
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "acceptEndPointInclusion"    # Z

    .line 2085
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v0

    return v0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z

    .line 2081
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v0

    return v0
.end method

.method public getDeletedSize()I
    .locals 1

    .line 2015
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .locals 2

    .line 1919
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1920
    return v0

    .line 1922
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 1923
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0
.end method

.method getEndLine(I)I
    .locals 2
    .param p1, "def"    # I

    .line 1895
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1896
    return v0

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1899
    .local v0, "size":I
    if-nez v0, :cond_1

    .line 1900
    return p1

    .line 1902
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 1903
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v1
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 5
    .param p1, "referenceChildPosition"    # I
    .param p2, "layoutDir"    # I

    .line 2089
    const/4 v0, 0x0

    .line 2090
    .local v0, "candidate":Landroid/view/View;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 2091
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2092
    .local v1, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2093
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2094
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_1

    .line 2095
    goto :goto_1

    .line 2097
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2098
    move-object v0, v3

    .line 2092
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2103
    .end local v1    # "limit":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    goto :goto_3

    .line 2104
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 2105
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2106
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-gt v3, p1, :cond_5

    .line 2107
    goto :goto_3

    .line 2109
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2110
    move-object v0, v2

    .line 2104
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2116
    .end local v1    # "i":I
    :cond_6
    :goto_3
    return-object v0
.end method

.method getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2019
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getStartLine()I
    .locals 2

    .line 1887
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1888
    return v0

    .line 1890
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 1891
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method getStartLine(I)I
    .locals 2
    .param p1, "def"    # I

    .line 1864
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1865
    return v0

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1868
    return p1

    .line 1870
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 1871
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method invalidateCache()V
    .locals 1

    .line 1979
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 1980
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 1981
    return-void
.end method

.method onOffset(I)V
    .locals 2
    .param p1, "dt"    # I

    .line 2023
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2024
    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2026
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_1

    .line 2027
    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2029
    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 5

    .line 1988
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1989
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1990
    .local v1, "end":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 1991
    .local v2, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1992
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1993
    :cond_0
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 1995
    :cond_1
    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 1996
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 1998
    :cond_2
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 1999
    return-void
.end method

.method popStart()V
    .locals 5

    .line 2002
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2003
    .local v0, "start":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2004
    .local v1, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2005
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_0

    .line 2006
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2008
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2009
    :cond_1
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2011
    :cond_2
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2012
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 1927
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 1928
    .local v0, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1929
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1930
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 1931
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1932
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 1934
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1935
    :cond_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 1937
    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 0
    .param p1, "line"    # I

    .line 1984
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 1985
    return-void
.end method
