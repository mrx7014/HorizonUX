.class public Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
.source "SeslLinearLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field public static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field public static final NO_POSITION:I = -0x1

.field public static final TAG:Ljava/lang/String; = "SeslLinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field public final mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

.field public mInitialPrefetchItemCount:I

.field public mLastStackFromEnd:Z

.field public final mLayoutChunkResult:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;

.field public mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

.field public mOrientation:I

.field public mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

.field public mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

.field public mPendingScrollPosition:I

.field public mPendingScrollPositionOffset:I

.field public mRecycleChildrenOnDetach:Z

.field public mReverseLayout:Z

.field public mShouldReverseLayout:Z

.field public mSmoothScrollbarEnabled:Z

.field public mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 46
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutChunkResult:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 52
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 57
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    .line 64
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->setOrientation(I)V

    .line 65
    invoke-virtual {p0, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->setReverseLayout(Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 46
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutChunkResult:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 52
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 57
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    .line 69
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 70
    .local v0, "properties":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->setOrientation(I)V

    .line 71
    iget-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->setReverseLayout(Z)V

    .line 72
    iget-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->setStackFromEnd(Z)V

    .line 73
    return-void
.end method

.method private computeScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 742
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 743
    const/4 v0, 0x0

    return v0

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 746
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 747
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 748
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 746
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private computeScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 8
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 731
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 732
    const/4 v0, 0x0

    return v0

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 735
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 736
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 737
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    .line 735
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/ui/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;ZZ)I

    move-result v0

    return v0
.end method

.method private computeScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 753
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 754
    const/4 v0, 0x0

    return v0

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 757
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 758
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 759
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 757
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1204
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1153
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1137
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1138
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1129
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1132
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1208
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 7
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1157
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1190
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1191
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1193
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1197
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1198
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1200
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1145
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findLastReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private findReferenceChildClosestToStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1149
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findLastReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private fixLayoutEndGap(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 578
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    .line 579
    .local v0, "gap":I
    const/4 v1, 0x0

    .line 580
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 581
    neg-int v2, v0

    invoke-virtual {p0, v2, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    .line 585
    add-int/2addr p1, v1

    .line 586
    if-eqz p4, :cond_0

    .line 587
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v0, v2, p1

    .line 588
    if-lez v0, :cond_0

    .line 589
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 590
    add-int v2, v0, v1

    return v2

    .line 593
    :cond_0
    return v1

    .line 583
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private fixLayoutStartGap(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 597
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    .line 598
    .local v0, "gap":I
    const/4 v1, 0x0

    .line 599
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 600
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    .line 604
    add-int/2addr p1, v1

    .line 605
    if-eqz p4, :cond_0

    .line 606
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v0, p1, v2

    .line 607
    if-lez v0, :cond_0

    .line 608
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 609
    sub-int v2, v1, v0

    return v2

    .line 612
    :cond_0
    return v1

    .line 602
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1125
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1121
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;II)V
    .locals 16
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_0

    move/from16 v11, p3

    move/from16 v12, p4

    goto/16 :goto_5

    .line 425
    :cond_0
    const/4 v3, 0x0

    .local v3, "scrapExtraStart":I
    const/4 v4, 0x0

    .line 426
    .local v4, "scrapExtraEnd":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v5

    .line 427
    .local v5, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 428
    .local v6, "scrapSize":I
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 429
    .local v8, "firstChildPos":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_5

    .line 430
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 431
    .local v10, "scrap":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 432
    goto :goto_2

    .line 434
    :cond_1
    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    .line 435
    .local v11, "position":I
    const/4 v12, 0x1

    if-ge v11, v8, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    move v13, v7

    :goto_1
    iget-boolean v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v15, -0x1

    if-eq v13, v14, :cond_3

    move v12, v15

    .line 436
    .local v12, "direction":I
    :cond_3
    if-ne v12, v15, :cond_4

    .line 437
    iget-object v13, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iget-object v14, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v3, v13

    goto :goto_2

    .line 439
    :cond_4
    iget-object v13, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iget-object v14, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v4, v13

    .line 429
    .end local v10    # "scrap":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v11    # "position":I
    .end local v12    # "direction":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 446
    .end local v9    # "i":I
    :cond_5
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput-object v5, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 447
    if-lez v3, :cond_6

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v9

    .line 449
    .local v9, "anchor":Landroid/view/View;
    invoke-virtual {v0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v11, p3

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 450
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v3, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 451
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v7, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 452
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 453
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    goto :goto_3

    .line 447
    .end local v9    # "anchor":Landroid/view/View;
    :cond_6
    move/from16 v11, p3

    .line 456
    :goto_3
    if-lez v4, :cond_7

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v9

    .line 458
    .restart local v9    # "anchor":Landroid/view/View;
    invoke-virtual {v0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v12, p4

    invoke-direct {v0, v10, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 459
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v4, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 460
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v7, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 461
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 462
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    goto :goto_4

    .line 456
    .end local v9    # "anchor":Landroid/view/View;
    :cond_7
    move/from16 v12, p4

    .line 464
    :goto_4
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 465
    return-void

    .line 422
    .end local v3    # "scrapExtraStart":I
    .end local v4    # "scrapExtraEnd":I
    .end local v5    # "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    .end local v6    # "scrapSize":I
    .end local v8    # "firstChildPos":I
    :cond_8
    move/from16 v11, p3

    move/from16 v12, p4

    .line 423
    :goto_5
    return-void
.end method

.method private logChildren()V
    .locals 5

    .line 1305
    const-string v0, "SeslLinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1307
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1308
    .local v2, "child":Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1310
    .end local v1    # "i":I
    :cond_0
    const-string v1, "=============="

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    return-void
.end method

.method private recycleByLayoutState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    .line 969
    iget-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 972
    :cond_0
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 973
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->recycleViewsFromEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_0

    .line 975
    :cond_1
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->recycleViewsFromStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V

    .line 977
    :goto_0
    return-void

    .line 970
    :cond_2
    :goto_1
    return-void
.end method

.method private recycleChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 895
    if-ne p2, p3, :cond_0

    .line 896
    return-void

    .line 901
    :cond_0
    if-le p3, p2, :cond_2

    .line 902
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 903
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->removeAndRecycleViewAt(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 902
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 906
    :cond_2
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_3

    .line 907
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->removeAndRecycleViewAt(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 906
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 910
    .end local v0    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private recycleViewsFromEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "dt"    # I

    .line 941
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    .line 942
    .local v0, "childCount":I
    if-gez p2, :cond_0

    .line 946
    return-void

    .line 948
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 949
    .local v1, "limit":I
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_4

    .line 950
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 951
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 952
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_1

    goto :goto_1

    .line 950
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 953
    .restart local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->recycleChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;II)V

    .line 954
    return-void

    .line 950
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    goto :goto_4

    .line 958
    :cond_4
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 959
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 960
    .restart local v3    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_6

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_5

    goto :goto_3

    .line 958
    .end local v3    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 961
    .restart local v3    # "child":Landroid/view/View;
    :cond_6
    :goto_3
    add-int/lit8 v4, v0, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->recycleChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;II)V

    .line 962
    return-void

    .line 966
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    :goto_4
    return-void
.end method

.method private recycleViewsFromStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "dt"    # I

    .line 913
    if-gez p2, :cond_0

    .line 917
    return-void

    .line 919
    :cond_0
    move v0, p2

    .line 920
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    .line 921
    .local v1, "childCount":I
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_4

    .line 922
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 923
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 924
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_1

    goto :goto_1

    .line 922
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 925
    .restart local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->recycleChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;II)V

    .line 926
    return-void

    .line 922
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    goto :goto_4

    .line 930
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_7

    .line 931
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 932
    .restart local v3    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_6

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_5

    goto :goto_3

    .line 930
    .end local v3    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 933
    .restart local v3    # "child":Landroid/view/View;
    :cond_6
    :goto_3
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->recycleChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;II)V

    .line 934
    return-void

    .line 938
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    :goto_4
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 191
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 192
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    .line 196
    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)Z
    .locals 6
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    return v1

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, "focused":Landroid/view/View;
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    .line 495
    return v2

    .line 497
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-eq v3, v4, :cond_2

    .line 498
    return v1

    .line 500
    :cond_2
    iget-boolean v3, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findReferenceChildClosestToStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 501
    .local v3, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_8

    .line 502
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 503
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 504
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_5

    :cond_4
    move v1, v2

    .line 505
    .local v1, "notVisible":Z
    :cond_5
    if-eqz v1, :cond_7

    .line 506
    iget-boolean v4, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    :goto_1
    iput v4, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 509
    .end local v1    # "notVisible":Z
    :cond_7
    return v2

    .line 511
    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 515
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    .line 518
    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_5

    .line 527
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 528
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 530
    iget-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    iget v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    iget v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 535
    :goto_0
    return v2

    .line 538
    :cond_3
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v0, v3, :cond_c

    .line 539
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_8

    .line 541
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 542
    .local v3, "childSize":I
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 543
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 544
    return v2

    .line 546
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    .line 547
    .local v4, "startGap":I
    if-gez v4, :cond_5

    .line 548
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 549
    iput-boolean v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 550
    return v2

    .line 552
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    .line 553
    .local v1, "endGap":I
    if-gez v1, :cond_6

    .line 554
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 555
    iput-boolean v2, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 556
    return v2

    .line 558
    :cond_6
    iget-boolean v5, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    :goto_1
    iput v5, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 559
    .end local v1    # "endGap":I
    .end local v3    # "childSize":I
    .end local v4    # "startGap":I
    goto :goto_3

    .line 560
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 561
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 562
    .local v3, "pos":I
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    if-ge v4, v3, :cond_9

    move v4, v2

    goto :goto_2

    :cond_9
    move v4, v1

    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v4, v5, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 564
    .end local v3    # "pos":I
    :cond_b
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 566
    :goto_3
    return v2

    .line 568
    .end local v0    # "child":Landroid/view/View;
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 569
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_d

    .line 570
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4

    .line 572
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 574
    :goto_4
    return v2

    .line 519
    :cond_e
    :goto_5
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 520
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 524
    return v1

    .line 516
    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 468
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateAnchorFromPendingData(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    return-void

    .line 475
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateAnchorFromChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    return-void

    .line 484
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 485
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 486
    return-void
.end method

.method private updateLayoutState(IIZLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 6
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 772
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mInfinite:Z

    .line 773
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getExtraLayoutSpace(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 774
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 776
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 777
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 778
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 779
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 780
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 781
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 782
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 783
    .end local v2    # "child":Landroid/view/View;
    .local v0, "scrollingOffset":I
    goto :goto_1

    .line 784
    .end local v0    # "scrollingOffset":I
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 785
    .restart local v2    # "child":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 786
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    iput v0, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 787
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 788
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 789
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 791
    .end local v2    # "child":Landroid/view/View;
    .restart local v0    # "scrollingOffset":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput p2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 792
    if-eqz p3, :cond_3

    .line 793
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 795
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 796
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .line 620
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 621
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 622
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 623
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 624
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 625
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 626
    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 616
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 617
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .line 633
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 634
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 635
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    .line 636
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 637
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput p2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 638
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 639
    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    .line 629
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 630
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 890
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 892
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 151
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 156
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 849
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 850
    .local v0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_2

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 855
    const/4 v1, 0x1

    if-lez v0, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 856
    .local v2, "layoutDirection":I
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 857
    .local v3, "absDy":I
    invoke-direct {p0, v2, v3, v1, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutState(IIZLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 858
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, v1, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->collectPrefetchPositionsForLayoutState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 859
    return-void

    .line 851
    .end local v2    # "layoutDirection":I
    .end local v3    # "absDy":I
    :cond_3
    :goto_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 7
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 813
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 815
    .local v0, "fromEnd":Z
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    iget v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .local v3, "anchorPos":I
    goto :goto_1

    .line 817
    .end local v0    # "fromEnd":Z
    .end local v3    # "anchorPos":I
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 818
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    .line 819
    .restart local v0    # "fromEnd":Z
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v2, :cond_2

    .line 820
    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .restart local v3    # "anchorPos":I
    :goto_0
    goto :goto_1

    .line 822
    .end local v3    # "anchorPos":I
    :cond_2
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 826
    .restart local v3    # "anchorPos":I
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 827
    .local v2, "direction":I
    :goto_2
    move v4, v3

    .line 828
    .local v4, "targetPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v5, v6, :cond_4

    .line 829
    if-ltz v4, :cond_4

    if-ge v4, p1, :cond_4

    .line 830
    invoke-interface {p2, v4, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 834
    add-int/2addr v4, v2

    .line 828
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 836
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p2, "layoutState"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 803
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 804
    .local v0, "pos":I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 805
    const/4 v1, 0x0

    iget v2, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 807
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 712
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->computeScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 702
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->computeScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 722
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->computeScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5
    .param p1, "targetPosition"    # I

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 251
    .local v1, "firstChildPos":I
    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    const/4 v2, -0x1

    :cond_2
    move v0, v2

    .line 252
    .local v0, "direction":I
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 253
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 255
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public computeVerticalScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 717
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->computeScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 707
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->computeScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 727
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->computeScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .line 1087
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1116
    return v1

    .line 1107
    :sswitch_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1111
    :sswitch_1
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1105
    :sswitch_2
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1109
    :sswitch_3
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 1097
    :sswitch_4
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_4

    .line 1098
    return v2

    .line 1099
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1100
    return v0

    .line 1102
    :cond_5
    return v2

    .line 1089
    :sswitch_5
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_6

    .line 1090
    return v0

    .line 1091
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1092
    return v2

    .line 1094
    :cond_7
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method createLayoutState()Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;
    .locals 1

    .line 652
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->createLayoutState()Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    .line 649
    :cond_0
    return-void
.end method

.method fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I
    .locals 7
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .line 980
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 981
    .local v0, "start":I
    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 982
    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_0

    .line 983
    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 985
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->recycleByLayoutState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;)V

    .line 987
    :cond_1
    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 988
    .local v1, "remainingSpace":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutChunkResult:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;

    .line 989
    .local v3, "layoutChunkResult":Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;
    :cond_2
    iget-boolean v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->hasMore(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 990
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 991
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->layoutChunk(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;)V

    .line 992
    iget-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_4

    .line 993
    goto :goto_0

    .line 995
    :cond_4
    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 996
    iget-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_5

    invoke-virtual {p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_6

    .line 997
    :cond_5
    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 998
    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1001
    :cond_6
    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_8

    .line 1002
    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1003
    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_7

    .line 1004
    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1006
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->recycleByLayoutState(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;)V

    .line 1008
    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    .line 1015
    :cond_9
    :goto_0
    iget v2, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v2, v0, v2

    return v2
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 1217
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1218
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 1212
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1213
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    .line 1227
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1228
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .line 1222
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1223
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1247
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1248
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1249
    .local v0, "next":I
    :goto_0
    if-nez v0, :cond_2

    .line 1250
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 1252
    :cond_2
    const/4 v1, 0x0

    .line 1253
    .local v1, "preferredBoundsFlag":I
    const/4 v2, 0x0

    .line 1254
    .local v2, "acceptableBoundsFlag":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1255
    const/16 v1, 0x4104

    .line 1256
    const/16 v2, 0x4004

    goto :goto_1

    .line 1258
    :cond_3
    const/16 v1, 0x1041

    .line 1259
    const/16 v2, 0x1001

    .line 1261
    :goto_1
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mHorizontalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mVerticalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    :goto_2
    invoke-virtual {v3, p1, p2, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .line 1232
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1233
    const/4 v0, 0x0

    .line 1234
    .local v0, "preferredBoundsFlag":I
    const/4 v1, 0x0

    .line 1235
    .local v1, "acceptableBoundsFlag":I
    if-eqz p3, :cond_0

    .line 1236
    const/16 v0, 0x6003

    goto :goto_0

    .line 1238
    :cond_0
    const/16 v0, 0x140

    .line 1240
    :goto_0
    if-eqz p4, :cond_1

    .line 1241
    const/16 v1, 0x140

    .line 1243
    :cond_1
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mHorizontalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mVerticalBoundCheck:Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;

    :goto_1
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method findReferenceChild(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;III)Landroid/view/View;
    .locals 9
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .line 1162
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1163
    const/4 v0, 0x0

    .line 1164
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v1, 0x0

    .line 1165
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 1166
    .local v2, "boundsStart":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1167
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 1168
    .local v4, "diff":I
    :goto_0
    move v5, p3

    .local v5, "i":I
    :goto_1
    if-eq v5, p4, :cond_5

    .line 1169
    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1170
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 1171
    .local v7, "position":I
    if-ltz v7, :cond_4

    if-ge v7, p5, :cond_4

    .line 1172
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1173
    if-nez v0, :cond_4

    .line 1174
    move-object v0, v6

    goto :goto_3

    .line 1176
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8, v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v3, :cond_3

    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 1177
    invoke-virtual {v8, v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v2, :cond_2

    goto :goto_2

    .line 1182
    :cond_2
    return-object v6

    .line 1178
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 1179
    move-object v1, v6

    .line 1168
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    :cond_4
    :goto_3
    add-int/2addr v5, v4

    goto :goto_1

    .line 1186
    .end local v5    # "i":I
    :cond_5
    if-eqz v1, :cond_6

    move-object v5, v1

    goto :goto_4

    :cond_6
    move-object v5, v0

    :goto_4
    return-object v5
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    .line 214
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 215
    const/4 v1, 0x0

    return-object v1

    .line 217
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 218
    .local v1, "firstChild":I
    sub-int v2, p1, v1

    .line 219
    .local v2, "viewPosition":I
    if-ltz v2, :cond_1

    if-ge v2, v0, :cond_1

    .line 220
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 221
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 222
    return-object v3

    .line 225
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public generateDefaultLayoutParams()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .locals 2

    .line 82
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 229
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    return v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;)V
    .locals 17
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "layoutState"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;
    .param p4, "result"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;

    .line 1019
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->next(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)Landroid/view/View;

    move-result-object v10

    .line 1020
    .local v10, "view":Landroid/view/View;
    const/4 v11, 0x1

    if-nez v10, :cond_0

    .line 1024
    iput-boolean v11, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1025
    return-void

    .line 1027
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 1028
    .local v12, "params":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1029
    iget-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    move v3, v11

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1030
    invoke-virtual {v6, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1032
    :cond_2
    invoke-virtual {v6, v10, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1035
    :cond_3
    iget-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    move v3, v11

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1036
    invoke-virtual {v6, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1038
    :cond_5
    invoke-virtual {v6, v10, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1041
    :goto_2
    invoke-virtual {v6, v10, v2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1042
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1044
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne v0, v11, :cond_8

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1046
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1047
    .local v0, "right":I
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v10}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .local v2, "left":I
    goto :goto_3

    .line 1049
    .end local v0    # "right":I
    .end local v2    # "left":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1050
    .restart local v2    # "left":I
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1052
    .restart local v0    # "right":I
    :goto_3
    iget v3, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    .line 1053
    iget v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1054
    .local v1, "bottom":I
    iget v3, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    .local v3, "top":I
    goto :goto_4

    .line 1056
    .end local v1    # "bottom":I
    .end local v3    # "top":I
    :cond_7
    iget v3, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1057
    .restart local v3    # "top":I
    iget v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v4

    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    .restart local v1    # "bottom":I
    goto :goto_4

    .line 1060
    .end local v0    # "right":I
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPaddingTop()I

    move-result v3

    .line 1061
    .restart local v3    # "top":I
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v10}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1063
    .local v0, "bottom":I
    iget v2, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v2, v1, :cond_9

    .line 1064
    iget v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1065
    .local v1, "right":I
    iget v2, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v2, v4

    move v14, v0

    move v13, v1

    move v15, v2

    move/from16 v16, v3

    .restart local v2    # "left":I
    goto :goto_4

    .line 1067
    .end local v1    # "right":I
    .end local v2    # "left":I
    :cond_9
    iget v2, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 1068
    .restart local v2    # "left":I
    iget v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v4

    move v14, v0

    move v13, v1

    move v15, v2

    move/from16 v16, v3

    .line 1071
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .local v13, "right":I
    .local v14, "bottom":I
    .local v15, "left":I
    .local v16, "top":I
    :goto_4
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v15

    move/from16 v3, v16

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1075
    invoke-virtual {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1076
    :cond_a
    iput-boolean v11, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1078
    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1079
    return-void
.end method

.method onAnchorReady(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;I)V
    .locals 0
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;
    .param p4, "i"    # I

    .line 419
    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 95
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 98
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->clear()V

    .line 100
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p4, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1266
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1267
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1268
    return-object v1

    .line 1271
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1272
    .local v0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 1273
    return-object v1

    .line 1275
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1276
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1277
    const v3, 0x3eaaaaab

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 1278
    .local v3, "maxScroll":I
    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutState(IIZLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1279
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v2, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1280
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput-boolean v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1281
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v4, 0x1

    invoke-virtual {p0, p3, v2, p4, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    .line 1284
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1285
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v4

    .local v4, "nextCandidate":Landroid/view/View;
    goto :goto_0

    .line 1287
    .end local v4    # "nextCandidate":Landroid/view/View;
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v4

    .line 1290
    .restart local v4    # "nextCandidate":Landroid/view/View;
    :goto_0
    if-ne v0, v2, :cond_3

    .line 1291
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .local v2, "nextFocus":Landroid/view/View;
    goto :goto_1

    .line 1293
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 1295
    .restart local v2    # "nextFocus":Landroid/view/View;
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1296
    if-nez v4, :cond_4

    .line 1297
    return-object v1

    .line 1299
    :cond_4
    return-object v2

    .line 1301
    :cond_5
    return-object v4
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 12
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 264
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_1

    .line 265
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 267
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "focused":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    iget-boolean v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mValid:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 284
    :cond_3
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-gt v3, v5, :cond_6

    .line 285
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    goto :goto_1

    .line 280
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->reset()V

    .line 281
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v5, v6

    iput-boolean v5, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 282
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateAnchorInfoForLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 283
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    iput-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mValid:Z

    .line 293
    :cond_6
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getExtraLayoutSpace(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v3

    .line 294
    .local v3, "extra":I
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v5, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v5, :cond_7

    .line 295
    move v5, v3

    .line 296
    .local v5, "extraForEnd":I
    const/4 v6, 0x0

    .local v6, "extraForStart":I
    goto :goto_2

    .line 298
    .end local v5    # "extraForEnd":I
    .end local v6    # "extraForStart":I
    :cond_7
    move v6, v3

    .line 299
    .restart local v6    # "extraForStart":I
    const/4 v5, 0x0

    .line 301
    .restart local v5    # "extraForEnd":I
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    add-int/2addr v6, v7

    .line 302
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v7

    add-int/2addr v5, v7

    .line 303
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    if-eq v7, v1, :cond_a

    iget v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_a

    .line 304
    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 305
    .local v7, "existing":Landroid/view/View;
    if-eqz v7, :cond_a

    .line 308
    iget-boolean v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_8

    .line 309
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    .line 310
    .local v8, "current":I
    iget v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v9, v8, v9

    .local v9, "upcomingOffset":I
    goto :goto_3

    .line 312
    .end local v8    # "current":I
    .end local v9    # "upcomingOffset":I
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8, v7}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    sub-int/2addr v8, v9

    .line 313
    .restart local v8    # "current":I
    iget v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v9, v8

    .line 315
    .restart local v9    # "upcomingOffset":I
    :goto_3
    if-lez v9, :cond_9

    .line 316
    add-int/2addr v6, v9

    goto :goto_4

    .line 318
    :cond_9
    sub-int/2addr v5, v9

    .line 325
    .end local v7    # "existing":Landroid/view/View;
    .end local v8    # "current":I
    .end local v9    # "upcomingOffset":I
    :cond_a
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    iget-boolean v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_c

    .line 326
    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_b

    move v1, v4

    .local v1, "firstLayoutDirection":I
    :cond_b
    goto :goto_5

    .line 328
    .end local v1    # "firstLayoutDirection":I
    :cond_c
    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_d
    move v1, v4

    .line 331
    .restart local v1    # "firstLayoutDirection":I
    :goto_5
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v7, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->onAnchorReady(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;I)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->detachAndScrapAttachedViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 333
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->resolveIsInfinite()Z

    move-result v8

    iput-boolean v8, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mInfinite:Z

    .line 334
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v8

    iput-boolean v8, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 335
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    iget-boolean v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_10

    .line 336
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 337
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v6, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 338
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v7, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    .line 339
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 340
    .local v7, "startOffset":I
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 341
    .local v8, "firstElement":I
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_e

    .line 342
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v5, v9

    .line 344
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 345
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v5, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 346
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v10, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v11, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v11, v11, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v10, v11

    iput v10, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 347
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v9, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    .line 348
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 350
    .local v9, "endOffset":I
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v10, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_f

    .line 351
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v6, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 352
    invoke-direct {p0, v8, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 353
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v6, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 354
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v10, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    .line 355
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v7, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 357
    .end local v8    # "firstElement":I
    :cond_f
    goto :goto_6

    .line 358
    .end local v7    # "startOffset":I
    .end local v9    # "endOffset":I
    :cond_10
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 359
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v5, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 360
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v7, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    .line 361
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v9, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 362
    .restart local v9    # "endOffset":I
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 363
    .local v7, "lastElement":I
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v8, :cond_11

    .line 364
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v6, v8

    .line 366
    :cond_11
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillStart(Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;)V

    .line 367
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v6, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 368
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v10, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v11, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v11, v11, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v10, v11

    iput v10, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 369
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v8, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    .line 370
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    .line 372
    .local v8, "startOffset":I
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v10, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_12

    .line 373
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v5, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mAvailable:I

    .line 374
    invoke-direct {p0, v7, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 375
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v5, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mExtra:I

    .line 376
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v10, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    .line 377
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v9, v10, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mOffset:I

    move v7, v8

    goto :goto_6

    .line 372
    :cond_12
    move v7, v8

    .line 381
    .end local v8    # "startOffset":I
    .local v7, "startOffset":I
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_14

    .line 382
    iget-boolean v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v8, v10

    if-eqz v8, :cond_13

    .line 383
    invoke-direct {p0, v9, p1, p2, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fixLayoutEndGap(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    move-result v4

    .line 384
    .local v4, "fixOffset":I
    add-int/2addr v7, v4

    .line 385
    add-int/2addr v9, v4

    .line 386
    invoke-direct {p0, v7, p1, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fixLayoutStartGap(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    move-result v2

    .line 387
    .end local v4    # "fixOffset":I
    .local v2, "fixOffset":I
    add-int/2addr v7, v2

    .line 388
    add-int/2addr v9, v2

    .line 389
    .end local v2    # "fixOffset":I
    goto :goto_7

    .line 390
    :cond_13
    invoke-direct {p0, v7, p1, p2, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fixLayoutStartGap(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    move-result v4

    .line 391
    .restart local v4    # "fixOffset":I
    add-int/2addr v7, v4

    .line 392
    add-int/2addr v9, v4

    .line 393
    invoke-direct {p0, v9, p1, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fixLayoutEndGap(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    move-result v2

    .line 394
    .end local v4    # "fixOffset":I
    .restart local v2    # "fixOffset":I
    add-int/2addr v7, v2

    .line 395
    add-int/2addr v9, v2

    .line 398
    .end local v2    # "fixOffset":I
    :cond_14
    :goto_7
    invoke-direct {p0, p1, p2, v7, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->layoutForPredictiveAnimations(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;II)V

    .line 399
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_15

    .line 400
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_8

    .line 402
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->reset()V

    .line 404
    :goto_8
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLastStackFromEnd:Z

    .line 408
    return-void
.end method

.method public onLayoutCompleted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 412
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 415
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 416
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->reset()V

    .line 417
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 138
    instance-of v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 147
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;)V

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;-><init>()V

    .line 117
    .local v0, "state":Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 119
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 120
    .local v1, "didLayoutFromEnd":Z
    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 121
    if-eqz v1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, "refChild":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 124
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 125
    .end local v2    # "refChild":Landroid/view/View;
    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 127
    .restart local v2    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 128
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 130
    .end local v1    # "didLayoutFromEnd":Z
    .end local v2    # "refChild":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 133
    :goto_1
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1359
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 1361
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1362
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1363
    .local v0, "myPos":I
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1364
    .local v1, "targetPos":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1365
    .local v4, "dropDirection":I
    :goto_0
    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 1366
    if-ne v4, v2, :cond_1

    .line 1367
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1369
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1372
    :cond_2
    if-ne v4, v3, :cond_3

    .line 1373
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 1375
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1378
    :goto_1
    return-void
.end method

.method resolveIsInfinite()Z
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 6
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 862
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mRecycle:Z

    .line 866
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->ensureLayoutState()V

    .line 867
    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 868
    .local v0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 869
    .local v3, "absDy":I
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->updateLayoutState(IIZLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 870
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iget v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    invoke-virtual {p0, p2, v4, p3, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 871
    .local v2, "consumed":I
    if-gez v2, :cond_2

    .line 875
    return v1

    .line 877
    :cond_2
    if-le v3, v2, :cond_3

    mul-int v1, v0, v2

    goto :goto_1

    :cond_3
    move v1, p1

    .line 878
    .local v1, "scrolled":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    neg-int v5, v1

    invoke-virtual {v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 882
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;

    iput v1, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 883
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showGoToTop()V

    .line 884
    return v1

    .line 863
    .end local v0    # "layoutDirection":I
    .end local v1    # "scrolled":I
    .end local v2    # "consumed":I
    .end local v3    # "absDy":I
    :cond_4
    :goto_2
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 686
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 687
    const/4 v0, 0x0

    return v0

    .line 689
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 657
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 658
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 659
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    .line 660
    .local v0, "savedState":Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;
    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 664
    .local v1, "recyclerView":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showGoToTop()V

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 668
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 671
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPosition:I

    .line 672
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 673
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    .line 674
    .local v0, "savedState":Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;
    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 678
    .local v1, "recyclerView":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    if-eqz v1, :cond_1

    .line 679
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showGoToTop()V

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 682
    return-void
.end method

.method public scrollVerticallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 694
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 695
    const/4 v0, 0x0

    return v0

    .line 697
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .line 839
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 840
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 177
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_2

    .line 182
    return-void

    .line 184
    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->createOrientationHelper(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;I)Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 185
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;

    iput-object v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$AnchorInfo;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 186
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientation:I

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 188
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0
    .param p1, "recycleChildrenOnDetach"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 91
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 209
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 764
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 765
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1
    .param p1, "stackFromEnd"    # Z

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->requestLayout()V

    .line 166
    return-void
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .line 1083
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public smoothScrollToPosition(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;I)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "position"    # I

    .line 238
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "linearSmoothScroller":Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showGoToTop()V

    .line 240
    invoke-virtual {v0, p3}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->startSmoothScroll(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;)V

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS pos to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslLinearLayoutManager"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validateChildOrder()V
    .locals 11

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validating child count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslLinearLayoutManager"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1316
    return-void

    .line 1318
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1319
    .local v2, "lastPos":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1320
    .local v3, "lastScreenLoc":I
    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mShouldReverseLayout:Z

    const-string v5, "detected invalid location"

    const-string v6, "detected invalid position. loc invalid? "

    if-eqz v4, :cond_5

    .line 1321
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 1322
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1323
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1324
    .local v8, "pos":I
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 1325
    .local v9, "screenLoc":I
    if-ge v8, v2, :cond_2

    .line 1326
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->logChildren()V

    .line 1327
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v9, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1330
    :cond_2
    if-gt v9, v3, :cond_3

    .line 1321
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1331
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "pos":I
    .restart local v9    # "screenLoc":I
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->logChildren()V

    .line 1332
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    .end local v4    # "i":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    :cond_4
    goto :goto_4

    .line 1336
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_9

    .line 1337
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1338
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1339
    .restart local v8    # "pos":I
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 1340
    .restart local v9    # "screenLoc":I
    if-ge v8, v2, :cond_7

    .line 1341
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->logChildren()V

    .line 1342
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v9, v3, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1344
    :cond_7
    if-lt v9, v3, :cond_8

    .line 1336
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1345
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "pos":I
    .restart local v9    # "screenLoc":I
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->logChildren()V

    .line 1346
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1350
    .end local v4    # "i":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    :cond_9
    :goto_4
    return-void
.end method
