.class public Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;,
        Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;,
        Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

.field mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "spanCount"    # I
    .param p2, "orientation"    # I

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 64
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 65
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 66
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 77
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 95
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 97
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 64
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 65
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 66
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 77
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 86
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 87
    .local v0, "properties":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 88
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 89
    iget-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 90
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {v1}, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 92
    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1276
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1276
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1279
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 3
    .param p1, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found saved state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StaggeredGridLManager"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_4

    .line 527
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_3

    .line 528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 529
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 530
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v1, v0

    .line 531
    .local v1, "line":I
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 532
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 538
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 528
    .end local v1    # "line":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 545
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 546
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 549
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 550
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 551
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_3

    .line 553
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 555
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 556
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 557
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 559
    :cond_6
    return-void
.end method

.method private attachViewToSpans(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .param p3, "layoutState"    # Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    .line 1226
    iget v0, p3, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1227
    iget-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    .line 1228
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1230
    :cond_0
    iget-object v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1233
    :cond_1
    iget-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_2

    .line 1234
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1239
    :goto_0
    return-void
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .line 1501
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1502
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1504
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 1505
    .local v0, "firstChildPos":I
    if-ge p1, v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private checkSpanForGap(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 3
    .param p1, "span"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 233
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 235
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 236
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 237
    .local v1, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 239
    .end local v0    # "endView":Landroid/view/View;
    .end local v1    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 240
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    .local v0, "startView":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 242
    .restart local v1    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 244
    .end local v0    # "startView":Landroid/view/View;
    .end local v1    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_1
    return v1
.end method

.method private computeScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 720
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 721
    const/4 v0, 0x0

    return v0

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private computeScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 8
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 703
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x0

    return v0

    .line 706
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/ui/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;ZZ)I

    move-result v0

    return v0
.end method

.method private computeScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 737
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 738
    const/4 v0, 0x0

    return v0

    .line 740
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .line 1777
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown focus request:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StaggeredGridLManager"

    invoke-static {v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    return v1

    .line 1797
    :sswitch_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1801
    :sswitch_1
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1795
    :sswitch_2
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1799
    :sswitch_3
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 1787
    :sswitch_4
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_4

    .line 1788
    return v2

    .line 1789
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1790
    return v0

    .line 1792
    :cond_5
    return v2

    .line 1779
    :sswitch_5
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_6

    .line 1780
    return v0

    .line 1781
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1782
    return v2

    .line 1784
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

.method private createFullSpanItemFromEnd(I)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemTop"    # I

    .line 1208
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1209
    .local v0, "fsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1211
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    .line 1210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1213
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemBottom"    # I

    .line 1217
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1218
    .local v0, "fsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1220
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1222
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 1

    .line 107
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->createOrientationHelper(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;I)Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 108
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->createOrientationHelper(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;I)Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 109
    return-void
.end method

.method private fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 24
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/samsung/android/ui/recyclerview/widget/LayoutState;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1073
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 1076
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 1077
    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_0

    .line 1078
    const v0, 0x7fffffff

    move v11, v0

    .local v0, "targetLine":I
    goto :goto_0

    .line 1080
    .end local v0    # "targetLine":I
    :cond_0
    const/high16 v0, -0x80000000

    move v11, v0

    .restart local v0    # "targetLine":I
    goto :goto_0

    .line 1083
    .end local v0    # "targetLine":I
    :cond_1
    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_2

    .line 1084
    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    iget v1, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    add-int/2addr v0, v1

    move v11, v0

    .restart local v0    # "targetLine":I
    goto :goto_0

    .line 1086
    .end local v0    # "targetLine":I
    :cond_2
    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    iget v1, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    sub-int/2addr v0, v1

    move v11, v0

    .line 1090
    .local v11, "targetLine":I
    :goto_0
    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FILLING targetLine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",remaining spans:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "StaggeredGridLManager"

    invoke-static {v12, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_1
    move v13, v0

    .line 1094
    .local v13, "defaultNewViewLine":I
    const/4 v0, 0x0

    move v14, v0

    .line 1095
    .local v14, "added":Z
    :goto_2
    invoke-virtual/range {p2 .. p3}, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->hasMore(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1a

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mInfinite:Z

    if-nez v0, :cond_5

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v9

    move/from16 v23, v13

    goto/16 :goto_14

    .line 1096
    :cond_5
    :goto_3
    invoke-virtual {v8, v7}, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->next(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)Landroid/view/View;

    move-result-object v15

    .line 1097
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1098
    .local v5, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    .line 1099
    .local v4, "position":I
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v3

    .line 1101
    .local v3, "spanIndex":I
    if-ne v3, v1, :cond_6

    move v0, v10

    goto :goto_4

    :cond_6
    move v0, v9

    :goto_4
    move/from16 v16, v0

    .line 1102
    .local v16, "assignSpan":Z
    if-eqz v16, :cond_8

    .line 1103
    iget-boolean v0, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v9

    goto :goto_5

    :cond_7
    invoke-direct {v6, v8}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getNextSpan(Lcom/samsung/android/ui/recyclerview/widget/LayoutState;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-result-object v0

    .line 1104
    .local v0, "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :goto_5
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assigned "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_6

    .line 1107
    .end local v0    # "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, v3

    move-object v2, v0

    .line 1110
    .local v2, "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    :goto_6
    iput-object v2, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1111
    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_9

    .line 1112
    invoke-virtual {v6, v15}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 1114
    :cond_9
    invoke-virtual {v6, v15, v9}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1116
    :goto_7
    invoke-direct {v6, v15, v5, v9}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1120
    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_b

    .line 1121
    iget-boolean v0, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_a

    invoke-direct {v6, v13}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    goto :goto_8

    :cond_a
    invoke-virtual {v2, v13}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1122
    .local v0, "start":I
    :goto_8
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v15}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1123
    .local v1, "end":I
    if-eqz v16, :cond_d

    iget-boolean v9, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_d

    .line 1125
    invoke-direct {v6, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v9

    .line 1126
    .local v9, "fullSpanItem":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v10, -0x1

    iput v10, v9, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1127
    iput v4, v9, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1128
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v10, v9}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1129
    .end local v9    # "fullSpanItem":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    goto :goto_a

    .line 1131
    .end local v0    # "start":I
    .end local v1    # "end":I
    :cond_b
    iget-boolean v0, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_c

    invoke-direct {v6, v13}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    goto :goto_9

    :cond_c
    invoke-virtual {v2, v13}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    :goto_9
    move v1, v0

    .line 1132
    .restart local v1    # "end":I
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v15}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    .line 1133
    .restart local v0    # "start":I
    if-eqz v16, :cond_d

    iget-boolean v9, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_d

    .line 1135
    invoke-direct {v6, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v9

    .line 1136
    .restart local v9    # "fullSpanItem":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v10, 0x1

    iput v10, v9, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1137
    iput v4, v9, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1138
    iget-object v10, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v10, v9}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1142
    .end local v9    # "fullSpanItem":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_d
    :goto_a
    move v9, v0

    move v10, v1

    .end local v0    # "start":I
    .end local v1    # "end":I
    .local v9, "start":I
    .local v10, "end":I
    iget-boolean v0, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_12

    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mItemDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 1143
    if-eqz v16, :cond_e

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto :goto_d

    .line 1147
    :cond_e
    const/4 v0, 0x1

    iget v1, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v1, v0, :cond_f

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v1

    xor-int/2addr v1, v0

    .local v1, "hasInvalidGap":Z
    goto :goto_b

    .line 1150
    .end local v1    # "hasInvalidGap":Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v1

    xor-int/2addr v1, v0

    .line 1152
    .restart local v1    # "hasInvalidGap":Z
    :goto_b
    if-eqz v1, :cond_11

    .line 1153
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 1154
    .local v0, "fullSpanItem":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v0, :cond_10

    .line 1155
    move/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "hasInvalidGap":Z
    .local v17, "hasInvalidGap":Z
    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    goto :goto_c

    .line 1154
    .end local v17    # "hasInvalidGap":Z
    .restart local v1    # "hasInvalidGap":Z
    :cond_10
    move/from16 v17, v1

    const/4 v1, 0x1

    .line 1157
    .end local v1    # "hasInvalidGap":Z
    .restart local v17    # "hasInvalidGap":Z
    :goto_c
    iput-boolean v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto :goto_d

    .line 1152
    .end local v0    # "fullSpanItem":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v17    # "hasInvalidGap":Z
    .restart local v1    # "hasInvalidGap":Z
    :cond_11
    move/from16 v17, v1

    .line 1161
    .end local v1    # "hasInvalidGap":Z
    :cond_12
    :goto_d
    invoke-direct {v6, v15, v5, v8}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;)V

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 1165
    iget-boolean v0, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_13

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    move/from16 v17, v3

    goto :goto_e

    :cond_13
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    move/from16 v17, v3

    .end local v3    # "spanIndex":I
    .local v17, "spanIndex":I
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v1, v3

    iget v3, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1166
    .local v0, "otherEnd":I
    :goto_e
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v15}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move/from16 v19, v0

    move/from16 v20, v1

    .local v1, "otherStart":I
    goto :goto_10

    .line 1164
    .end local v0    # "otherEnd":I
    .end local v1    # "otherStart":I
    .end local v17    # "spanIndex":I
    .restart local v3    # "spanIndex":I
    :cond_14
    move/from16 v17, v3

    .line 1168
    .end local v3    # "spanIndex":I
    .restart local v17    # "spanIndex":I
    iget-boolean v0, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_15

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_f

    :cond_15
    iget v0, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    :goto_f
    move v1, v0

    .line 1169
    .restart local v1    # "otherStart":I
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v15}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    move/from16 v19, v0

    move/from16 v20, v1

    .line 1172
    .end local v1    # "otherStart":I
    .local v19, "otherEnd":I
    .local v20, "otherStart":I
    :goto_10
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_16

    .line 1173
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v18, v12

    move-object v12, v2

    .end local v2    # "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .local v12, "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    move/from16 v2, v20

    move/from16 v21, v3

    move v3, v9

    move/from16 v22, v4

    .end local v4    # "position":I
    .local v22, "position":I
    move/from16 v4, v19

    move/from16 v23, v13

    move-object v13, v5

    .end local v5    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .local v13, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .local v23, "defaultNewViewLine":I
    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_11

    .line 1175
    .end local v12    # "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v22    # "position":I
    .end local v23    # "defaultNewViewLine":I
    .restart local v2    # "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .restart local v4    # "position":I
    .restart local v5    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .local v13, "defaultNewViewLine":I
    :cond_16
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v12

    move/from16 v23, v13

    move-object v12, v2

    move-object v13, v5

    .end local v2    # "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v4    # "position":I
    .end local v5    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .restart local v12    # "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .local v13, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .restart local v22    # "position":I
    .restart local v23    # "defaultNewViewLine":I
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v9

    move/from16 v3, v20

    move v4, v10

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1178
    :goto_11
    iget-boolean v0, v13, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_17

    .line 1179
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    goto :goto_12

    .line 1181
    :cond_17
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v12, v0, v11}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    .line 1183
    :goto_12
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {v6, v7, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;)V

    .line 1184
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    if-eqz v0, :cond_19

    invoke-virtual {v15}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1185
    iget-boolean v0, v13, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_18

    .line 1186
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    const/4 v2, 0x0

    goto :goto_13

    .line 1188
    :cond_18
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v12, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_13

    .line 1184
    :cond_19
    const/4 v2, 0x0

    .line 1191
    :goto_13
    const/4 v14, 0x1

    .line 1192
    .end local v9    # "start":I
    .end local v10    # "end":I
    .end local v12    # "currentSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v13    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v15    # "view":Landroid/view/View;
    .end local v16    # "assignSpan":Z
    .end local v17    # "spanIndex":I
    .end local v19    # "otherEnd":I
    .end local v20    # "otherStart":I
    .end local v22    # "position":I
    move v9, v2

    move-object/from16 v12, v18

    move/from16 v10, v21

    move/from16 v13, v23

    goto/16 :goto_2

    .line 1095
    .end local v23    # "defaultNewViewLine":I
    .local v13, "defaultNewViewLine":I
    :cond_1a
    move v2, v9

    move/from16 v23, v13

    .line 1193
    .end local v13    # "defaultNewViewLine":I
    .restart local v23    # "defaultNewViewLine":I
    :goto_14
    if-nez v14, :cond_1b

    .line 1194
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {v6, v7, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;)V

    .line 1197
    :cond_1b
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 1198
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    .line 1199
    .local v0, "minStart":I
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1200
    .end local v0    # "minStart":I
    .local v1, "diff":I
    goto :goto_15

    .line 1201
    .end local v1    # "diff":I
    :cond_1c
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    .line 1202
    .local v0, "maxEnd":I
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v1, v0, v1

    .line 1204
    .end local v0    # "maxEnd":I
    .restart local v1    # "diff":I
    :goto_15
    if-lez v1, :cond_1d

    iget v0, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_16

    :cond_1d
    move v9, v2

    :goto_16
    return v9
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4
    .param p1, "itemCount"    # I

    .line 1633
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1634
    .local v0, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1635
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1636
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 1637
    .local v3, "position":I
    if-ltz v3, :cond_0

    if-ge v3, p1, :cond_0

    .line 1638
    return v3

    .line 1634
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "position":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1641
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 3
    .param p1, "itemCount"    # I

    .line 1645
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1646
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1647
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1648
    .local v2, "position":I
    if-ltz v2, :cond_0

    if-ge v2, p1, :cond_0

    .line 1649
    return v2

    .line 1645
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "position":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1652
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private fixEndGap(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V
    .locals 4
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .line 918
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v1

    .line 919
    .local v1, "maxEndLine":I
    if-ne v1, v0, :cond_0

    .line 920
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, v1

    .line 924
    .local v0, "gap":I
    if-lez v0, :cond_2

    .line 925
    neg-int v2, v0

    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v2

    neg-int v2, v2

    .line 929
    .local v2, "fixOffset":I
    sub-int/2addr v0, v2

    .line 930
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 931
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 933
    :cond_1
    return-void

    .line 927
    .end local v2    # "fixOffset":I
    :cond_2
    return-void
.end method

.method private fixStartGap(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .line 937
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v1

    .line 938
    .local v1, "minStartLine":I
    if-ne v1, v0, :cond_0

    .line 939
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, v1, v0

    .line 943
    .local v0, "gap":I
    if-lez v0, :cond_2

    .line 944
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v2

    .line 948
    .local v2, "fixOffset":I
    sub-int/2addr v0, v2

    .line 949
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 950
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 952
    :cond_1
    return-void

    .line 946
    .end local v2    # "fixOffset":I
    :cond_2
    return-void
.end method

.method private getMaxEnd(I)I
    .locals 3
    .param p1, "def"    # I

    .line 1354
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1355
    .local v0, "maxEnd":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1356
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1357
    .local v2, "spanEnd":I
    if-le v2, v0, :cond_0

    .line 1358
    move v0, v2

    .line 1355
    .end local v2    # "spanEnd":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1361
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getMaxStart(I)I
    .locals 3
    .param p1, "def"    # I

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .line 1313
    .local v0, "maxStart":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1314
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1315
    .local v2, "spanStart":I
    if-le v2, v0, :cond_0

    .line 1316
    move v0, v2

    .line 1313
    .end local v2    # "spanStart":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1319
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getMinEnd(I)I
    .locals 3
    .param p1, "def"    # I

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1366
    .local v0, "minEnd":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1367
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1368
    .local v2, "spanEnd":I
    if-ge v2, v0, :cond_0

    .line 1369
    move v0, v2

    .line 1366
    .end local v2    # "spanEnd":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1372
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getMinStart(I)I
    .locals 3
    .param p1, "def"    # I

    .line 1323
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .line 1324
    .local v0, "minStart":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1325
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1326
    .local v2, "spanStart":I
    if-ge v2, v0, :cond_0

    .line 1327
    move v0, v2

    .line 1324
    .end local v2    # "spanStart":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1330
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getNextSpan(Lcom/samsung/android/ui/recyclerview/widget/LayoutState;)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .locals 10
    .param p1, "layoutState"    # Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    .line 1440
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v0

    .line 1442
    .local v0, "preferLastSpan":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1443
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, v1

    .line 1444
    .local v2, "startIndex":I
    const/4 v3, -0x1

    .line 1445
    .local v3, "endIndex":I
    const/4 v4, -0x1

    .local v4, "diff":I
    goto :goto_0

    .line 1447
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    .end local v4    # "diff":I
    :cond_0
    const/4 v2, 0x0

    .line 1448
    .restart local v2    # "startIndex":I
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1449
    .restart local v3    # "endIndex":I
    const/4 v4, 0x1

    .line 1451
    .restart local v4    # "diff":I
    :goto_0
    iget v5, p1, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v5, v1, :cond_3

    .line 1452
    const/4 v1, 0x0

    .line 1453
    .local v1, "min":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    const v5, 0x7fffffff

    .line 1454
    .local v5, "minLine":I
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 1455
    .local v6, "defaultLine":I
    move v7, v2

    .local v7, "i":I
    :goto_1
    if-eq v7, v3, :cond_2

    .line 1456
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v8, v7

    .line 1457
    .local v8, "other":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    .line 1458
    .local v9, "otherLine":I
    if-ge v9, v5, :cond_1

    .line 1459
    move-object v1, v8

    .line 1460
    move v5, v9

    .line 1455
    .end local v8    # "other":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    :cond_1
    add-int/2addr v7, v4

    goto :goto_1

    .line 1463
    .end local v7    # "i":I
    :cond_2
    return-object v1

    .line 1465
    .end local v1    # "min":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v5    # "minLine":I
    .end local v6    # "defaultLine":I
    :cond_3
    const/4 v1, 0x0

    .line 1466
    .local v1, "max":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    const/high16 v5, -0x80000000

    .line 1467
    .local v5, "maxLine":I
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 1468
    .restart local v6    # "defaultLine":I
    move v7, v2

    .restart local v7    # "i":I
    :goto_2
    if-eq v7, v3, :cond_5

    .line 1469
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v8, v7

    .line 1470
    .restart local v8    # "other":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v9

    .line 1471
    .restart local v9    # "otherLine":I
    if-le v9, v5, :cond_4

    .line 1472
    move-object v1, v8

    .line 1473
    move v5, v9

    .line 1468
    .end local v8    # "other":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    :cond_4
    add-int/2addr v7, v4

    goto :goto_2

    .line 1476
    .end local v7    # "i":I
    :cond_5
    return-object v1
.end method

.method private handleUpdate(III)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCountOrToPosition"    # I
    .param p3, "cmd"    # I

    .line 1031
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 1035
    .local v0, "minPosition":I
    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    .line 1036
    if-ge p1, p2, :cond_1

    .line 1037
    add-int/lit8 v1, p2, 0x1

    .line 1038
    .local v1, "affectedRangeEnd":I
    move v2, p1

    .local v2, "affectedRangeStart":I
    goto :goto_1

    .line 1040
    .end local v1    # "affectedRangeEnd":I
    .end local v2    # "affectedRangeStart":I
    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 1041
    .restart local v1    # "affectedRangeEnd":I
    move v2, p2

    .restart local v2    # "affectedRangeStart":I
    goto :goto_1

    .line 1044
    .end local v1    # "affectedRangeEnd":I
    .end local v2    # "affectedRangeStart":I
    :cond_2
    move v2, p1

    .line 1045
    .restart local v2    # "affectedRangeStart":I
    add-int v1, p1, p2

    .line 1048
    .restart local v1    # "affectedRangeEnd":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    .line 1049
    sparse-switch p3, :sswitch_data_0

    goto :goto_2

    .line 1057
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1058
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p2, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1054
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1055
    goto :goto_2

    .line 1051
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    .line 1052
    nop

    .line 1062
    :goto_2
    if-gt v1, v0, :cond_3

    .line 1063
    return-void

    .line 1066
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .line 1067
    .local v3, "maxPosition":I
    :goto_3
    if-gt v2, v3, :cond_5

    .line 1068
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1070
    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .line 765
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 767
    .local v0, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 768
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 769
    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v1

    .line 770
    .local v1, "measure":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 771
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 774
    :cond_1
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .param p3, "alreadyMeasured"    # Z

    .line 749
    iget-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 750
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 751
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 756
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 757
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v3, v2, v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 759
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v3, v4, v5, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    iget v4, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v3, v2, v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 762
    :goto_0
    return-void
.end method

.method private onLayoutChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V
    .locals 9
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "shouldCheckForGaps"    # Z

    .line 364
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 365
    .local v0, "anchorInfo":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v1, v2, :cond_1

    .line 366
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 367
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 368
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 369
    return-void

    .line 373
    :cond_1
    iget-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    .line 374
    .local v1, "recalculateAnchor":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 375
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 376
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_4

    .line 377
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    goto :goto_2

    .line 379
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 380
    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 382
    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 383
    iput-boolean v4, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 385
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_7

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v2, :cond_7

    .line 386
    iget-boolean v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v5, v6, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v5, v6, :cond_7

    .line 387
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 388
    iput-boolean v4, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 392
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_8

    iget v5, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v5, v4, :cond_f

    .line 393
    :cond_8
    iget-boolean v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v5, :cond_b

    .line 394
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_a

    .line 395
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 396
    iget v6, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_9

    .line 397
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v5

    iget v7, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 394
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v5    # "i":I
    :cond_a
    goto :goto_7

    .line 401
    :cond_b
    if-nez v1, :cond_d

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v5, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v5, :cond_c

    goto :goto_5

    .line 407
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_f

    .line 408
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v5

    .line 409
    .local v6, "span":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 410
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v7, v7, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 407
    .end local v6    # "span":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 402
    .end local v5    # "i":I
    :cond_d
    :goto_5
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_e

    .line 403
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v5

    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 402
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 405
    .end local v5    # "i":I
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    .line 415
    :cond_f
    :goto_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 416
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iput-boolean v3, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 417
    iput-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 418
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 419
    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v5, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 420
    iget-boolean v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_10

    .line 421
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 422
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    .line 423
    invoke-direct {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 424
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v6, v6, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 425
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    goto :goto_8

    .line 427
    :cond_10
    invoke-direct {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 428
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    .line 429
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 430
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v6, v6, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 431
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    .line 434
    :goto_8
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_12

    .line 437
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_11

    .line 438
    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V

    .line 439
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V

    goto :goto_9

    .line 441
    :cond_11
    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V

    .line 442
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V

    .line 445
    :cond_12
    :goto_9
    const/4 v2, 0x0

    .line 446
    .local v2, "hasGaps":Z
    if-eqz p3, :cond_15

    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_15

    .line 447
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_14

    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v5, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_14

    :cond_13
    goto :goto_a

    :cond_14
    move v4, v3

    .line 448
    .local v4, "needToCheckForGaps":Z
    :goto_a
    if-eqz v4, :cond_15

    .line 449
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 450
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 451
    const/4 v2, 0x1

    .line 455
    .end local v4    # "needToCheckForGaps":Z
    :cond_15
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 456
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 458
    :cond_16
    iget-boolean v4, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 459
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 460
    if-eqz v2, :cond_17

    .line 461
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 462
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V

    .line 464
    :cond_17
    return-void
.end method

.method private preferLastSpan(I)Z
    .locals 4
    .param p1, "layoutDir"    # I

    .line 1433
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1434
    if-ne p1, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    .line 1436
    :cond_2
    if-ne p1, v1, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v1, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1282
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1282
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1285
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private recycle(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;)V
    .locals 3
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    .line 1242
    iget-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mRecycle:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1245
    :cond_0
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 1246
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_1

    .line 1247
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_2

    .line 1249
    :cond_1
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V

    goto :goto_2

    .line 1252
    :cond_2
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_4

    .line 1253
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1255
    .local v0, "scrolled":I
    if-gez v0, :cond_3

    .line 1256
    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    .local v1, "line":I
    goto :goto_0

    .line 1258
    .end local v1    # "line":I
    :cond_3
    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    iget v2, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1260
    .restart local v1    # "line":I
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V

    .line 1261
    .end local v0    # "scrolled":I
    .end local v1    # "line":I
    goto :goto_2

    .line 1262
    :cond_4
    iget v0, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v0

    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    sub-int/2addr v0, v1

    .line 1264
    .restart local v0    # "scrolled":I
    if-gez v0, :cond_5

    .line 1265
    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    .restart local v1    # "line":I
    goto :goto_1

    .line 1267
    .end local v1    # "line":I
    :cond_5
    iget v1, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    iget v2, p2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1269
    .restart local v1    # "line":I
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V

    .line 1273
    .end local v0    # "scrolled":I
    .end local v1    # "line":I
    :goto_2
    return-void

    .line 1243
    :cond_6
    :goto_3
    return-void
.end method

.method private recycleFromEnd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V
    .locals 7
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "line"    # I

    .line 1404
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1406
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 1407
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1408
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 1409
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1410
    .local v3, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1411
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v6, :cond_1

    .line 1412
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 1413
    return-void

    .line 1411
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1416
    .end local v4    # "j":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_2

    .line 1417
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1416
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "j":I
    :cond_2
    goto :goto_3

    .line 1420
    :cond_3
    iget-object v4, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 1421
    return-void

    .line 1423
    :cond_4
    iget-object v4, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1425
    :goto_3
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 1426
    .end local v3    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    nop

    .line 1406
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1427
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    return-void

    .line 1430
    .end local v2    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private recycleFromStart(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "line"    # I

    .line 1376
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1378
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    if-gt v1, p2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 1379
    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v1

    if-gt v1, p2, :cond_5

    .line 1380
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1381
    .local v1, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1382
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v4, :cond_1

    .line 1383
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1384
    return-void

    .line 1382
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1387
    .end local v2    # "j":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_2

    .line 1388
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1387
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "j":I
    :cond_2
    goto :goto_3

    .line 1391
    :cond_3
    iget-object v2, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1392
    return-void

    .line 1394
    :cond_4
    iget-object v2, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1396
    :goto_3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 1397
    .end local v1    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    nop

    .line 1400
    .end local v0    # "child":Landroid/view/View;
    goto :goto_0

    .line 1398
    .restart local v0    # "child":Landroid/view/View;
    :cond_5
    return-void

    .line 1401
    .end local v0    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 11

    .line 476
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 477
    return-void

    .line 479
    :cond_0
    const/4 v0, 0x0

    .line 480
    .local v0, "maxSize":F
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    .line 481
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 482
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 483
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    .line 484
    .local v4, "size":F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_1

    .line 485
    goto :goto_1

    .line 487
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 488
    .local v5, "layoutParams":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 489
    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 491
    :cond_2
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 481
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "size":F
    .end local v5    # "layoutParams":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "i":I
    :cond_3
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 494
    .local v2, "before":I
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 495
    .local v3, "desired":I
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 496
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 498
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 499
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    if-ne v4, v2, :cond_5

    .line 500
    return-void

    .line 502
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_9

    .line 503
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 504
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 505
    .local v6, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v7, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v7, :cond_6

    .line 506
    goto :goto_3

    .line 508
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v7, v8, :cond_7

    .line 509
    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v7, v8

    iget-object v9, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v7, v9

    neg-int v7, v7

    iget v9, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v7, v9

    .line 510
    .local v7, "newOffset":I
    iget v9, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v9, v8

    iget-object v8, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v8, v8, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v9, v8

    neg-int v8, v9

    mul-int/2addr v8, v2

    .line 511
    .local v8, "prevOffset":I
    sub-int v9, v7, v8

    invoke-virtual {v5, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 512
    .end local v7    # "newOffset":I
    .end local v8    # "prevOffset":I
    goto :goto_3

    .line 513
    :cond_7
    iget-object v7, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v7, v7, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v9, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v7, v9

    .line 514
    .restart local v7    # "newOffset":I
    iget-object v9, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    mul-int/2addr v9, v2

    .line 515
    .local v9, "prevOffset":I
    iget v10, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v10, v8, :cond_8

    .line 516
    sub-int v8, v7, v9

    invoke-virtual {v5, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    .line 518
    :cond_8
    sub-int v8, v7, v9

    invoke-virtual {v5, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 502
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v7    # "newOffset":I
    .end local v9    # "prevOffset":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 522
    .end local v4    # "i":I
    :cond_9
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 318
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 319
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 323
    :goto_1
    return-void
.end method

.method private setLayoutStateDirection(I)V
    .locals 5
    .param p1, "direction"    # I

    .line 984
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iput p1, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 985
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 986
    return-void
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2
    .param p1, "layoutDir"    # I
    .param p2, "targetLine"    # I

    .line 1288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 1289
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    goto :goto_1

    .line 1292
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    .line 1288
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1294
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 574
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v0

    :goto_0
    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 575
    const/high16 v0, -0x80000000

    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method private updateLayoutState(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 7
    .param p1, "anchorPosition"    # I
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 955
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    .line 956
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iput p1, v0, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "startExtra":I
    const/4 v2, 0x0

    .line 959
    .local v2, "endExtra":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 960
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getTargetScrollPosition()I

    move-result v3

    .line 961
    .local v3, "targetPos":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 962
    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge v3, p1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-ne v5, v6, :cond_1

    .line 963
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    goto :goto_1

    .line 965
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 970
    .end local v3    # "targetPos":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v3

    .line 971
    .local v3, "clipToPadding":Z
    if-eqz v3, :cond_3

    .line 972
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v6, v0

    iput v6, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    .line 973
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    goto :goto_2

    .line 975
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    .line 976
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    neg-int v6, v0

    iput v6, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    .line 978
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iput-boolean v1, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 979
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iput-boolean v4, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 980
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    :cond_4
    iput-boolean v1, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mInfinite:Z

    .line 981
    return-void
.end method

.method private updateRemainingSpans(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 5
    .param p1, "span"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .param p2, "layoutDir"    # I
    .param p3, "targetLine"    # I

    .line 1297
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    .line 1298
    .local v0, "deletedSize":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1299
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v2

    .line 1300
    .local v2, "line":I
    add-int v3, v2, v0

    if-gt v3, p3, :cond_0

    .line 1301
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v4, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v3, v4, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 1303
    .end local v2    # "line":I
    :cond_0
    goto :goto_0

    .line 1304
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v2

    .line 1305
    .restart local v2    # "line":I
    sub-int v3, v2, v0

    if-lt v3, p3, :cond_2

    .line 1306
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v4, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v3, v4, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 1309
    .end local v2    # "line":I
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 3
    .param p1, "spec"    # I
    .param p2, "startInset"    # I
    .param p3, "endInset"    # I

    .line 777
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 778
    return p1

    .line 780
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 781
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 784
    :cond_1
    return p1

    .line 782
    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1335
    .local v0, "end":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1336
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 1337
    return v1

    .line 1335
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1340
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method areAllStartsEqual()Z
    .locals 5

    .line 1344
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .line 1345
    .local v0, "start":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1346
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 1347
    return v1

    .line 1345
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1350
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 304
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1487
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

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

    .line 1482
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method checkForGaps()Z
    .locals 8

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    .line 118
    .local v0, "minPos":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    .local v2, "maxPos":I
    goto :goto_0

    .line 120
    .end local v0    # "minPos":I
    .end local v2    # "maxPos":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 121
    .restart local v0    # "minPos":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    .line 123
    .restart local v2    # "maxPos":I
    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v4

    .line 125
    .local v4, "gapView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 126
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 129
    return v3

    .line 132
    .end local v4    # "gapView":Landroid/view/View;
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v4, :cond_3

    .line 133
    return v1

    .line 135
    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    move v4, v3

    .line 136
    .local v4, "invalidGapDir":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v0, v6, v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 137
    .local v5, "invalidFsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v5, :cond_5

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 139
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 140
    return v1

    .line 142
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v6, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v7, v4, -0x1

    invoke-virtual {v1, v0, v6, v7, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 143
    .local v1, "validFsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v1, :cond_6

    .line 144
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v7, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_2

    .line 146
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v7, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 148
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 150
    return v3

    .line 113
    .end local v0    # "minPos":I
    .end local v1    # "validFsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v2    # "maxPos":I
    .end local v4    # "invalidGapDir":I
    .end local v5    # "invalidFsi":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_7
    :goto_3
    return v1
.end method

.method public checkLayoutParams(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 1681
    instance-of v0, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 1554
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 1555
    .local v0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 1558
    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1560
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_3

    .line 1561
    :cond_2
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 1564
    :cond_3
    const/4 v1, 0x0

    .line 1565
    .local v1, "itemPrefetchCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_6

    .line 1566
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v3, v3, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mItemDirection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v3, v3, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v5, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v4, v4, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v4, v4, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mEndLine:I

    :goto_2
    sub-int/2addr v3, v4

    .line 1567
    .local v3, "distance":I
    if-ltz v3, :cond_5

    .line 1568
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aput v3, v4, v1

    .line 1569
    add-int/lit8 v1, v1, 0x1

    .line 1565
    .end local v3    # "distance":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1572
    .end local v2    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/util/Arrays;->sort([III)V

    .line 1574
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_7

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-virtual {v3, p3}, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->hasMore(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1575
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v3, v3, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aget v4, v4, v2

    invoke-interface {p4, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1576
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v5, v5, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 1574
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1578
    .end local v2    # "i":I
    :cond_7
    return-void

    .line 1556
    .end local v1    # "itemPrefetchCount":I
    :cond_8
    :goto_4
    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 716
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 699
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 733
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4
    .param p1, "targetPosition"    # I

    .line 1510
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v0

    .line 1511
    .local v0, "direction":I
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 1512
    .local v1, "outVector":Landroid/graphics/PointF;
    if-nez v0, :cond_0

    .line 1513
    const/4 v2, 0x0

    return-object v2

    .line 1515
    :cond_0
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1516
    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1517
    iput v3, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1519
    :cond_1
    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 1520
    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1522
    :goto_0
    return-object v1
.end method

.method public computeVerticalScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 728
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 711
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 745
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 3
    .param p1, "into"    # [I

    .line 662
    if-nez p1, :cond_0

    .line 663
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    goto :goto_0

    .line 664
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    .line 667
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 670
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 665
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 7
    .param p1, "fullyVisible"    # Z

    .line 897
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 898
    .local v0, "boundsStart":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 899
    .local v1, "boundsEnd":I
    const/4 v2, 0x0

    .line 900
    .local v2, "partiallyVisible":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 901
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 902
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 903
    .local v5, "childStart":I
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v4}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 904
    .local v6, "childEnd":I
    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    .line 905
    goto :goto_2

    .line 907
    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 910
    :cond_1
    if-nez v2, :cond_3

    .line 911
    move-object v2, v4

    goto :goto_2

    .line 908
    :cond_2
    :goto_1
    return-object v4

    .line 900
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childStart":I
    .end local v6    # "childEnd":I
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 914
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 8
    .param p1, "fullyVisible"    # Z

    .line 875
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 876
    .local v0, "boundsStart":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 877
    .local v1, "boundsEnd":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    .line 878
    .local v2, "limit":I
    const/4 v3, 0x0

    .line 879
    .local v3, "partiallyVisible":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 880
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 881
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 882
    .local v6, "childStart":I
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 883
    .local v7, "childEnd":I
    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    .line 884
    goto :goto_2

    .line 886
    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 889
    :cond_1
    if-nez v3, :cond_3

    .line 890
    move-object v3, v5

    goto :goto_2

    .line 887
    :cond_2
    :goto_1
    return-object v5

    .line 879
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 893
    .end local v4    # "i":I
    :cond_4
    return-object v3
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 2

    .line 870
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    .line 871
    .local v0, "first":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_1
    return v1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 3
    .param p1, "into"    # [I

    .line 650
    if-nez p1, :cond_0

    .line 651
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    goto :goto_0

    .line 652
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    .line 655
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 656
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 653
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 3
    .param p1, "into"    # [I

    .line 686
    if-nez p1, :cond_0

    .line 687
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    goto :goto_0

    .line 688
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    .line 691
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 694
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 689
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 3
    .param p1, "into"    # [I

    .line 674
    if-nez p1, :cond_0

    .line 675
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v0, [I

    goto :goto_0

    .line 676
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    .line 679
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 677
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDefaultLayoutParams()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .locals 3

    .line 1658
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 1659
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 1661
    :cond_0
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1667
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1672
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1673
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1675
    :cond_0
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getFirstChildPosition()I
    .locals 2

    .line 1628
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1629
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getGapStrategy()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    return v0
.end method

.method getLastChildPosition()I
    .locals 2

    .line 1623
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1624
    .local v0, "childCount":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getOrientation()I
    .locals 1

    .line 1685
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 16

    .line 172
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 173
    .local v1, "startChildIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 174
    .local v2, "endChildIndex":I
    new-instance v4, Ljava/util/BitSet;

    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v4, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 175
    .local v4, "mSpansToCheck":Ljava/util/BitSet;
    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 178
    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v7, -0x1

    if-ne v5, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v7

    .line 180
    .local v5, "preferredSpanDir":I
    :goto_0
    iget-boolean v8, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_1

    .line 181
    move v8, v2

    .line 182
    .local v8, "firstChildIndex":I
    add-int/lit8 v9, v1, -0x1

    .local v9, "childLimit":I
    goto :goto_1

    .line 184
    .end local v8    # "firstChildIndex":I
    .end local v9    # "childLimit":I
    :cond_1
    move v8, v1

    .line 185
    .restart local v8    # "firstChildIndex":I
    add-int/lit8 v9, v2, 0x1

    .line 187
    .restart local v9    # "childLimit":I
    :goto_1
    if-ge v8, v9, :cond_2

    move v7, v3

    .line 188
    .local v7, "nextChildDiff":I
    :cond_2
    move v10, v8

    .local v10, "i":I
    :goto_2
    if-eq v10, v9, :cond_e

    .line 189
    invoke-virtual {v0, v10}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 190
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 191
    .local v12, "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v13, v12, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v13, v13, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v4, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 192
    iget-object v13, v12, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {v0, v13}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->checkSpanForGap(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 193
    return-object v11

    .line 195
    :cond_3
    iget-object v13, v12, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v13, v13, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v4, v13}, Ljava/util/BitSet;->clear(I)V

    .line 197
    :cond_4
    iget-boolean v13, v12, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v13, :cond_5

    .line 198
    goto :goto_6

    .line 201
    :cond_5
    add-int v13, v10, v7

    if-eq v13, v9, :cond_d

    .line 202
    add-int v13, v10, v7

    invoke-virtual {v0, v13}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 203
    .local v13, "nextChild":Landroid/view/View;
    const/4 v14, 0x0

    .line 204
    .local v14, "compareSpans":Z
    iget-boolean v15, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v15, :cond_8

    .line 205
    iget-object v15, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v15, v11}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    .line 206
    .local v15, "myEnd":I
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v13}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 207
    .local v3, "nextEnd":I
    if-ge v15, v3, :cond_6

    .line 208
    return-object v11

    .line 209
    :cond_6
    if-ne v15, v3, :cond_7

    .line 210
    const/4 v14, 0x1

    .line 212
    .end local v3    # "nextEnd":I
    .end local v15    # "myEnd":I
    :cond_7
    goto :goto_3

    .line 213
    :cond_8
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v11}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 214
    .local v3, "myStart":I
    iget-object v15, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v15, v13}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v15

    .line 215
    .local v15, "nextStart":I
    if-le v3, v15, :cond_9

    .line 216
    return-object v11

    .line 217
    :cond_9
    if-ne v3, v15, :cond_a

    .line 218
    const/4 v14, 0x1

    .line 221
    .end local v3    # "myStart":I
    .end local v15    # "nextStart":I
    :cond_a
    :goto_3
    if-eqz v14, :cond_d

    .line 222
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 223
    .local v3, "nextLp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v15, v12, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v15, v15, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget-object v6, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v6, v6, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v15, v6

    if-gez v15, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-gez v5, :cond_c

    const/4 v15, 0x1

    goto :goto_5

    :cond_c
    const/4 v15, 0x0

    :goto_5
    if-eq v6, v15, :cond_d

    .line 224
    return-object v11

    .line 188
    .end local v3    # "nextLp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v13    # "nextChild":Landroid/view/View;
    .end local v14    # "compareSpans":Z
    :cond_d
    :goto_6
    add-int/2addr v10, v7

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 229
    .end local v10    # "i":I
    :cond_e
    const/4 v3, 0x0

    return-object v3
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 315
    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .line 103
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLayoutRTL()Z
    .locals 2

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2
    .param p1, "dx"    # I

    .line 990
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2
    .param p1, "dy"    # I

    .line 998
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1002
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V
    .locals 2
    .param p1, "oldAdapter"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 162
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 169
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;
    .locals 11
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p4, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1691
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1692
    return-object v1

    .line 1695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1696
    .local v0, "directChild":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1697
    return-object v1

    .line 1700
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 1701
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    .line 1702
    .local v2, "layoutDir":I
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    .line 1703
    return-object v1

    .line 1705
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1706
    .local v3, "prevFocusLayoutParams":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 1707
    .local v4, "prevFocusFullSpan":Z
    iget-object v5, v3, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1709
    .local v5, "prevFocusSpan":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    .line 1710
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v7

    .local v7, "referenceChildPosition":I
    goto :goto_0

    .line 1712
    .end local v7    # "referenceChildPosition":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v7

    .line 1714
    .restart local v7    # "referenceChildPosition":I
    :goto_0
    invoke-direct {p0, v7, p4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1715
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 1717
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v9, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v9, v7

    iput v9, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 1718
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    const v9, 0x3eaaaaab

    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v9, v10

    iput v9, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    .line 1719
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iput-boolean v6, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 1720
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 1721
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {p0, p3, v8, p4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    .line 1722
    iget-boolean v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 1723
    if-nez v4, :cond_4

    .line 1724
    invoke-virtual {v5, v7, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v8

    .line 1725
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_4

    if-eq v8, v0, :cond_4

    .line 1726
    return-object v8

    .line 1730
    .end local v8    # "view":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1731
    iget v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v8, v6

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_6

    .line 1732
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v10, v10, v8

    invoke-virtual {v10, v7, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v10

    .line 1733
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_5

    if-eq v10, v0, :cond_5

    .line 1734
    return-object v10

    .line 1731
    .end local v10    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .end local v8    # "i":I
    :cond_6
    goto :goto_3

    .line 1738
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    iget v10, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v10, :cond_9

    .line 1739
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v10, v10, v8

    invoke-virtual {v10, v7, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v10

    .line 1740
    .restart local v10    # "view":Landroid/view/View;
    if-eqz v10, :cond_8

    if-eq v10, v0, :cond_8

    .line 1741
    return-object v10

    .line 1738
    .end local v10    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1746
    .end local v8    # "i":I
    :cond_9
    :goto_3
    iget-boolean v8, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr v8, v6

    const/4 v10, -0x1

    if-ne v2, v10, :cond_a

    move v10, v6

    goto :goto_4

    :cond_a
    move v10, v9

    :goto_4
    if-ne v8, v10, :cond_b

    move v9, v6

    :cond_b
    move v8, v9

    .line 1747
    .local v8, "shouldSearchFromStart":Z
    const/4 v9, 0x0

    .line 1748
    .local v9, "unfocusableCandidate":Landroid/view/View;
    if-nez v4, :cond_d

    .line 1749
    if-eqz v8, :cond_c

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v10

    goto :goto_5

    :cond_c
    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v10

    :goto_5
    invoke-virtual {p0, v10}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    .line 1750
    if-eqz v9, :cond_d

    if-eq v9, v0, :cond_d

    .line 1751
    return-object v9

    .line 1755
    :cond_d
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1756
    iget v10, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v10, v6

    .local v10, "i":I
    :goto_6
    if-ltz v10, :cond_11

    .line 1757
    iget v6, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    if-ne v10, v6, :cond_e

    .line 1758
    goto :goto_8

    .line 1760
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    if-eqz v8, :cond_f

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v6

    goto :goto_7

    :cond_f
    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v6

    :goto_7
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 1761
    .end local v9    # "unfocusableCandidate":Landroid/view/View;
    .local v6, "unfocusableCandidate":Landroid/view/View;
    if-eqz v6, :cond_10

    if-eq v6, v0, :cond_10

    .line 1762
    return-object v6

    .line 1756
    :cond_10
    move-object v9, v6

    .end local v6    # "unfocusableCandidate":Landroid/view/View;
    .restart local v9    # "unfocusableCandidate":Landroid/view/View;
    :goto_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .end local v10    # "i":I
    :cond_11
    goto :goto_b

    .line 1766
    :cond_12
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    iget v10, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v10, :cond_15

    .line 1767
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    if-eqz v8, :cond_13

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v10

    goto :goto_a

    :cond_13
    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v10

    :goto_a
    invoke-virtual {p0, v10}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    .line 1768
    if-eqz v9, :cond_14

    if-eq v9, v0, :cond_14

    .line 1769
    return-object v9

    .line 1766
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1773
    .end local v6    # "i":I
    :cond_15
    :goto_b
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 850
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 851
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v1

    .line 853
    .local v1, "start":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    .line 854
    .local v0, "end":Landroid/view/View;
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 858
    .local v2, "startPos":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 859
    .local v3, "endPos":I
    if-ge v2, v3, :cond_1

    .line 860
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 861
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_1

    .line 863
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 864
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_1

    .line 855
    .end local v2    # "startPos":I
    .end local v3    # "endPos":I
    :cond_2
    :goto_0
    return-void

    .line 867
    .end local v0    # "end":Landroid/view/View;
    .end local v1    # "start":Landroid/view/View;
    :cond_3
    :goto_1
    return-void
.end method

.method public onItemsAdded(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 1011
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1012
    return-void
.end method

.method public onItemsChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1017
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1018
    return-void
.end method

.method public onItemsMoved(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 1022
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1023
    return-void
.end method

.method public onItemsRemoved(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 1006
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1007
    return-void
.end method

.method public onItemsUpdated(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 1027
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1028
    return-void
.end method

.method public onLayoutChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Z)V

    .line 353
    return-void
.end method

.method public onLayoutCompleted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 468
    invoke-super {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 470
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 472
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 473
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 789
    instance-of v0, p1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_1

    .line 790
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 791
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 792
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 793
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_0

    .line 797
    :cond_1
    const-string v0, "StaggeredGridLManager"

    const-string v1, "invalid saved state class"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 803
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    return-object v0

    .line 806
    :cond_0
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 807
    .local v0, "state":Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 808
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 809
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 811
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 813
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v1, v1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 814
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    goto :goto_0

    .line 816
    :cond_1
    iput v2, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 819
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 820
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 821
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 822
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 823
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 824
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_5

    .line 826
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_3

    .line 827
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 828
    .local v2, "line":I
    if-eq v2, v3, :cond_4

    .line 829
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_3

    .line 832
    .end local v2    # "line":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 833
    .restart local v2    # "line":I
    if-eq v2, v3, :cond_4

    .line 834
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    .line 837
    :cond_4
    :goto_3
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v2, v3, v1

    .line 824
    .end local v2    # "line":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_5
    goto :goto_4

    .line 840
    :cond_6
    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 841
    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 842
    iput v2, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 844
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved state:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StaggeredGridLManager"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 158
    :cond_0
    return-void
.end method

.method prepareLayoutStateForDelta(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 4
    .param p1, "delta"    # I
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1583
    if-lez p1, :cond_0

    .line 1584
    const/4 v0, 0x1

    .line 1585
    .local v0, "layoutDir":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    .local v1, "referenceChildPosition":I
    goto :goto_0

    .line 1587
    .end local v0    # "layoutDir":I
    .end local v1    # "referenceChildPosition":I
    :cond_0
    const/4 v0, -0x1

    .line 1588
    .restart local v0    # "layoutDir":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    .line 1590
    .restart local v1    # "referenceChildPosition":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 1591
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1592
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 1593
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 1594
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    .line 1595
    return-void
.end method

.method scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 6
    .param p1, "dt"    # I
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1598
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1602
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1603
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {p0, p2, v0, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->fill(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    .line 1604
    .local v0, "consumed":I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iget v2, v2, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    .line 1606
    .local v2, "available":I
    if-ge v2, v0, :cond_1

    .line 1607
    move v3, p1

    .local v3, "totalScroll":I
    goto :goto_0

    .line 1608
    .end local v3    # "totalScroll":I
    :cond_1
    if-gez p1, :cond_2

    .line 1609
    neg-int v3, v0

    .restart local v3    # "totalScroll":I
    goto :goto_0

    .line 1611
    .end local v3    # "totalScroll":I
    :cond_2
    move v3, v0

    .line 1613
    .restart local v3    # "totalScroll":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scrolled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StaggeredGridLManager"

    invoke-static {v5, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    neg-int v5, v3

    invoke-virtual {v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1616
    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 1617
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    iput v1, v4, Lcom/samsung/android/ui/recyclerview/widget/LayoutState;->mAvailable:I

    .line 1618
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Lcom/samsung/android/ui/recyclerview/widget/LayoutState;

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/LayoutState;)V

    .line 1619
    return v3

    .line 1599
    .end local v0    # "consumed":I
    .end local v2    # "available":I
    .end local v3    # "totalScroll":I
    :cond_3
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1492
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1534
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1537
    :cond_0
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 1538
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 1539
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1540
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 1543
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1544
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1546
    :cond_0
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 1547
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 1548
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1549
    return-void
.end method

.method public scrollVerticallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1497
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 2
    .param p1, "gapStrategy"    # I

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 291
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    :goto_0
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 299
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    .local v0, "horizontalPadding":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 338
    .local v1, "verticalPadding":I
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    .line 340
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v3

    invoke-static {p3, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v3

    .line 341
    .local v3, "height":I
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v5

    invoke-static {p2, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v2

    .line 342
    .local v2, "width":I
    goto :goto_0

    .line 343
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    .line 344
    .local v2, "usedWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v3

    .line 345
    .local v3, "width":I
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v5

    invoke-static {p3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v4

    move v2, v3

    move v3, v4

    .line 347
    .local v2, "width":I
    .local v3, "height":I
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    .line 348
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 262
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 266
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    .line 267
    return-void

    .line 269
    :cond_2
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 270
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 271
    .local v0, "tmp":Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 272
    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 274
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 281
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 283
    return-void
.end method

.method public setSpanCount(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 251
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 252
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 253
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;-><init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v2, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 259
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p3, "position"    # I

    .line 1527
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 1528
    .local v0, "scroller":Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/samsung/android/ui/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 1529
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->startSmoothScroll(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;)V

    .line 1530
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateAnchorFromPendingData(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 580
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    .line 583
    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_7

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v0, v4, :cond_2

    goto :goto_0

    .line 633
    :cond_2
    iput v3, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 634
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_6

    .line 590
    :cond_3
    :goto_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 592
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 593
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v1, v3, :cond_6

    .line 594
    iget-boolean v1, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_5

    .line 595
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v1, v2

    .line 596
    .local v1, "target":I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    iput v2, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 597
    .end local v1    # "target":I
    goto :goto_2

    .line 598
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v1, v2

    .line 599
    .restart local v1    # "target":I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    iput v2, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 601
    .end local v1    # "target":I
    :goto_2
    return v4

    .line 604
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 605
    .local v1, "childSize":I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 606
    iget-boolean v2, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    :goto_3
    iput v2, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 607
    return v4

    .line 610
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v2, v5

    .line 611
    .local v2, "startGap":I
    if-gez v2, :cond_9

    .line 612
    neg-int v3, v2

    iput v3, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 613
    return v4

    .line 615
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 616
    .local v5, "endGap":I
    if-gez v5, :cond_a

    .line 617
    iput v5, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 618
    return v4

    .line 620
    :cond_a
    iput v3, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 621
    .end local v1    # "childSize":I
    .end local v2    # "startGap":I
    .end local v5    # "endGap":I
    goto :goto_5

    .line 622
    :cond_b
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v2, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 623
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v2, v3, :cond_d

    .line 624
    iget v2, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v2

    .line 625
    .local v2, "position":I
    if-ne v2, v4, :cond_c

    move v1, v4

    :cond_c
    iput-boolean v1, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 626
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 627
    .end local v2    # "position":I
    goto :goto_4

    .line 628
    :cond_d
    invoke-virtual {p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    .line 630
    :goto_4
    iput-boolean v4, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 632
    .end local v0    # "child":Landroid/view/View;
    :goto_5
    nop

    .line 636
    :goto_6
    return v4

    .line 584
    :cond_e
    :goto_7
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 585
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 586
    return v1

    .line 581
    :cond_f
    :goto_8
    return v1
.end method

.method updateAnchorInfoForLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    return-void

    .line 568
    :cond_1
    const-string v0, "StaggeredGridLManager"

    const-string v1, "Deciding anchor info from fresh state"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 570
    const/4 v0, 0x0

    iput v0, p2, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 571
    return-void
.end method

.method updateMeasureSpecs(I)V
    .locals 1
    .param p1, "totalSpace"    # I

    .line 640
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 641
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 642
    return-void
.end method
