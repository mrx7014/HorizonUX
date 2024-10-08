.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.super Landroid/view/ViewGroup;
.source "SeslRecyclerView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimatorRestoreListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ChildDrawingOrderCallback;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SimpleOnItemTouchListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Orientation;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObservable;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FOCUS_MOVE_DOWN:I = 0x1

.field private static final FOCUS_MOVE_FULL_DOWN:I = 0x3

.field private static final FOCUS_MOVE_FULL_UP:I = 0x2

.field private static final FOCUS_MOVE_UP:I = 0x0

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final MOTION_EVENT_ACTION_PEN_DOWN:I = 0xd3

.field private static final MOTION_EVENT_ACTION_PEN_MOVE:I = 0xd5

.field private static final MOTION_EVENT_ACTION_PEN_UP:I = 0xd4

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "SeslRecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field mAccessibilityDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

.field mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

.field mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mAlwaysDisableHoverHighlight:Z

.field mAnimatedBlackTop:I

.field private final mAutoHide:Ljava/lang/Runnable;

.field mBlackTop:I

.field private mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ChildDrawingOrderCallback;

.field public mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

.field mClipToPadding:Z

.field private mCloseChildByBottom:Landroid/view/View;

.field private mCloseChildByTop:Landroid/view/View;

.field private mCloseChildPositionByBottom:I

.field private mCloseChildPositionByTop:I

.field private mContext:Landroid/content/Context;

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mDistanceFromCloseChildBottom:I

.field private mDistanceFromCloseChildTop:I

.field mDrawLastItemOutlineStoke:Z

.field mDrawLastOutLineStroke:Z

.field mDrawOutlineStroke:Z

.field mDrawRect:Z

.field mDrawReverse:Z

.field mDrawWhiteTheme:Z

.field private mEatenAccessibilityChangeFlags:I

.field mEnableFastScroller:Z

.field private mEnableGoToTop:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

.field private mFastScrollerEnabled:Z

.field private mFastScrollerEventListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;

.field mFirstLayoutComplete:Z

.field mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

.field private final mGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mGoToTopBottomPadding:I

.field private mGoToTopElevation:I

.field private mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

.field public mGoToTopImmersiveBottomPadding:I

.field private mGoToTopLastState:I

.field private mGoToTopMoved:Z

.field private mGoToTopRect:Landroid/graphics/Rect;

.field private mGoToTopSize:I

.field private mGoToTopState:I

.field public mGoToTopView:Landroid/widget/ImageView;

.field private mGoToToping:Z

.field mHasFixedSize:Z

.field private mHasNestedScrollRange:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/os/Handler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveringEnabled:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTopOffsetOfScreen:I

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mIsArrowKeyPressed:Z

.field mIsAttached:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlKeyPressed:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenMoveEvent:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsMouseWheel:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenDragBlockEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsPenSelectionEnabled:Z

.field private mIsSendHoverScrollState:Z

.field mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field mLastBlackTop:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutWasDefered:Z

.field private mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private mNavigationBarHeight:I

.field private mNeedsHoverScroll:Z

.field private final mNestedOffsets:[I

.field private mNestedScroll:Z

.field private mNestedScrollRange:I

.field private mNewTextViewHoverState:Z

.field private final mObserver:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;

.field private mOldHoverScrollDirection:I

.field private mOldTextViewHoverState:Z

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMultiSelectedListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;

.field private mPenDistanceFromTrackedChildTop:I

.field private mPenDragBlockBottom:I

.field private mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mPenDragBlockLeft:I

.field private mPenDragBlockRect:Landroid/graphics/Rect;

.field private mPenDragBlockRight:I

.field private mPenDragBlockTop:I

.field private mPenDragEndX:I

.field private mPenDragEndY:I

.field private mPenDragScrollTimeInterval:J

.field private mPenDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenDragSelectedViewPosition:I

.field private mPenDragStartX:I

.field private mPenDragStartY:I

.field private mPenTrackedChild:Landroid/view/View;

.field private mPenTrackedChildPosition:I

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field private mRectColor:I

.field private mRectPaint:Landroid/graphics/Paint;

.field final mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

.field mRecyclerListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerListener;

.field private mRemainNestedScrollRange:I

.field private mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private final mScrollConsumed:[I

.field private mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSeslOnGoToTopClickListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;

.field private mSeslPagingTouchSlop:I

.field private mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

.field private mSeslTouchSlop:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSizeChnage:Z

.field final mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

.field private mStrokeColor:I

.field private mStrokeHeight:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mUsePagingTouchSlopForStylus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

.field private final mWindowOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 101
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100eb

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 129
    new-array v1, v0, [I

    const v2, 0x1010436

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 347
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 348
    const/4 v1, 0x0

    .local v1, "var0":Z
    goto :goto_0

    .line 350
    .end local v1    # "var0":Z
    :cond_0
    const/4 v1, 0x1

    .line 353
    .restart local v1    # "var0":Z
    :goto_0
    sput-boolean v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 354
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_1

    .line 355
    const/4 v1, 0x1

    goto :goto_1

    .line 357
    :cond_1
    const/4 v1, 0x0

    .line 360
    :goto_1
    sput-boolean v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 361
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    .line 362
    const/4 v1, 0x1

    goto :goto_2

    .line 364
    :cond_2
    const/4 v1, 0x0

    .line 367
    :goto_2
    sput-boolean v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 368
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_3

    .line 369
    const/4 v1, 0x1

    goto :goto_3

    .line 371
    :cond_3
    const/4 v1, 0x0

    .line 374
    :goto_3
    sput-boolean v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 375
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-gt v2, v4, :cond_4

    .line 376
    const/4 v1, 0x1

    goto :goto_4

    .line 378
    :cond_4
    const/4 v1, 0x0

    .line 381
    :goto_4
    sput-boolean v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 382
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v4, :cond_5

    .line 383
    const/4 v1, 0x1

    goto :goto_5

    .line 385
    :cond_5
    const/4 v1, 0x0

    .line 388
    :goto_5
    sput-boolean v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 389
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sput-object v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 390
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$1;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 396
    .end local v1    # "var0":Z
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 399
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 408
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 409
    const/4 v10, 0x0

    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslTouchSlop:I

    .line 410
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslPagingTouchSlop:I

    .line 411
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mUsePagingTouchSlopForStylus:Z

    .line 412
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mObserver:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;

    .line 413
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-direct {v0, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    .line 414
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    .line 415
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$2;

    invoke-direct {v0, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$2;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 429
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 431
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 434
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslOnGoToTopClickListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;

    .line 435
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    .line 436
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 437
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchItemsChangedEvent:Z

    .line 438
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 439
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    .line 440
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    .line 441
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    .line 442
    const/4 v0, -0x1

    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 443
    const/4 v1, 0x1

    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScaledHorizontalScrollFactor:F

    .line 444
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScaledVerticalScrollFactor:F

    .line 445
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    .line 446
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    invoke-direct {v1, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    .line 448
    sget-boolean v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_0

    .line 449
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    move-object v13, v1

    .local v1, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;
    goto :goto_0

    .line 451
    .end local v1    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;
    :cond_0
    const/4 v1, 0x0

    move-object v13, v1

    .line 454
    .local v13, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;
    :goto_0
    iput-object v13, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    .line 455
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-direct {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;-><init>()V

    iput-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 456
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 457
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsChanged:Z

    .line 458
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v1, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimatorListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 459
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    .line 460
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    .line 461
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    .line 462
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollConsumed:[I

    .line 463
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    .line 464
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mWindowOffsets:[I

    .line 465
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectionEnabled:Z

    .line 466
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 467
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    .line 468
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    .line 469
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 470
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    .line 471
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 472
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 473
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 474
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 475
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 476
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 477
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 478
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 479
    iput-object v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 480
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .line 481
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 482
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    .line 483
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTopOffsetOfScreen:I

    .line 484
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    .line 485
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScrollRange:I

    .line 486
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    .line 487
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    .line 488
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    .line 489
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 490
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    .line 491
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsMouseWheel:Z

    .line 492
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScroll:Z

    .line 493
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScrollerEnabled:Z

    .line 494
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    .line 495
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSizeChnage:Z

    .line 496
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToping:Z

    .line 497
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopMoved:Z

    .line 498
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 499
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    .line 500
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopLastState:I

    .line 501
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mShowGTPAtFirstTime:Z

    .line 502
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    .line 503
    const/16 v2, 0x9c4

    iput v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->GO_TO_TOP_HIDE:I

    .line 504
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawRect:Z

    .line 505
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawOutlineStroke:Z

    .line 506
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawLastItemOutlineStoke:Z

    .line 507
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawWhiteTheme:Z

    .line 508
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawLastOutLineStroke:Z

    .line 509
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawReverse:Z

    .line 510
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    .line 511
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastBlackTop:I

    .line 512
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAnimatedBlackTop:I

    .line 513
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectPaint:Landroid/graphics/Paint;

    .line 514
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    .line 515
    const/high16 v2, 0x41200000    # 10.0f

    iput v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->HOVERSCROLL_SPEED:F

    .line 516
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoveringEnabled:Z

    .line 517
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenHovered:Z

    .line 518
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAlwaysDisableHoverHighlight:Z

    .line 519
    iput-object v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 520
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    .line 521
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 522
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOldTextViewHoverState:Z

    .line 523
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNewTextViewHoverState:Z

    .line 524
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollSpeed:I

    .line 525
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionDurationTime:J

    .line 526
    iput-wide v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionCurrentTime:J

    .line 527
    iput-wide v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 528
    const-wide/16 v4, 0x12c

    iput-wide v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollTimeInterval:J

    .line 529
    const-wide/16 v4, 0x1f4

    iput-wide v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragScrollTimeInterval:J

    .line 530
    iput-wide v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 531
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 532
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 533
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    .line 534
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->HOVERSCROLL_DELAY:I

    .line 535
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    .line 536
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    .line 537
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 538
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    .line 539
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollEnable:Z

    .line 540
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateChanged:Z

    .line 541
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 542
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    .line 543
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    .line 544
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 545
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mExtraPaddingInTopHoverArea:I

    .line 546
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mExtraPaddingInBottomHoverArea:I

    .line 547
    iput-boolean v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCloseChildSetted:Z

    .line 548
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOldHoverScrollDirection:I

    .line 549
    iput-object v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mCloseChildByTop:Landroid/view/View;

    .line 550
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mCloseChildPositionByTop:I

    .line 551
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDistanceFromCloseChildTop:I

    .line 552
    iput-object v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mCloseChildByBottom:Landroid/view/View;

    .line 553
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mCloseChildPositionByBottom:I

    .line 554
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDistanceFromCloseChildBottom:I

    .line 555
    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/os/Looper;)V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    .line 730
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 731
    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$4;

    invoke-direct {v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$4;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 740
    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$5;

    invoke-direct {v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$5;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoProcessCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;

    .line 766
    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$6;

    invoke-direct {v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$6;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 771
    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$7;

    invoke-direct {v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$7;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 776
    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$8;

    invoke-direct {v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$8;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    .line 781
    iput-object v7, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    .line 782
    if-eqz v8, :cond_1

    .line 783
    sget-object v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 784
    .local v2, "var9":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    .line 785
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 786
    .end local v2    # "var9":Landroid/content/res/TypedArray;
    goto :goto_1

    .line 787
    :cond_1
    iput-boolean v12, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    .line 790
    :goto_1
    invoke-virtual {v6, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollContainer(Z)V

    .line 791
    invoke-virtual {v6, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setFocusableInTouchMode(Z)V

    .line 792
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslInitConfigurations(Landroid/content/Context;)V

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 795
    const/4 v2, 0x1

    .local v2, "var5":Z
    goto :goto_2

    .line 797
    .end local v2    # "var5":Z
    :cond_2
    const/4 v2, 0x0

    .line 800
    .restart local v2    # "var5":Z
    :goto_2
    invoke-virtual {v6, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setWillNotDraw(Z)V

    .line 801
    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    iget-object v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimatorListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->setListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->initAdapterManager()V

    .line 803
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->initChildrenHelper()V

    .line 804
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_3

    .line 805
    invoke-static {v6, v12}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 808
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 809
    new-instance v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    invoke-direct {v3, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {v6, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setAccessibilityDelegateCompat(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;)V

    .line 810
    const/4 v14, 0x1

    .line 811
    .end local v2    # "var5":Z
    .local v14, "var5":Z
    const/high16 v2, 0x40000

    if-eqz v8, :cond_6

    .line 812
    sget-object v3, Lcom/mesalabs/ten/update/R$styleable;->SeslRecyclerView:[I

    invoke-virtual {v7, v8, v3, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 813
    .local v15, "var6":Landroid/content/res/TypedArray;
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 814
    .local v16, "var10":Ljava/lang/String;
    invoke-virtual {v15, v12, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 815
    invoke-virtual {v6, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setDescendantFocusability(I)V

    .line 818
    :cond_4
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 819
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 820
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 821
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 822
    .local v0, "var7":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 823
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 825
    .end local v0    # "var7":Landroid/content/res/TypedArray;
    .end local v15    # "var6":Landroid/content/res/TypedArray;
    .end local v16    # "var10":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 826
    :cond_6
    invoke-virtual {v6, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setDescendantFocusability(I)V

    .line 829
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 830
    .local v0, "var8":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 831
    .local v1, "var11":Landroid/util/TypedValue;
    const v2, 0x7f08013a

    invoke-virtual {v0, v2, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 832
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0401a2

    invoke-virtual {v2, v3, v1, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 833
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

    .line 836
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0402e5

    invoke-virtual {v2, v3, v1, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 837
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_8

    .line 838
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectColor:I

    .line 841
    :cond_8
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectPaint:Landroid/graphics/Paint;

    iget v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 842
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 844
    iput v10, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokeColor:I

    .line 846
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 847
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 848
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->setHostView(Landroid/view/View;)V

    .line 849
    new-instance v2, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    .line 850
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    .line 851
    invoke-virtual {v6, v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setNestedScrollingEnabled(Z)V

    .line 852
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # J

    .line 98
    iput-wide p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionDurationTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # J

    .line 98
    iput-wide p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionDurationTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->HOVERSCROLL_SPEED:F

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mCloseChildByBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOldHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOldHoverScrollDirection:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCloseChildSetted:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCloseChildSetted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDistanceFromCloseChildBottom:I

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mCloseChildPositionByBottom:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mCloseChildByTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDistanceFromCloseChildTop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mCloseChildPositionByTop:I

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenHovered:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setupGoToTop(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->autoHide(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    return v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->updateLongPressMultiSelection(IIZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRangeBy(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->playGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->playGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$4802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$5100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$5400()Z
    .locals 1

    .line 98
    sget-boolean v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollConsumed:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenPressed:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    return v0
.end method

.method static synthetic access$6200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    return-object v0
.end method

.method static synthetic access$6300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScroll:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;FFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    return-object v0
.end method

.method private addAnimatingView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 855
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 857
    .local v0, "var2":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 858
    const/4 v1, 0x1

    .local v1, "var3":Z
    goto :goto_0

    .line 860
    .end local v1    # "var3":Z
    :cond_0
    const/4 v1, 0x0

    .line 863
    .restart local v1    # "var3":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->unscrapView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 864
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 865
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    .line 866
    :cond_1
    if-nez v1, :cond_2

    .line 867
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 869
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->hide(Landroid/view/View;)V

    .line 872
    :goto_1
    return-void
.end method

.method private adjustNestedScrollRange()V
    .locals 5

    .line 875
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLocationInWindow([I)V

    .line 876
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScrollRange:I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTopOffsetOfScreen:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mWindowOffsets:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    sub-int v4, v1, v4

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    .line 877
    aget v4, v2, v3

    sub-int/2addr v1, v4

    if-gez v1, :cond_0

    .line 878
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScrollRange:I

    .line 879
    aget v0, v2, v3

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTopOffsetOfScreen:I

    .line 882
    :cond_0
    return-void
.end method

.method private adjustNestedScrollRangeBy(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 885
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    if-eqz v0, :cond_2

    .line 886
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    .line 887
    if-gez v0, :cond_1

    .line 888
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    goto :goto_0

    .line 889
    :cond_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScrollRange:I

    if-le v0, v1, :cond_2

    .line 890
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    .line 894
    :cond_2
    :goto_0
    return-void
.end method

.method private animateChange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "var4"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .param p5, "var5"    # Z
    .param p6, "var6"    # Z

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 898
    if-eqz p5, :cond_0

    .line 899
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addAnimatingView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 902
    :cond_0
    if-eq p1, p2, :cond_2

    .line 903
    if-eqz p6, :cond_1

    .line 904
    invoke-direct {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addAnimatingView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 907
    :cond_1
    iput-object p2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mShadowedHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 908
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addAnimatingView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 909
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->unscrapView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 910
    invoke-virtual {p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 911
    iput-object p1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->animateChange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 915
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->postAnimationRunner()V

    .line 918
    :cond_3
    return-void
.end method

.method private autoHide(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 921
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 922
    if-nez p1, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslIsFastScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 925
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 927
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 929
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 933
    :cond_1
    :goto_0
    return-void
.end method

.method private canScrollDown()Z
    .locals 6

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "var1":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v1

    .line 938
    .local v1, "var2":I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-nez v2, :cond_0

    .line 939
    const-string v2, "SeslRecyclerView"

    const-string v3, "No adapter attached; skipping canScrollDown"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 943
    const/4 v2, 0x1

    .local v2, "var3":Z
    goto :goto_0

    .line 945
    .end local v2    # "var3":Z
    :cond_1
    const/4 v2, 0x0

    .line 948
    .restart local v2    # "var3":Z
    :goto_0
    move v0, v2

    .line 949
    if-nez v2, :cond_3

    .line 950
    move v0, v2

    .line 951
    if-lez v1, :cond_3

    .line 952
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_2

    .line 953
    const/4 v0, 0x1

    goto :goto_1

    .line 955
    :cond_2
    const/4 v0, 0x0

    .line 961
    .end local v2    # "var3":Z
    :cond_3
    :goto_1
    return v0
.end method

.method private canScrollUp()Z
    .locals 4

    .line 966
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 967
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 969
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 972
    .restart local v0    # "var1":Z
    :goto_0
    move v1, v0

    .line 973
    .local v1, "var2":Z
    if-nez v0, :cond_2

    .line 974
    move v1, v0

    .line 975
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 976
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 977
    const/4 v1, 0x1

    goto :goto_1

    .line 979
    :cond_1
    const/4 v1, 0x0

    .line 984
    :cond_2
    :goto_1
    return v1
.end method

.method private cancelTouch()V
    .locals 1

    .line 988
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->resetTouch()V

    .line 989
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 990
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 3
    .param p0, "var0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 993
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 994
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 997
    .local v0, "var1":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_0

    .line 998
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 999
    goto :goto_2

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 1003
    goto :goto_2

    .line 1006
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1007
    .local v1, "var2":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1008
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 1010
    :cond_2
    const/4 v0, 0x0

    .line 1012
    .end local v1    # "var2":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 1015
    .end local v0    # "var1":Landroid/view/View;
    :cond_3
    :goto_2
    return-void
.end method

.method private contentFits()Z
    .locals 5

    .line 1018
    const/4 v0, 0x1

    .line 1019
    .local v0, "var1":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v1

    .line 1020
    .local v1, "var2":I
    if-eqz v1, :cond_2

    .line 1021
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1022
    const/4 v0, 0x0

    goto :goto_0

    .line 1023
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 1024
    :cond_1
    const/4 v0, 0x0

    .line 1028
    :cond_2
    :goto_0
    return v0
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 1032
    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_1

    .line 1033
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1034
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1035
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1038
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 1041
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1043
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1045
    .local v3, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    const/4 v4, 0x0

    .line 1047
    .local v4, "constructorArgs":[Ljava/lang/Object;
    const/4 v5, 0x1

    :try_start_1
    sget-object v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 1048
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p3, v7, v5

    const/4 v8, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v7

    .line 1056
    goto :goto_1

    .line 1049
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v6

    .line 1051
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1055
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    move-object v6, v2

    .line 1057
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    :goto_1
    :try_start_3
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1058
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setLayoutManager(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    .line 1069
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    .end local v4    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    goto/16 :goto_2

    .line 1052
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v3    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    .restart local v4    # "constructorArgs":[Ljava/lang/Object;
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 1053
    .local v2, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2, v6}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1054
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Error creating LayoutManager "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "defStyleAttr":I
    .end local p5    # "defStyleRes":I
    throw v5
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1067
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v3    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;>;"
    .end local v4    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "attrs":Landroid/util/AttributeSet;
    .restart local p4    # "defStyleAttr":I
    .restart local p5    # "defStyleRes":I
    :catch_2
    move-exception v0

    .line 1068
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Class is not a LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1065
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v0

    .line 1066
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Cannot access non-public constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1063
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1061
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v1

    .line 1062
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1059
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unable to find LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1072
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_2
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1075
    const/4 v0, 0x0

    .line 1076
    .local v0, "var3":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 1077
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eq v1, p2, :cond_1

    .line 1078
    :cond_0
    const/4 v0, 0x1

    .line 1081
    :cond_1
    return v0
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .line 1086
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 1087
    .local v0, "var1":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 1088
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1090
    .local v1, "var2":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1091
    invoke-static {v1, v0}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 1092
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1095
    .end local v1    # "var2":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 10

    .line 1098
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->assertLayoutStep(I)V

    .line 1099
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->fillRemainingScrollValues(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1100
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 1101
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->clear()V

    .line 1103
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 1104
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 1105
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->saveFocusInfo()V

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1108
    .local v0, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsChanged:Z

    if-eqz v2, :cond_0

    .line 1109
    const/4 v2, 0x1

    .local v2, "var2":Z
    goto :goto_0

    .line 1111
    .end local v2    # "var2":Z
    :cond_0
    const/4 v2, 0x0

    .line 1114
    .restart local v2    # "var2":Z
    :goto_0
    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    .line 1115
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsChanged:Z

    .line 1116
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 1117
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 1118
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    .line 1119
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 1122
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_3

    .line 1123
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v3

    .line 1125
    .local v3, "var3":I
    const/4 v4, 0x0

    .local v4, "var4":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 1126
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v5, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v5

    .line 1127
    .local v5, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1128
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-static {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I

    move-result v8

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v6

    .line 1129
    .local v6, "var9":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToPreLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 1130
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1131
    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChangedHolderKey(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)J

    move-result-wide v7

    .line 1132
    .local v7, "var6":J
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v9, v7, v8, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToOldChangeHolders(JLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 1125
    .end local v5    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v6    # "var9":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v7    # "var6":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1138
    .end local v3    # "var3":I
    .end local v4    # "var4":I
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v3, :cond_8

    .line 1139
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->saveOldPositions()V

    .line 1140
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v2, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 1141
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v1, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 1142
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onLayoutChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1143
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v2, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 1145
    const/4 v3, 0x0

    .local v3, "var4":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1146
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    .line 1147
    .local v4, "var10":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v5, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->isInPreLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1148
    invoke-static {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I

    move-result v5

    .line 1149
    .local v5, "var8":I
    const/16 v6, 0x2000

    invoke-virtual {v4, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v2

    .line 1150
    move v6, v5

    .line 1151
    .local v6, "var3":I
    if-nez v2, :cond_4

    .line 1152
    or-int/lit16 v6, v5, 0x1000

    .line 1155
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v8, v4, v6, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 1156
    .local v7, "var11":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v2, :cond_5

    .line 1157
    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_3

    .line 1159
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v8, v4, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToAppearedInPreLayoutHolders(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 1145
    .end local v4    # "var10":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v5    # "var8":I
    .end local v6    # "var3":I
    .end local v7    # "var11":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1164
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->clearOldPositions()V

    goto :goto_4

    .line 1166
    .end local v3    # "var4":I
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->clearOldPositions()V

    .line 1169
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 1170
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1171
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v3, 0x2

    iput v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 1172
    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 5

    .line 1175
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 1176
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 1177
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->assertLayoutStep(I)V

    .line 1178
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->consumeUpdatesInOnePass()V

    .line 1179
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    .line 1180
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 1182
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onLayoutChildren(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1183
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 1184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    .line 1185
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 1187
    .local v0, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    .line 1188
    const/4 v2, 0x1

    .local v2, "var2":Z
    goto :goto_0

    .line 1190
    .end local v2    # "var2":Z
    :cond_0
    const/4 v2, 0x0

    .line 1193
    .restart local v2    # "var2":Z
    :goto_0
    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    .line 1194
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v4, 0x4

    iput v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 1195
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 1196
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1197
    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 18

    .line 1200
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->assertLayoutStep(I)V

    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 1203
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v8, 0x1

    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 1205
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    .line 1206
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "var1":I
    :goto_0
    if-ltz v9, :cond_4

    .line 1207
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v10

    .line 1208
    .local v10, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1209
    invoke-virtual {v7, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChangedHolderKey(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)J

    move-result-wide v11

    .line 1210
    .local v11, "var3":J
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->recordPostLayoutInformation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 1211
    .local v0, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->getFromOldChangeHolders(J)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v13

    .line 1212
    .local v13, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1213
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->isDisappearing(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v14

    .line 1214
    .local v14, "var7":Z
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->isDisappearing(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v15

    .line 1215
    .local v15, "var8":Z
    if-eqz v14, :cond_0

    if-ne v13, v10, :cond_0

    .line 1216
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v10, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToPostLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_2

    .line 1218
    :cond_0
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->popFromPreLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v16

    .line 1219
    .local v16, "var9":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v10, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToPostLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 1220
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->popFromPostLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v17

    .line 1221
    .end local v0    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .local v17, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v16, :cond_1

    .line 1222
    invoke-direct {v7, v11, v12, v10, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->handleMissingPreInfoForChangeError(JLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_1

    .line 1224
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->animateChange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    .line 1227
    .end local v14    # "var7":Z
    .end local v15    # "var8":Z
    .end local v16    # "var9":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_1
    move-object/from16 v0, v17

    .end local v17    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .restart local v0    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_2
    goto :goto_3

    .line 1228
    :cond_2
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v1, v10, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToPostLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 1206
    .end local v0    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v10    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v11    # "var3":J
    .end local v13    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 1233
    :cond_4
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoProcessCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->process(Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$ProcessCallback;)V

    .line 1236
    .end local v9    # "var1":I
    :cond_5
    iget v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    iput v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastBlackTop:I

    .line 1237
    const/4 v0, -0x1

    iput v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    .line 1238
    iget-boolean v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawRect:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v7, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1239
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v8

    .line 1240
    .local v0, "var1":I
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    .line 1241
    .local v1, "var11":Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;
    iget-boolean v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-eqz v3, :cond_6

    .line 1242
    iput-boolean v8, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawReverse:Z

    .line 1243
    const/4 v0, 0x0

    goto :goto_4

    .line 1244
    :cond_6
    iget-boolean v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mReverseLayout:Z

    if-nez v3, :cond_7

    iget-boolean v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->mStackFromEnd:Z

    if-eqz v3, :cond_8

    .line 1245
    :cond_7
    iput-boolean v2, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawRect:Z

    .line 1246
    const/4 v0, -0x1

    .line 1249
    :cond_8
    :goto_4
    if-ltz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findLastVisibleItemPosition()I

    move-result v3

    if-gt v0, v3, :cond_a

    .line 1250
    iget-object v3, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1251
    .local v3, "var12":Landroid/view/View;
    if-eqz v3, :cond_a

    .line 1252
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    .line 1253
    invoke-virtual {v7, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1254
    const/4 v4, -0x1

    .line 1255
    .local v4, "var10":I
    if-eqz v3, :cond_9

    .line 1256
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1259
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchLayoutStep3, lastPosition : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mBlackTop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tempView bottom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDrawReverse : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawReverse:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SeslRecyclerView"

    invoke-static {v6, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    .end local v0    # "var1":I
    .end local v1    # "var11":Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;
    .end local v3    # "var12":Landroid/view/View;
    .end local v4    # "var10":I
    :cond_a
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 1265
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mPreviousLayoutItemCount:I

    .line 1266
    iput-boolean v2, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 1267
    iput-boolean v2, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchItemsChangedEvent:Z

    .line 1268
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    .line 1269
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    .line 1270
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 1271
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1272
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1275
    :cond_b
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v0, :cond_c

    .line 1276
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iput v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 1277
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 1278
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->updateViewCacheSize()V

    .line 1281
    :cond_c
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onLayoutCompleted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 1283
    invoke-virtual {v7, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1284
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->clear()V

    .line 1285
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v0, v2

    aget v0, v0, v8

    invoke-direct {v7, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1286
    invoke-virtual {v7, v2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchOnScrolled(II)V

    .line 1289
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->recoverFocusFromState()V

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->resetFocusInfo()V

    .line 1291
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1294
    const/4 v0, 0x1

    .line 1295
    .local v0, "var2":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1297
    .local v1, "var3":I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    if-eqz v2, :cond_2

    .line 1298
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1299
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/MotionEvent;)V

    .line 1300
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1301
    move v2, v0

    .line 1302
    .local v2, "var6":Z
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 1303
    return v2

    .line 1307
    .end local v2    # "var6":Z
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 1308
    move v2, v0

    .line 1309
    .restart local v2    # "var6":Z
    return v2

    .line 1312
    .end local v2    # "var6":Z
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 1315
    :cond_2
    if-eqz v1, :cond_4

    .line 1316
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1318
    .local v2, "var4":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 1319
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 1320
    .local v3, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;
    invoke-interface {v3, p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1321
    iput-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 1322
    move v4, v0

    .line 1323
    .local v4, "var6":Z
    return v4

    .line 1318
    .end local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;
    .end local v4    # "var6":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    .end local v2    # "var4":I
    :cond_4
    const/4 v2, 0x0

    .line 1329
    .local v2, "var6":Z
    return v2
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1334
    .local v0, "var2":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 1335
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 1338
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1339
    .local v2, "var3":I
    const/4 v3, 0x0

    .line 1343
    .local v3, "var4":I
    :goto_0
    if-lt v3, v2, :cond_2

    .line 1344
    const/4 v1, 0x0

    .line 1345
    .local v1, "var6":Z
    goto :goto_1

    .line 1348
    .end local v1    # "var6":Z
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 1349
    .local v4, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;
    invoke-interface {v4, p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v0, v1, :cond_3

    .line 1350
    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 1351
    const/4 v1, 0x1

    .line 1352
    .restart local v1    # "var6":Z
    nop

    .line 1358
    .end local v4    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;
    :goto_1
    return v1

    .line 1355
    .end local v1    # "var6":Z
    .restart local v4    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;
    :cond_3
    nop

    .end local v4    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;
    add-int/lit8 v3, v3, 0x1

    .line 1356
    goto :goto_0
.end method

.method private drawGoToTop()V
    .locals 3

    .line 1362
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollY()I

    move-result v0

    .line 1363
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1364
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1365
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 1368
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 1369
    return-void
.end method

.method private findFirstChildPosition()I
    .locals 3

    .line 1372
    const/4 v0, 0x0

    .line 1373
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    if-eqz v2, :cond_0

    .line 1374
    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_1

    .line 1375
    :cond_0
    instance-of v2, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_2

    .line 1376
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1377
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    sub-int/2addr v1, v2

    .end local v0    # "var1":I
    .local v1, "var1":I
    goto :goto_0

    .line 1379
    .end local v1    # "var1":I
    .restart local v0    # "var1":I
    :cond_1
    const/4 v1, 0x0

    .line 1382
    .end local v0    # "var1":I
    .restart local v1    # "var1":I
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    check-cast v2, [I

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    aget v0, v0, v1

    .line 1385
    .end local v1    # "var1":I
    .restart local v0    # "var1":I
    :cond_2
    :goto_1
    move v1, v0

    .line 1386
    .local v1, "var2":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 1387
    const/4 v1, 0x0

    .line 1390
    :cond_3
    return v1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 10
    .param p1, "var1"    # [I

    .line 1394
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 1395
    .local v0, "var2":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1396
    const/4 v3, -0x1

    aput v3, p1, v1

    .line 1397
    aput v3, p1, v2

    goto :goto_2

    .line 1399
    :cond_0
    const v3, 0x7fffffff

    .line 1400
    .local v3, "var3":I
    const/high16 v4, -0x80000000

    .line 1403
    .local v4, "var4":I
    const/4 v5, 0x0

    .local v5, "var5":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 1404
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v6, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v6

    .line 1405
    .local v6, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1406
    move v7, v4

    .local v7, "var7":I
    goto :goto_1

    .line 1408
    .end local v7    # "var7":I
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    .line 1409
    .local v7, "var8":I
    move v8, v3

    .line 1410
    .local v8, "var9":I
    if-ge v7, v3, :cond_2

    .line 1411
    move v8, v7

    .line 1414
    :cond_2
    move v9, v4

    .line 1415
    .local v9, "var7":I
    move v3, v8

    .line 1416
    if-le v7, v4, :cond_3

    .line 1417
    move v9, v7

    .line 1418
    move v3, v8

    goto :goto_1

    .line 1416
    :cond_3
    move v7, v9

    .line 1422
    .end local v8    # "var9":I
    .end local v9    # "var7":I
    .local v7, "var7":I
    :goto_1
    nop

    .end local v6    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v5, v5, 0x1

    .line 1403
    move v4, v7

    goto :goto_0

    .line 1425
    .end local v5    # "var5":I
    .end local v7    # "var7":I
    :cond_4
    aput v3, p1, v1

    .line 1426
    aput v4, p1, v2

    .line 1429
    .end local v3    # "var3":I
    .end local v4    # "var4":I
    :goto_2
    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .locals 4
    .param p0, "var0"    # Landroid/view/View;

    .line 1433
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1434
    const/4 v0, 0x0

    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    goto :goto_1

    .line 1435
    .end local v0    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_1

    .line 1436
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .restart local v0    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    goto :goto_1

    .line 1438
    .end local v0    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1439
    .local v0, "var1":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1440
    .local v1, "var2":I
    const/4 v2, 0x0

    .line 1443
    .local v2, "var3":I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 1444
    const/4 v3, 0x0

    .line 1445
    .local v3, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    move-object v0, v3

    goto :goto_1

    .line 1448
    .end local v3    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v3

    .line 1449
    .restart local v3    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    if-eqz v3, :cond_3

    .line 1450
    move-object v0, v3

    .line 1457
    .end local v1    # "var2":I
    .end local v2    # "var3":I
    .end local v3    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :goto_1
    return-object v0

    .line 1453
    .local v0, "var1":Landroid/view/ViewGroup;
    .restart local v1    # "var2":I
    .restart local v2    # "var3":I
    .restart local v3    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 7

    .line 1461
    const/4 v0, 0x0

    .line 1463
    .local v0, "var1":Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedItemPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedItemPosition:I

    .local v1, "var2":I
    goto :goto_0

    .line 1466
    .end local v1    # "var2":I
    :cond_0
    const/4 v1, 0x0

    .line 1469
    .restart local v1    # "var2":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    .line 1470
    .local v2, "var3":I
    move v3, v1

    .line 1475
    .local v3, "var4":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1476
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findViewHolderForAdapterPosition(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    .line 1477
    .local v4, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v4, :cond_2

    .line 1478
    iget-object v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1479
    iget-object v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1480
    .local v5, "var6":Landroid/view/View;
    return-object v5

    .line 1483
    .end local v5    # "var6":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1484
    goto :goto_1

    .line 1488
    .end local v4    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1491
    .end local v1    # "var2":I
    .local v4, "var2":I
    :goto_2
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 1492
    .local v1, "var6":Landroid/view/View;
    if-gez v4, :cond_3

    .line 1493
    return-object v1

    .line 1496
    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findViewHolderForAdapterPosition(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v5

    .line 1497
    .local v5, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-nez v5, :cond_4

    .line 1498
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 1499
    return-object v1

    .line 1502
    :cond_4
    iget-object v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1503
    iget-object v1, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1504
    return-object v1

    .line 1507
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p0, "var0"    # Landroid/view/View;

    .line 1514
    if-nez p0, :cond_0

    .line 1515
    const/4 v0, 0x0

    .local v0, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_0

    .line 1517
    .end local v0    # "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 1520
    .restart local v0    # "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_0
    return-object v0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "var0"    # Landroid/view/View;
    .param p1, "var1"    # Landroid/graphics/Rect;

    .line 1524
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 1525
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 1526
    .local v1, "var3":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1527
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1532
    .local v0, "var2":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1533
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 1534
    .local v1, "var3":Landroid/view/View;
    move-object p1, v1

    .line 1535
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1536
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1537
    move-object p1, v1

    .line 1539
    .end local v1    # "var3":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 1541
    :cond_1
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Ljava/lang/String;

    .line 1546
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "var3":Ljava/lang/String;
    goto :goto_0

    .line 1549
    .end local v0    # "var3":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 1550
    .restart local v0    # "var3":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1555
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 7
    .param p1, "var1"    # J
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p4, "var4"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 1567
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 1569
    .local v0, "var5":I
    const/4 v1, 0x0

    .local v1, "var6":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1570
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 1571
    .local v2, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eq v2, p3, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChangedHolderKey(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 1572
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    const-string v4, " \n View Holder 2:"

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1573
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1576
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1569
    .end local v2    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1580
    .end local v1    # "var6":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be found but it is necessary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 4

    .line 1584
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 1585
    .local v0, "var1":I
    const/4 v1, 0x0

    .line 1589
    .local v1, "var2":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1590
    const/4 v2, 0x0

    .line 1591
    .local v2, "var4":Z
    goto :goto_1

    .line 1594
    .end local v2    # "var4":Z
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 1595
    .local v2, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1596
    const/4 v3, 0x1

    .line 1597
    .local v3, "var4":Z
    move v2, v3

    .line 1603
    .end local v3    # "var4":Z
    .local v2, "var4":Z
    :goto_1
    return v2

    .line 1600
    .local v2, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    nop

    .end local v2    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v1, v1, 0x1

    .line 1601
    goto :goto_0
.end method

.method private initChildrenHelper()V
    .locals 2

    .line 1607
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$9;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    .line 1696
    return-void
.end method

.method private isInDialog()Z
    .locals 4

    .line 1699
    const/4 v0, 0x0

    .line 1700
    .local v0, "var1":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1701
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getRootView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 1702
    if-nez v1, :cond_0

    .line 1703
    const/4 v0, 0x0

    goto :goto_0

    .line 1705
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1706
    .local v1, "var2":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1707
    const/4 v0, 0x0

    goto :goto_0

    .line 1709
    :cond_1
    const/4 v0, 0x1

    .line 1714
    .end local v1    # "var2":Landroid/content/Context;
    :cond_2
    :goto_0
    return v0
.end method

.method private isNavigationBarHide(Landroid/content/Context;)Z
    .locals 5
    .param p1, "var1"    # Landroid/content/Context;

    .line 1718
    const/4 v0, 0x1

    .line 1719
    .local v0, "var2":Z
    move v1, v0

    .line 1720
    .local v1, "var3":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isSupportSoftNavigationBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1721
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "navigationbar_hide_bar_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1722
    move v1, v0

    goto :goto_0

    .line 1724
    :cond_0
    const/4 v1, 0x0

    .line 1728
    :cond_1
    :goto_0
    return v1
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 12
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 1732
    const/4 v0, 0x1

    .line 1733
    .local v0, "var4":Z
    const/4 v1, 0x0

    .line 1734
    .local v1, "var5":Z
    const/4 v2, 0x0

    .line 1736
    .local v2, "var6":Z
    if-eqz p2, :cond_f

    if-eq p2, p0, :cond_f

    if-eq p1, p2, :cond_f

    .line 1737
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1738
    const/4 v3, 0x0

    .local v3, "var7":Z
    goto/16 :goto_4

    .line 1740
    .end local v3    # "var7":Z
    :cond_0
    move v3, v0

    .line 1741
    .restart local v3    # "var7":Z
    if-eqz p1, :cond_10

    .line 1742
    move v3, v0

    .line 1743
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1744
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1745
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1746
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1747
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1749
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1750
    const/4 v4, -0x1

    .local v4, "var8":B
    goto :goto_0

    .line 1752
    .end local v4    # "var8":B
    :cond_1
    const/4 v4, 0x1

    .line 1755
    .restart local v4    # "var8":B
    :goto_0
    const/4 v5, 0x0

    .line 1757
    .local v5, "var9":B
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_3

    .line 1758
    const/4 v6, 0x1

    .local v6, "var10":B
    goto :goto_1

    .line 1761
    .end local v6    # "var10":B
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_4

    .line 1762
    move v6, v5

    .line 1763
    .restart local v6    # "var10":B
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ge v7, v8, :cond_4

    .line 1764
    goto :goto_1

    .line 1768
    .end local v6    # "var10":B
    :cond_4
    move v6, v5

    .line 1769
    .restart local v6    # "var10":B
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_5

    .line 1770
    const/4 v6, -0x1

    .line 1775
    :cond_5
    :goto_1
    const/4 v7, 0x0

    .line 1777
    .local v7, "var11":B
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-lt v8, v9, :cond_6

    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-gt v8, v9, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v9, :cond_7

    .line 1778
    const/4 v8, 0x1

    .local v8, "var12":B
    goto :goto_2

    .line 1781
    .end local v8    # "var12":B
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v9, :cond_8

    .line 1782
    move v8, v7

    .line 1783
    .restart local v8    # "var12":B
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_8

    .line 1784
    goto :goto_2

    .line 1788
    .end local v8    # "var12":B
    :cond_8
    move v8, v7

    .line 1789
    .restart local v8    # "var12":B
    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_9

    .line 1790
    const/4 v8, -0x1

    .line 1795
    :cond_9
    :goto_2
    sparse-switch p3, :sswitch_data_0

    .line 1851
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid direction: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1845
    :sswitch_0
    move v3, v0

    .line 1846
    if-gtz v8, :cond_e

    .line 1847
    const/4 v3, 0x0

    goto :goto_3

    .line 1839
    :sswitch_1
    move v3, v0

    .line 1840
    if-gtz v6, :cond_e

    .line 1841
    const/4 v3, 0x0

    goto :goto_3

    .line 1833
    :sswitch_2
    move v3, v0

    .line 1834
    if-ltz v8, :cond_e

    .line 1835
    const/4 v3, 0x0

    goto :goto_3

    .line 1827
    :sswitch_3
    move v3, v0

    .line 1828
    if-ltz v6, :cond_e

    .line 1829
    const/4 v3, 0x0

    goto :goto_3

    .line 1812
    :sswitch_4
    if-gtz v8, :cond_b

    .line 1813
    move v3, v2

    .line 1814
    if-eqz v8, :cond_a

    .line 1815
    goto :goto_3

    .line 1818
    :cond_a
    move v3, v2

    .line 1819
    mul-int v9, v6, v4

    if-gez v9, :cond_b

    .line 1820
    goto :goto_3

    .line 1824
    :cond_b
    const/4 v3, 0x1

    .line 1825
    goto :goto_3

    .line 1797
    :sswitch_5
    if-ltz v8, :cond_d

    .line 1798
    move v3, v1

    .line 1799
    if-eqz v8, :cond_c

    .line 1800
    goto :goto_3

    .line 1803
    :cond_c
    move v3, v1

    .line 1804
    mul-int v9, v6, v4

    if-lez v9, :cond_d

    .line 1805
    goto :goto_3

    .line 1809
    :cond_d
    const/4 v3, 0x1

    .line 1810
    nop

    .line 1853
    .end local v4    # "var8":B
    .end local v5    # "var9":B
    .end local v6    # "var10":B
    .end local v7    # "var11":B
    .end local v8    # "var12":B
    :cond_e
    :goto_3
    goto :goto_4

    .line 1857
    .end local v3    # "var7":Z
    :cond_f
    const/4 v3, 0x0

    .line 1860
    .restart local v3    # "var7":Z
    :cond_10
    :goto_4
    return v3

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

.method private isSupportGotoTop()Z
    .locals 1

    .line 1865
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    .line 1866
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 1868
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 1871
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method private isSupportSoftNavigationBar(Landroid/content/Context;)Z
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;

    .line 1875
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1877
    .local v0, "var2":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1878
    const/4 v1, 0x1

    .local v1, "var3":Z
    goto :goto_0

    .line 1880
    .end local v1    # "var3":Z
    :cond_0
    const/4 v1, 0x0

    .line 1883
    .restart local v1    # "var3":Z
    :goto_0
    return v1
.end method

.method private isTalkBackIsRunning()Z
    .locals 3

    .line 1887
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1889
    .local v0, "var1":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1890
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1891
    .local v1, "var3":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1892
    :cond_0
    const/4 v2, 0x1

    .line 1893
    .local v2, "var2":Z
    return v2

    .line 1897
    .end local v1    # "var3":Ljava/lang/String;
    .end local v2    # "var2":Z
    :cond_1
    const/4 v1, 0x0

    .line 1898
    .local v1, "var2":Z
    return v1
.end method

.method private multiSelection(IIIIZ)V
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # Z

    .line 1902
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 1903
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    if-eqz v0, :cond_2

    .line 1904
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 1905
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 1906
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 1907
    int-to-float v0, p1

    int-to-float v3, p2

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 1908
    if-nez v0, :cond_0

    .line 1909
    int-to-float v0, p1

    int-to-float v3, p2

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 1910
    if-nez v0, :cond_0

    .line 1911
    const-string v0, "SeslRecyclerView"

    const-string v1, "multiSelection, mPenTrackedChild is NULL"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 1913
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    .line 1914
    return-void

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;

    if-eqz v0, :cond_1

    .line 1919
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStart(II)V

    .line 1922
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .line 1923
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 1924
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    .line 1927
    :cond_2
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    if-nez v0, :cond_4

    .line 1928
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 1929
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 1930
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;

    if-eqz v0, :cond_3

    .line 1931
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStart(II)V

    .line 1934
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 1937
    :cond_4
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 1938
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 1939
    if-gez p2, :cond_5

    .line 1940
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    goto :goto_0

    .line 1941
    :cond_5
    if-le p2, p4, :cond_6

    .line 1942
    iput p4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 1945
    :cond_6
    :goto_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    if-ge v0, p1, :cond_7

    .line 1946
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .end local p1    # "var1":I
    .local v3, "var1":I
    goto :goto_1

    .line 1948
    .end local v3    # "var1":I
    .restart local p1    # "var1":I
    :cond_7
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 1951
    .end local p1    # "var1":I
    .restart local v3    # "var1":I
    :goto_1
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 1952
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    if-ge v4, v5, :cond_8

    .line 1953
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    goto :goto_2

    .line 1955
    :cond_8
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 1958
    :goto_2
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 1959
    if-le p1, v0, :cond_9

    .line 1960
    iget p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .end local v3    # "var1":I
    .restart local p1    # "var1":I
    goto :goto_3

    .line 1962
    .end local p1    # "var1":I
    .restart local v3    # "var1":I
    :cond_9
    iget p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 1965
    .end local v3    # "var1":I
    .restart local p1    # "var1":I
    :goto_3
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 1966
    if-le v5, v4, :cond_a

    .line 1967
    iget p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    goto :goto_4

    .line 1969
    :cond_a
    iget p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 1972
    :goto_4
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 1973
    const/4 p5, 0x1

    .line 1976
    :cond_b
    if-eqz p5, :cond_13

    .line 1977
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v0, p3

    if-gt p2, v0, :cond_d

    .line 1978
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_c

    .line 1979
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 1980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 1981
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_c

    .line 1982
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 1986
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 1988
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 1989
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 1991
    :cond_d
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v0, p4, v0

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, v3

    if-lt p2, v0, :cond_f

    .line 1992
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_e

    .line 1993
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 1994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 1995
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_e

    .line 1996
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 2000
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 2002
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 2003
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 2006
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_10

    .line 2007
    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 2010
    :cond_10
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 2011
    iput-wide v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 2012
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 2013
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2014
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2015
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    if-ne v0, v1, :cond_11

    .line 2016
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 2020
    :cond_11
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 2023
    :cond_12
    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_13

    .line 2024
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 2028
    :cond_13
    return-void
.end method

.method private multiSelectionEnd(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 2031
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 2032
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStop(II)V

    .line 2035
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenPressed:Z

    .line 2036
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstPenMoveEvent:Z

    .line 2037
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 2038
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2039
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 2040
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 2041
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 2042
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 2043
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 2044
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 2045
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 2046
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 2047
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 2048
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 2049
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v1, :cond_1

    .line 2050
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 2053
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2054
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2057
    :cond_2
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 2060
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2061
    .local v0, "var2":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    .line 2063
    if-nez v0, :cond_0

    .line 2064
    const/4 v1, 0x1

    .local v1, "var4":B
    goto :goto_0

    .line 2066
    .end local v1    # "var4":B
    :cond_0
    const/4 v1, 0x0

    .line 2069
    .restart local v1    # "var4":B
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 2070
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2071
    .local v2, "var3":I
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    .line 2072
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 2073
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v4, v3

    float-to-int v0, v4

    .line 2074
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    .line 2075
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchY:I

    .line 2078
    .end local v1    # "var4":B
    .end local v2    # "var3":I
    :cond_1
    return-void
.end method

.method private pageScroll(I)Z
    .locals 5
    .param p1, "var1"    # I

    .line 2081
    const/4 v0, 0x0

    .line 2083
    .local v0, "var2":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-nez v1, :cond_0

    .line 2084
    const-string v1, "SeslRecyclerView"

    const-string v2, "No adapter attached; skipping pageScroll"

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    move v1, v0

    .local v1, "var3":Z
    goto :goto_2

    .line 2087
    .end local v1    # "var3":Z
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 2088
    .local v1, "var4":I
    move v2, v0

    .line 2089
    .local v2, "var3":Z
    if-lez v1, :cond_3

    .line 2090
    packed-switch p1, :pswitch_data_0

    .line 2104
    move v2, v0

    .line 2105
    return v2

    .line 2101
    :pswitch_0
    add-int/lit8 p1, v1, -0x1

    .line 2102
    goto :goto_0

    .line 2098
    :pswitch_1
    const/4 p1, 0x0

    .line 2099
    goto :goto_0

    .line 2095
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findLastVisibleItemPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 2096
    .end local p1    # "var1":I
    .local v3, "var1":I
    move p1, v3

    goto :goto_0

    .line 2092
    .end local v3    # "var1":I
    .restart local p1    # "var1":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2093
    .end local p1    # "var1":I
    .restart local v3    # "var1":I
    move p1, v3

    .line 2108
    .end local v3    # "var1":I
    .restart local p1    # "var1":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-le p1, v3, :cond_1

    .line 2109
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2111
    :cond_1
    move v1, p1

    .line 2112
    if-gez p1, :cond_2

    .line 2113
    const/4 v1, 0x0

    .line 2117
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 2118
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    new-instance v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$10;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 2127
    const/4 v2, 0x1

    move v1, v2

    goto :goto_2

    .line 2089
    :cond_3
    move v1, v2

    .line 2131
    .end local v2    # "var3":Z
    .local v1, "var3":Z
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playGotoToFadeIn()V
    .locals 4

    .line 2135
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2136
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2141
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2143
    :cond_1
    return-void
.end method

.method private playGotoToFadeOut()V
    .locals 4

    .line 2146
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2147
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2152
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2154
    :cond_1
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 2158
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 2161
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 2164
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .line 2168
    const/4 v0, 0x1

    .line 2169
    .local v0, "var1":Z
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_0

    .line 2170
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->reset()V

    .line 2171
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v1, :cond_0

    .line 2172
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onItemsChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 2176
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2177
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->preProcess()V

    goto :goto_0

    .line 2179
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->consumeUpdatesInOnePass()V

    .line 2183
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemsChanged:Z

    if-nez v1, :cond_2

    .line 2184
    const/4 v1, 0x0

    .local v1, "var2":Z
    goto :goto_1

    .line 2186
    .end local v1    # "var2":Z
    :cond_2
    const/4 v1, 0x1

    .line 2189
    .restart local v1    # "var2":Z
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 2191
    .local v2, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-boolean v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v3, :cond_5

    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 2194
    :cond_4
    const/4 v3, 0x1

    .local v3, "var4":Z
    goto :goto_3

    .line 2192
    .end local v3    # "var4":Z
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 2197
    .restart local v3    # "var4":Z
    :goto_3
    iput-boolean v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    .line 2198
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 2199
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2200
    move v3, v0

    goto :goto_4

    .line 2202
    :cond_6
    const/4 v3, 0x0

    .line 2205
    :goto_4
    iput-boolean v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    .line 2206
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "var1"    # F
    .param p2, "var2"    # F
    .param p3, "var3"    # F
    .param p4, "var4"    # F

    .line 2209
    const/4 v0, 0x0

    .line 2210
    .local v0, "var5":Z
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    .line 2211
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureLeftGlow()V

    .line 2212
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    sub-float v5, v3, v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPull(FF)V

    .line 2213
    const/4 v0, 0x1

    goto :goto_0

    .line 2214
    :cond_0
    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    .line 2215
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureRightGlow()V

    .line 2216
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPull(FF)V

    .line 2217
    const/4 v0, 0x1

    .line 2220
    :cond_1
    :goto_0
    cmpg-float v2, p4, v1

    if-gez v2, :cond_2

    .line 2221
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureTopGlow()V

    .line 2222
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    neg-float v3, p4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPull(FF)V

    .line 2223
    const/4 v0, 0x1

    goto :goto_1

    .line 2224
    :cond_2
    cmpl-float v2, p4, v1

    if-lez v2, :cond_3

    .line 2225
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureBottomGlow()V

    .line 2226
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p4, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p1, v5

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPull(FF)V

    .line 2227
    const/4 v0, 0x1

    .line 2230
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    cmpl-float v2, p2, v1

    if-nez v2, :cond_4

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_5

    .line 2231
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2234
    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 7

    .line 2238
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2241
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2242
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2243
    .local v0, "focusedChild":Landroid/view/View;
    sget-boolean v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2244
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 2245
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestFocus()Z

    .line 2246
    return-void

    .line 2248
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2249
    return-void

    .line 2252
    .end local v0    # "focusedChild":Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    .line 2253
    .local v0, "focusTarget":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-wide v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedItemId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2254
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-wide v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findViewHolderForItemId(J)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 2256
    :cond_4
    const/4 v1, 0x0

    .line 2257
    .local v1, "viewToFocus":Landroid/view/View;
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 2262
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_1

    .line 2258
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 2259
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    .line 2265
    :cond_7
    :goto_1
    if-eqz v1, :cond_9

    .line 2266
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedSubChildId:I

    int-to-long v5, v2

    cmp-long v2, v5, v3

    if-eqz v2, :cond_8

    .line 2267
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2268
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2269
    move-object v1, v2

    .line 2272
    .end local v2    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2274
    :cond_9
    return-void

    .line 2239
    .end local v0    # "focusTarget":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v1    # "viewToFocus":Landroid/view/View;
    :cond_a
    :goto_2
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 2277
    const/4 v0, 0x0

    .line 2278
    .local v0, "var1":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v1, :cond_0

    .line 2279
    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2280
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    .line 2283
    :cond_0
    move v1, v0

    .line 2284
    .local v1, "var2":Z
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v2, :cond_1

    .line 2285
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2286
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    or-int v1, v0, v2

    .line 2289
    :cond_1
    move v0, v1

    .line 2290
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v2, :cond_2

    .line 2291
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2292
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    or-int v0, v1, v2

    .line 2295
    :cond_2
    move v1, v0

    .line 2296
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v2, :cond_3

    .line 2297
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2298
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    or-int v1, v0, v2

    .line 2301
    :cond_3
    if-eqz v1, :cond_4

    .line 2302
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2305
    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 12
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 2308
    const/4 v0, 0x1

    .line 2310
    .local v0, "var3":Z
    if-eqz p2, :cond_0

    .line 2311
    move-object v1, p2

    .local v1, "var4":Landroid/view/View;
    goto :goto_0

    .line 2313
    .end local v1    # "var4":Landroid/view/View;
    :cond_0
    move-object v1, p1

    .line 2316
    .restart local v1    # "var4":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2317
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2319
    .local v2, "var7":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    if-eqz v3, :cond_1

    .line 2320
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 2321
    .local v3, "var8":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_1

    .line 2322
    iget-object v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2323
    .local v4, "var9":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 2324
    .local v5, "var5":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2325
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 2326
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2327
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 2328
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2329
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 2330
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2334
    .end local v3    # "var8":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    .end local v4    # "var9":Landroid/graphics/Rect;
    .end local v5    # "var5":Landroid/graphics/Rect;
    :cond_1
    if-eqz p2, :cond_2

    .line 2335
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2336
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2339
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 2340
    .local v3, "var10":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 2342
    .local v10, "var5":Landroid/graphics/Rect;
    iget-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-nez v4, :cond_3

    .line 2343
    const/4 v4, 0x1

    move v11, v4

    .local v4, "var6":Z
    goto :goto_1

    .line 2345
    .end local v4    # "var6":Z
    :cond_3
    const/4 v4, 0x0

    move v11, v4

    .line 2348
    .local v11, "var6":Z
    :goto_1
    if-eqz p2, :cond_4

    .line 2349
    const/4 v0, 0x0

    .line 2352
    :cond_4
    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move-object v7, v10

    move v8, v11

    move v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 2353
    return-void
.end method

.method private resetFocusInfo()V
    .locals 3

    .line 2356
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedItemId:J

    .line 2357
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedItemPosition:I

    .line 2358
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedSubChildId:I

    .line 2359
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2364
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2367
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopNestedScroll(I)V

    .line 2368
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->releaseGlows()V

    .line 2369
    return-void
.end method

.method private saveFocusInfo()V
    .locals 5

    .line 2373
    const/4 v0, 0x0

    .line 2374
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 2375
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2378
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findContainingViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 2379
    .local v1, "focusedVh":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_0
    if-nez v1, :cond_2

    .line 2380
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->resetFocusInfo()V

    goto :goto_3

    .line 2382
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide/16 v3, -0x1

    :goto_1
    iput-wide v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedItemId:J

    .line 2383
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_2
    iput v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedItemPosition:I

    .line 2384
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-object v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mFocusedSubChildId:I

    .line 2386
    :goto_3
    return-void
.end method

.method private setAdapterInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 2389
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 2390
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mObserver:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;)V

    .line 2391
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 2394
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 2395
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeAndRecycleViews()V

    .line 2398
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->reset()V

    .line 2399
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 2400
    .local v0, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 2401
    if-eqz p1, :cond_3

    .line 2402
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mObserver:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->registerAdapterDataObserver(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$AdapterDataObserver;)V

    .line 2403
    invoke-virtual {p1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 2406
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_4

    .line 2407
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onAdapterChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V

    .line 2410
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->onAdapterChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Z)V

    .line 2411
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 2412
    return-void
.end method

.method private setupGoToTop(I)V
    .locals 14
    .param p1, "var1"    # I

    .line 2415
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_f

    .line 2416
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2417
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopLastState:I

    .line 2418
    .local v0, "var2":I
    move v0, p1

    .line 2419
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2420
    move v0, p1

    .line 2421
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2422
    const/4 v0, 0x0

    .line 2426
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSizeChnage:Z

    if-eqz v3, :cond_2

    .line 2427
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollDown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2428
    const/4 p1, 0x0

    goto :goto_0

    .line 2430
    :cond_1
    iget p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopLastState:I

    goto :goto_0

    .line 2433
    :cond_2
    move p1, v0

    .line 2434
    if-ne v0, v2, :cond_4

    .line 2436
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2437
    move p1, v0

    .line 2438
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollDown()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2439
    goto :goto_0

    .line 2443
    :cond_3
    const/4 p1, 0x1

    .line 2448
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 2449
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2450
    :cond_5
    if-eq p1, v1, :cond_6

    .line 2451
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2454
    :cond_6
    :goto_1
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    if-nez v2, :cond_7

    if-nez p1, :cond_7

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopLastState:I

    if-eqz v2, :cond_7

    .line 2455
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 2458
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_8

    .line 2459
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 2462
    :cond_8
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    .line 2463
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v4

    .line 2464
    .local v4, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v0

    .line 2465
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v5

    .line 2466
    .local v5, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v6

    sub-int v7, v4, v0

    sub-int/2addr v7, v5

    div-int/2addr v7, v3

    add-int/2addr v6, v7

    .line 2468
    .local v6, "var5":I
    if-eqz p1, :cond_a

    .line 2469
    if-eq p1, v1, :cond_9

    if-ne p1, v3, :cond_b

    .line 2470
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2471
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v0

    .line 2472
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 2473
    .local v7, "var6":Landroid/graphics/Rect;
    iget v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopSize:I

    .line 2474
    .local v8, "var7":I
    div-int/lit8 v9, v8, 0x2

    .line 2475
    .local v9, "var8":I
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    .line 2476
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImmersiveBottomPadding:I

    .line 2477
    sub-int v10, v6, v9

    sub-int v11, v0, v8

    sub-int/2addr v11, v5

    sub-int/2addr v11, v4

    div-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v6

    sub-int v13, v0, v5

    sub-int/2addr v13, v4

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2478
    .end local v8    # "var7":I
    .end local v9    # "var8":I
    goto :goto_2

    .line 2479
    .end local v7    # "var6":Landroid/graphics/Rect;
    :cond_a
    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    if-ne v7, v3, :cond_b

    .line 2480
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2483
    :cond_b
    :goto_2
    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    if-ne v7, v3, :cond_c

    .line 2484
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mShowFadeOutGTP:I

    .line 2487
    :cond_c
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    .line 2488
    .local v3, "var9":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 2489
    .restart local v7    # "var6":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2490
    if-ne p1, v1, :cond_e

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopLastState:I

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSizeChnage:Z

    if-eqz v1, :cond_e

    .line 2491
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 2494
    :cond_e
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSizeChnage:Z

    .line 2495
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopLastState:I

    .line 2497
    .end local v0    # "var2":I
    .end local v3    # "var9":Landroid/widget/ImageView;
    .end local v4    # "var3":I
    .end local v5    # "var4":I
    .end local v6    # "var5":I
    .end local v7    # "var6":Landroid/graphics/Rect;
    :cond_f
    return-void
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .line 2502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2503
    const-string v0, "hidden_semSetPointerDevice"

    .local v0, "methodName":Ljava/lang/String;
    goto :goto_0

    .line 2504
    .end local v0    # "methodName":Ljava/lang/String;
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 2505
    const-string v0, "semSetPointerDevice"

    .restart local v0    # "methodName":Ljava/lang/String;
    goto :goto_0

    .line 2507
    .end local v0    # "methodName":Ljava/lang/String;
    :cond_1
    const-string v0, "setPointerDevice"

    .line 2509
    .restart local v0    # "methodName":Ljava/lang/String;
    :goto_0
    const-class v1, Landroid/view/InputDevice;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2510
    return v4
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 2514
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->stop()V

    .line 2515
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2516
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2519
    :cond_0
    return-void
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .locals 21
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .line 2523
    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v8

    .line 2524
    .local v8, "var4":I
    iget-boolean v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    const-string v2, "SeslRecyclerView"

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 2525
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 2526
    iput v7, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 2527
    int-to-float v1, v0

    int-to-float v3, v7

    invoke-virtual {v6, v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 2528
    if-nez v1, :cond_0

    .line 2529
    int-to-float v1, v0

    int-to-float v3, v7

    invoke-virtual {v6, v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 2530
    if-nez v1, :cond_0

    .line 2531
    const-string v1, "updateLongPressMultiSelection, mPenTrackedChild is NULL"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    iput-boolean v9, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 2533
    return-void

    .line 2537
    :cond_0
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v1, :cond_1

    .line 2538
    invoke-interface {v1, v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    .line 2541
    :cond_1
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v6, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .line 2542
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 2543
    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 2544
    iput-boolean v9, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 2549
    :cond_2
    iget-boolean v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v1, :cond_3

    .line 2550
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2551
    .local v1, "var5":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v10, v1

    move v11, v3

    .local v3, "var6":I
    goto :goto_0

    .line 2553
    .end local v1    # "var5":I
    .end local v3    # "var6":I
    :cond_3
    const/4 v1, 0x0

    .line 2554
    .restart local v1    # "var5":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    move v10, v1

    move v11, v3

    .line 2557
    .end local v1    # "var5":I
    .local v10, "var5":I
    .local v11, "var6":I
    :goto_0
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 2558
    iput v7, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 2559
    if-gez v7, :cond_4

    .line 2560
    iput v9, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    goto :goto_1

    .line 2561
    :cond_4
    if-le v7, v11, :cond_5

    .line 2562
    iput v11, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 2565
    :cond_5
    :goto_1
    int-to-float v1, v0

    iget v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    int-to-float v3, v3

    invoke-virtual {v6, v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    .line 2566
    .local v1, "var7":Landroid/view/View;
    move-object v3, v1

    .line 2567
    .local v3, "var8":Landroid/view/View;
    if-nez v1, :cond_7

    .line 2568
    iget v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    int-to-float v4, v4

    iget v5, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    int-to-float v5, v5

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    .line 2569
    move-object v3, v1

    .line 2570
    if-nez v1, :cond_6

    .line 2571
    const-string v4, "updateLongPressMultiSelection, touchedView is NULL"

    invoke-static {v2, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    return-void

    .line 2570
    :cond_6
    move-object v12, v1

    goto :goto_2

    .line 2567
    :cond_7
    move-object v12, v1

    .line 2576
    .end local v1    # "var7":Landroid/view/View;
    .local v12, "var7":Landroid/view/View;
    :goto_2
    invoke-virtual {v6, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 2577
    .end local p1    # "var1":I
    .local v0, "var1":I
    const/4 v13, -0x1

    if-eq v0, v13, :cond_1e

    .line 2578
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 2580
    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    if-ge v1, v0, :cond_8

    .line 2581
    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    .line 2582
    .local v1, "var9":I
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    move v14, v0

    move v15, v1

    goto :goto_3

    .line 2584
    .end local v1    # "var9":I
    :cond_8
    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 2585
    .restart local v1    # "var9":I
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    move v14, v0

    move v15, v1

    .line 2589
    .end local v0    # "var1":I
    .end local v1    # "var9":I
    .local v14, "var1":I
    .local v15, "var9":I
    :goto_3
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    if-ge v0, v1, :cond_9

    .line 2590
    iget v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .local v2, "var10":I
    goto :goto_4

    .line 2592
    .end local v2    # "var10":I
    :cond_9
    iget v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 2595
    .restart local v2    # "var10":I
    :goto_4
    iput v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 2596
    iget v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    iget v5, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    if-ge v4, v5, :cond_a

    .line 2597
    iget v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    goto :goto_5

    .line 2599
    :cond_a
    iget v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 2602
    :goto_5
    iput v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 2603
    if-le v1, v0, :cond_b

    .line 2604
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .end local v2    # "var10":I
    .local v0, "var10":I
    goto :goto_6

    .line 2606
    .end local v0    # "var10":I
    .restart local v2    # "var10":I
    :cond_b
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 2609
    .end local v2    # "var10":I
    .restart local v0    # "var10":I
    :goto_6
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 2610
    if-le v5, v4, :cond_c

    .line 2611
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    goto :goto_7

    .line 2613
    :cond_c
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 2616
    :goto_7
    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 2618
    const/4 v0, 0x0

    move v4, v0

    .end local v0    # "var10":I
    .local v4, "var10":I
    :goto_8
    if-ge v4, v8, :cond_16

    .line 2619
    invoke-virtual {v6, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2620
    .end local v3    # "var8":Landroid/view/View;
    .local v5, "var8":Landroid/view/View;
    if-eqz v5, :cond_14

    .line 2621
    invoke-virtual {v6, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 2622
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 2623
    const/16 v16, 0x0

    .line 2624
    .local v16, "var11":Z
    move/from16 v0, v16

    .line 2625
    .local v0, "var12":Z
    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v15, v1, :cond_f

    .line 2626
    move/from16 v0, v16

    .line 2627
    if-gt v1, v14, :cond_e

    .line 2628
    move/from16 v0, v16

    .line 2629
    iget v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    if-eq v1, v2, :cond_d

    .line 2630
    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_9

    .line 2629
    :cond_d
    move/from16 v17, v0

    goto :goto_9

    .line 2627
    :cond_e
    move/from16 v17, v0

    goto :goto_9

    .line 2625
    :cond_f
    move/from16 v17, v0

    .line 2635
    .end local v0    # "var12":Z
    .local v17, "var12":Z
    :goto_9
    if-eqz v17, :cond_12

    .line 2636
    if-eq v1, v13, :cond_11

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2637
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_10

    .line 2639
    iget v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    invoke-virtual {v6, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v18

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v20, v4

    move-object v9, v5

    .end local v4    # "var10":I
    .end local v5    # "var8":Landroid/view/View;
    .local v9, "var8":Landroid/view/View;
    .local v20, "var10":I
    move-wide/from16 v4, v18

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;IJ)V

    goto :goto_a

    .line 2638
    .end local v9    # "var8":Landroid/view/View;
    .end local v20    # "var10":I
    .restart local v4    # "var10":I
    .restart local v5    # "var8":Landroid/view/View;
    :cond_10
    move/from16 v20, v4

    move-object v9, v5

    .end local v4    # "var10":I
    .end local v5    # "var8":Landroid/view/View;
    .restart local v9    # "var8":Landroid/view/View;
    .restart local v20    # "var10":I
    goto :goto_a

    .line 2636
    .end local v9    # "var8":Landroid/view/View;
    .end local v20    # "var10":I
    .restart local v4    # "var10":I
    .restart local v5    # "var8":Landroid/view/View;
    :cond_11
    move/from16 v20, v4

    move-object v9, v5

    .end local v4    # "var10":I
    .end local v5    # "var8":Landroid/view/View;
    .restart local v9    # "var8":Landroid/view/View;
    .restart local v20    # "var10":I
    goto :goto_a

    .line 2642
    .end local v9    # "var8":Landroid/view/View;
    .end local v20    # "var10":I
    .restart local v4    # "var10":I
    .restart local v5    # "var8":Landroid/view/View;
    :cond_12
    move/from16 v20, v4

    move-object v9, v5

    .end local v4    # "var10":I
    .end local v5    # "var8":Landroid/view/View;
    .restart local v9    # "var8":Landroid/view/View;
    .restart local v20    # "var10":I
    if-eq v1, v13, :cond_15

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2643
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2644
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_15

    .line 2645
    iget v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    invoke-virtual {v6, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;IJ)V

    goto :goto_a

    .line 2622
    .end local v9    # "var8":Landroid/view/View;
    .end local v16    # "var11":Z
    .end local v17    # "var12":Z
    .end local v20    # "var10":I
    .restart local v4    # "var10":I
    .restart local v5    # "var8":Landroid/view/View;
    :cond_13
    move/from16 v20, v4

    move-object v9, v5

    .end local v4    # "var10":I
    .end local v5    # "var8":Landroid/view/View;
    .restart local v9    # "var8":Landroid/view/View;
    .restart local v20    # "var10":I
    goto :goto_a

    .line 2620
    .end local v9    # "var8":Landroid/view/View;
    .end local v20    # "var10":I
    .restart local v4    # "var10":I
    .restart local v5    # "var8":Landroid/view/View;
    :cond_14
    move/from16 v20, v4

    move-object v9, v5

    .line 2618
    .end local v4    # "var10":I
    .end local v5    # "var8":Landroid/view/View;
    .restart local v9    # "var8":Landroid/view/View;
    .restart local v20    # "var10":I
    :cond_15
    :goto_a
    add-int/lit8 v4, v20, 0x1

    move-object v3, v9

    const/4 v9, 0x0

    .end local v20    # "var10":I
    .restart local v4    # "var10":I
    goto/16 :goto_8

    .line 2652
    .end local v9    # "var8":Landroid/view/View;
    .restart local v3    # "var8":Landroid/view/View;
    :cond_16
    move/from16 v20, v4

    .end local v4    # "var10":I
    .restart local v20    # "var10":I
    if-eqz p3, :cond_1d

    .line 2653
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v0, v10

    const/4 v1, 0x1

    if-gt v7, v0, :cond_18

    .line 2654
    iget-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_17

    .line 2655
    iput-boolean v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 2656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 2657
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_17

    .line 2658
    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 2662
    :cond_17
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 2664
    const/4 v0, 0x2

    iput v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 2665
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 2667
    :cond_18
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v0, v11, v0

    iget v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, v2

    if-lt v7, v0, :cond_1a

    .line 2668
    iget-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_19

    .line 2669
    iput-boolean v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 2670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 2671
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_19

    .line 2672
    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 2676
    :cond_19
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 2678
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 2679
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 2682
    :cond_1a
    const/4 v2, 0x0

    iget-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_1b

    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_1b

    .line 2683
    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 2686
    :cond_1b
    const-wide/16 v4, 0x0

    iput-wide v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 2687
    iput-wide v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 2688
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 2689
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2690
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2691
    iget v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    if-ne v2, v1, :cond_1c

    .line 2692
    invoke-virtual {v6, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 2696
    :cond_1c
    iput-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 2700
    :cond_1d
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 2701
    .end local v15    # "var9":I
    .end local v20    # "var10":I
    move v0, v14

    goto :goto_c

    .line 2702
    .end local v14    # "var1":I
    .local v0, "var1":I
    :cond_1e
    const-string v1, "touchedPosition is NO_POSITION"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    :goto_c
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 2708
    if-gez p1, :cond_0

    .line 2709
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureLeftGlow()V

    .line 2710
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2711
    :cond_0
    if-lez p1, :cond_1

    .line 2712
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureRightGlow()V

    .line 2713
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onAbsorb(I)V

    .line 2716
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 2717
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureTopGlow()V

    .line 2718
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2719
    :cond_2
    if-lez p2, :cond_3

    .line 2720
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureBottomGlow()V

    .line 2721
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onAbsorb(I)V

    .line 2724
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 2725
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2728
    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2731
    .local p1, "var1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onAddFocusables(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2732
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2735
    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;

    .line 2738
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;I)V

    .line 2739
    return-void
.end method

.method public addItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;
    .param p2, "var2"    # I

    .line 2742
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2743
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2746
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setWillNotDraw(Z)V

    .line 2750
    :cond_1
    if-gez p2, :cond_2

    .line 2751
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2753
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2756
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->markItemDecorInsetsDirty()V

    .line 2757
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 2758
    return-void
.end method

.method public addOnChildAttachStateChangeListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;

    .line 2761
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2766
    return-void
.end method

.method public addOnItemTouchListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 2769
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    return-void
.end method

.method public addOnScrollListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    .line 2773
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    .line 2777
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2778
    return-void
.end method

.method animateAppearance(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 2781
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2782
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->animateAppearance(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2783
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->postAnimationRunner()V

    .line 2786
    :cond_0
    return-void
.end method

.method animateDisappearance(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 2789
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addAnimatingView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 2790
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2791
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->animateDisappearance(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2792
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->postAnimationRunner()V

    .line 2795
    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 3
    .param p1, "var1"    # Ljava/lang/String;

    .line 2798
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2799
    if-nez p1, :cond_0

    .line 2800
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call this method unless SeslRecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2802
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2805
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 3
    .param p1, "var1"    # Ljava/lang/String;

    .line 2808
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2809
    if-nez p1, :cond_0

    .line 2810
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call this method while SeslRecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2812
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2815
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_2

    .line 2816
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "SeslRecyclerView"

    const-string v2, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the SeslRecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v1, v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2820
    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 2824
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2825
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 2827
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 2830
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2835
    instance-of v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->checkLayoutParams(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2836
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 2838
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 2841
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method clearOldPositions()V
    .locals 4

    .line 2845
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2847
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2848
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 2849
    .local v2, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2850
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearOldPosition()V

    .line 2847
    .end local v2    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2854
    .end local v1    # "var2":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->clearOldPositions()V

    .line 2855
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 2858
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2859
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2862
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 2865
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2866
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2869
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 3

    .line 2872
    const/4 v0, 0x0

    .line 2873
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2874
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    .line 2877
    :cond_0
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 3

    .line 2881
    const/4 v0, 0x0

    .line 2882
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2883
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    .line 2886
    :cond_0
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 3

    .line 2890
    const/4 v0, 0x0

    .line 2891
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2892
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    .line 2895
    :cond_0
    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 3

    .line 2899
    const/4 v0, 0x0

    .line 2900
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2901
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    .line 2904
    :cond_0
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 3

    .line 2908
    const/4 v0, 0x0

    .line 2909
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2910
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    .line 2913
    :cond_0
    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 3

    .line 2917
    const/4 v0, 0x0

    .line 2918
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2919
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v0

    .line 2922
    :cond_0
    return v0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 2926
    const/4 v0, 0x0

    .line 2927
    .local v0, "var3":Z
    move v1, v0

    .line 2928
    .local v1, "var4":Z
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v2, :cond_0

    .line 2929
    move v1, v0

    .line 2930
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2931
    move v1, v0

    .line 2932
    if-lez p1, :cond_0

    .line 2933
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2934
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    .line 2939
    :cond_0
    move v0, v1

    .line 2940
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v2, :cond_1

    .line 2941
    move v0, v1

    .line 2942
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2943
    move v0, v1

    .line 2944
    if-gez p1, :cond_1

    .line 2945
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2946
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    or-int v0, v1, v2

    .line 2951
    :cond_1
    move v1, v0

    .line 2952
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v2, :cond_2

    .line 2953
    move v1, v0

    .line 2954
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2955
    move v1, v0

    .line 2956
    if-lez p2, :cond_2

    .line 2957
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2958
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    or-int v1, v0, v2

    .line 2963
    :cond_2
    move v0, v1

    .line 2964
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v2, :cond_3

    .line 2965
    move v0, v1

    .line 2966
    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2967
    move v0, v1

    .line 2968
    if-gez p2, :cond_3

    .line 2969
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2970
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    or-int v0, v1, v2

    .line 2975
    :cond_3
    if-eqz v0, :cond_4

    .line 2976
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2979
    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 3

    .line 2982
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_3

    .line 2983
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2984
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2985
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 2987
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 2988
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->preProcess()V

    .line 2989
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_1

    .line 2990
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2991
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 2993
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->consumePostponedUpdates()V

    .line 2997
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2998
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 2999
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_1

    .line 3000
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3001
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayout()V

    .line 3003
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_1

    .line 3007
    :cond_3
    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayout()V

    .line 3009
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 3012
    :cond_4
    :goto_1
    return-void
.end method

.method defaultOnMeasure(II)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 3015
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setMeasuredDimension(II)V

    .line 3016
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 3019
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 3020
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 3021
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3022
    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onViewAttachedToWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 3025
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3026
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "var3":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3027
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 3026
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3031
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 3034
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 3035
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 3036
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3037
    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 3040
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3041
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "var3":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3042
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 3041
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3046
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 3049
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3050
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3053
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3054
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 3053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3057
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawRect:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastBlackTop:I

    if-eq v2, v4, :cond_7

    :cond_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3058
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAnimatedBlackTop:I

    .line 3059
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3061
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawReverse:Z

    if-eqz v2, :cond_3

    .line 3062
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    const/4 v3, 0x0

    if-eq v2, v4, :cond_2

    .line 3063
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "var6":Landroid/view/View;
    goto :goto_1

    .line 3065
    .end local v2    # "var6":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "var6":Landroid/view/View;
    goto :goto_1

    .line 3067
    .end local v2    # "var6":Landroid/view/View;
    :cond_3
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    if-eq v2, v4, :cond_4

    .line 3068
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "var6":Landroid/view/View;
    goto :goto_1

    .line 3070
    .end local v2    # "var6":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3073
    .restart local v2    # "var6":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_5

    .line 3074
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAnimatedBlackTop:I

    .line 3078
    .end local v2    # "var6":Landroid/view/View;
    :cond_5
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    if-ne v2, v4, :cond_6

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAnimatedBlackTop:I

    if-eq v3, v2, :cond_8

    .line 3079
    :cond_6
    const/4 v5, 0x0

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAnimatedBlackTop:I

    int-to-float v6, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getRight()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3080
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawLastOutLineStroke:Z

    if-eqz v2, :cond_8

    .line 3081
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAnimatedBlackTop:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v7

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(IIIILandroid/graphics/Canvas;)V

    goto :goto_2

    .line 3084
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawRect:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawLastItemOutlineStoke:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3085
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    .line 3086
    .local v2, "var4":Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v0

    .line 3087
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getRight()I

    move-result v1

    .line 3088
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v9

    .line 3089
    .local v9, "var5":I
    const/4 v4, 0x0

    move-object v3, v2

    move v5, v0

    move v6, v1

    move v7, v9

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(IIIILandroid/graphics/Canvas;)V

    .line 3092
    .end local v2    # "var4":Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;
    .end local v9    # "var5":I
    :cond_8
    :goto_2
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 3096
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    const-string v3, "SeslRecyclerView"

    if-nez v0, :cond_0

    .line 3097
    const-string v0, "No adapter attached; skipping hover scroll"

    invoke-static {v3, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "var2":Z
    goto/16 :goto_10

    .line 3100
    .end local v0    # "var2":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3101
    .local v4, "var3":I
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    .line 3102
    .local v6, "var4":I
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsMouseWheel:Z

    .line 3103
    const/16 v0, 0x9

    const/4 v7, 0x7

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v4, v7, :cond_1

    if-ne v4, v0, :cond_2

    :cond_1
    if-ne v6, v9, :cond_2

    .line 3104
    iput-boolean v10, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenHovered:Z

    goto :goto_0

    .line 3105
    :cond_2
    if-ne v4, v8, :cond_3

    .line 3106
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenHovered:Z

    .line 3109
    :cond_3
    :goto_0
    const-class v11, Landroid/widget/TextView;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1d

    if-lt v12, v13, :cond_4

    const-string v12, "hidden_semIsTextViewHovered"

    goto :goto_1

    :cond_4
    const-string v12, "semIsTextViewHovered"

    :goto_1
    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iput-boolean v11, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNewTextViewHoverState:Z

    .line 3110
    const/16 v12, 0x20

    if-nez v11, :cond_6

    iget-boolean v11, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOldTextViewHoverState:Z

    if-eqz v11, :cond_6

    iget-boolean v11, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-eq v11, v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-ne v11, v9, :cond_6

    .line 3111
    :cond_5
    iput-boolean v10, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelectIconSet:Z

    goto :goto_2

    .line 3113
    :cond_6
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 3116
    :goto_2
    iget-boolean v11, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNewTextViewHoverState:Z

    iput-boolean v11, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOldTextViewHoverState:Z

    .line 3120
    const/16 v11, 0x4e35

    const/16 v13, 0x4e21

    if-eq v4, v0, :cond_a

    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateChanged:Z

    if-nez v0, :cond_a

    .line 3121
    if-eq v4, v7, :cond_7

    .line 3122
    if-ne v4, v8, :cond_14

    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v0, :cond_14

    .line 3123
    invoke-direct {v1, v2, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3124
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 3126
    :cond_7
    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v0, :cond_8

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v9, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v9, :cond_9

    :cond_8
    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelectIconSet:Z

    if-nez v0, :cond_9

    .line 3127
    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v12, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v9, :cond_14

    .line 3128
    invoke-direct {v1, v2, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3129
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 3132
    :cond_9
    invoke-direct {v1, v2, v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3133
    iput-boolean v10, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 3136
    :cond_a
    iput-boolean v10, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 3137
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateChanged:Z

    .line 3138
    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_b

    .line 3139
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRange()V

    .line 3142
    :cond_b
    const-class v0, Landroid/view/View;

    new-array v7, v5, [Ljava/lang/Object;

    const-string v14, "isHoveringUIEnabled"

    invoke-static {v0, v1, v14, v7}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollEnable:Z

    if-nez v0, :cond_d

    .line 3143
    :cond_c
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 3146
    :cond_d
    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    if-eqz v0, :cond_13

    if-ne v6, v9, :cond_13

    .line 3147
    const-string v7, "pen_hovering"

    .line 3148
    .local v7, "var5":Ljava/lang/String;
    iget-object v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_e

    .line 3149
    const/4 v0, 0x1

    move v14, v0

    .local v0, "var6":Z
    goto :goto_3

    .line 3151
    .end local v0    # "var6":Z
    :cond_e
    const/4 v0, 0x0

    move v14, v0

    .line 3154
    .local v14, "var6":Z
    :goto_3
    const/4 v15, 0x0

    .line 3158
    .local v15, "var7":Z
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "car_mode_on"

    invoke-static {v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3162
    .local v0, "var8":I
    nop

    .line 3164
    if-ne v0, v10, :cond_f

    .line 3165
    const/4 v15, 0x1

    goto :goto_4

    .line 3167
    :cond_f
    const/4 v15, 0x0

    goto :goto_4

    .line 3159
    .end local v0    # "var8":I
    :catch_0
    move-exception v0

    .line 3160
    .local v0, "var13":Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "dispatchHoverEvent car_mode_on SettingNotFoundException"

    invoke-static {v3, v8}, Lcom/mesalabs/ten/update/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    nop

    .line 3171
    .end local v0    # "var13":Landroid/provider/Settings$SettingNotFoundException;
    :goto_4
    if-eqz v14, :cond_10

    if-eqz v15, :cond_11

    .line 3172
    :cond_10
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 3175
    :cond_11
    if-eqz v14, :cond_13

    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v12, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-ne v0, v9, :cond_13

    .line 3176
    :cond_12
    invoke-direct {v1, v2, v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3177
    iput-boolean v10, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectPointerSetted:Z

    .line 3181
    .end local v7    # "var5":Ljava/lang/String;
    .end local v14    # "var6":Z
    .end local v15    # "var7":Z
    :cond_13
    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    if-ne v6, v0, :cond_14

    .line 3182
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    .line 3186
    :cond_14
    :goto_5
    iget-boolean v0, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNeedsHoverScroll:Z

    if-nez v0, :cond_15

    .line 3187
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "var2":Z
    goto/16 :goto_10

    .line 3189
    .end local v0    # "var2":Z
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3190
    .local v0, "var9":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 3191
    .local v3, "var10":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v7

    .line 3193
    .local v7, "var11":I
    iget-boolean v8, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v8, :cond_16

    .line 3194
    iget-object v8, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 3195
    .local v8, "var12":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v11

    iget-object v14, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v14

    .local v11, "var8":I
    goto :goto_6

    .line 3197
    .end local v8    # "var12":I
    .end local v11    # "var8":I
    :cond_16
    iget v8, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mExtraPaddingInTopHoverArea:I

    .line 3198
    .restart local v8    # "var12":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v11

    iget v14, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mExtraPaddingInBottomHoverArea:I

    sub-int/2addr v11, v14

    .line 3201
    .restart local v11    # "var8":I
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v14

    add-int/2addr v14, v7

    iget-object v15, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v15}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v15

    if-ge v14, v15, :cond_17

    .line 3202
    const/4 v14, 0x1

    .restart local v14    # "var6":Z
    goto :goto_7

    .line 3204
    .end local v14    # "var6":Z
    :cond_17
    const/4 v14, 0x0

    .line 3207
    .restart local v14    # "var6":Z
    :goto_7
    move v15, v14

    .line 3208
    .restart local v15    # "var7":Z
    if-nez v14, :cond_19

    .line 3209
    move v15, v14

    .line 3210
    if-lez v7, :cond_19

    .line 3211
    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v1, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3212
    .local v13, "var15":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v16

    iget-object v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v16, v12

    if-gt v10, v12, :cond_18

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v12

    iget-object v9, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v9

    if-gt v10, v12, :cond_18

    .line 3213
    const/4 v15, 0x0

    goto :goto_8

    .line 3215
    :cond_18
    const/4 v15, 0x1

    .line 3221
    .end local v13    # "var15":Landroid/view/View;
    :cond_19
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstChildPosition()I

    move-result v9

    if-lez v9, :cond_1a

    .line 3222
    const/4 v9, 0x1

    .local v9, "var14":Z
    goto :goto_9

    .line 3224
    .end local v9    # "var14":Z
    :cond_1a
    const/4 v9, 0x0

    .line 3227
    .restart local v9    # "var14":Z
    :goto_9
    move v10, v9

    .line 3228
    .end local v14    # "var6":Z
    .local v10, "var6":Z
    if-nez v9, :cond_1c

    .line 3229
    move v10, v9

    .line 3230
    if-lez v7, :cond_1c

    .line 3231
    invoke-virtual {v1, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-ge v12, v13, :cond_1b

    .line 3232
    const/4 v10, 0x1

    goto :goto_a

    .line 3234
    :cond_1b
    const/4 v10, 0x0

    .line 3239
    :cond_1c
    :goto_a
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1d

    .line 3240
    const/4 v9, 0x1

    goto :goto_b

    .line 3242
    :cond_1d
    const/4 v9, 0x0

    .line 3245
    :goto_b
    iget v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v12, v8

    if-le v3, v12, :cond_1f

    iget v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v12, v11, v12

    iget v13, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v12, v13

    if-lt v3, v12, :cond_1e

    goto :goto_c

    :cond_1e
    move v14, v6

    move v5, v7

    goto/16 :goto_f

    :cond_1f
    :goto_c
    if-lez v0, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getRight()I

    move-result v12

    if-gt v0, v12, :cond_35

    if-nez v10, :cond_20

    if-eqz v15, :cond_1e

    :cond_20
    if-lt v3, v8, :cond_21

    iget v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v12, v8

    if-gt v3, v12, :cond_21

    if-nez v10, :cond_21

    iget-boolean v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    if-nez v12, :cond_1e

    :cond_21
    iget v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v12, v11, v12

    iget v13, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v12, v13

    if-lt v3, v12, :cond_22

    sub-int v12, v11, v13

    if-gt v3, v12, :cond_22

    if-nez v15, :cond_22

    iget-boolean v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    if-nez v12, :cond_1e

    :cond_22
    if-eqz v9, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    const/16 v13, 0x20

    if-eq v12, v13, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1e

    :cond_23
    if-eqz v9, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isLockScreenMode()Z

    move-result v12

    if-nez v12, :cond_35

    .line 3246
    iget-boolean v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    if-eqz v12, :cond_24

    iget v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    if-lez v12, :cond_24

    iget v13, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScrollRange:I

    if-eq v12, v13, :cond_24

    .line 3247
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRange()V

    .line 3250
    :cond_24
    iget-boolean v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v12, :cond_25

    .line 3251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3254
    :cond_25
    const/16 v12, 0x4e2f

    const/16 v13, 0x4e2b

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v14, v6

    move v5, v7

    .end local v6    # "var4":I
    .end local v7    # "var11":I
    .local v5, "var11":I
    .local v14, "var4":I
    goto/16 :goto_d

    .line 3318
    .end local v5    # "var11":I
    .end local v14    # "var4":I
    .restart local v6    # "var4":I
    .restart local v7    # "var11":I
    :pswitch_1
    iget-object v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v12, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 3319
    iget-object v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v12, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3322
    :cond_26
    iget v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_27

    .line 3323
    invoke-virtual {v1, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 3326
    :cond_27
    const/16 v12, 0x4e21

    invoke-direct {v1, v2, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3327
    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3328
    iput-wide v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3329
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 3330
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3331
    iput-boolean v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    .line 3332
    iget v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    if-eqz v12, :cond_28

    .line 3333
    iput v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    .line 3334
    iget-object v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v12, :cond_28

    .line 3335
    invoke-virtual {v12, v1, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 3339
    :cond_28
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 3340
    .local v5, "var2":Z
    return v5

    .line 3302
    .end local v5    # "var2":Z
    :pswitch_2
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3303
    if-lt v3, v8, :cond_2a

    iget v14, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v14, v8

    if-gt v3, v14, :cond_2a

    .line 3304
    iget-object v12, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v12, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_29

    .line 3305
    move v14, v6

    .end local v6    # "var4":I
    .restart local v14    # "var4":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3306
    invoke-direct {v1, v2, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3307
    const/4 v5, 0x2

    iput v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 3308
    iget-object v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v5, v7

    goto/16 :goto_e

    .line 3304
    .end local v14    # "var4":I
    .restart local v6    # "var4":I
    :cond_29
    move v14, v6

    .end local v6    # "var4":I
    .restart local v14    # "var4":I
    move v5, v7

    goto/16 :goto_e

    .line 3303
    .end local v14    # "var4":I
    .restart local v6    # "var4":I
    :cond_2a
    move v14, v6

    .line 3310
    .end local v6    # "var4":I
    .restart local v14    # "var4":I
    iget v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v5, v11, v5

    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v5, v6

    if-lt v3, v5, :cond_2b

    sub-int v5, v11, v6

    if-gt v3, v5, :cond_2b

    iget-object v5, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 3311
    move v5, v7

    .end local v7    # "var11":I
    .local v5, "var11":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3312
    invoke-direct {v1, v2, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3313
    const/4 v6, 0x1

    iput v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 3314
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 3310
    .end local v5    # "var11":I
    .restart local v7    # "var11":I
    :cond_2b
    move v5, v7

    .end local v7    # "var11":I
    .restart local v5    # "var11":I
    goto/16 :goto_e

    .line 3256
    .end local v5    # "var11":I
    .end local v14    # "var4":I
    .restart local v6    # "var4":I
    .restart local v7    # "var11":I
    :pswitch_3
    move v14, v6

    move v5, v7

    .end local v6    # "var4":I
    .end local v7    # "var11":I
    .restart local v5    # "var11":I
    .restart local v14    # "var4":I
    iget-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v6, :cond_2c

    .line 3257
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3258
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3259
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 3260
    .local v6, "var2":Z
    return v6

    .line 3263
    .end local v6    # "var2":Z
    :cond_2c
    if-lt v3, v8, :cond_2f

    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v6, v8

    if-gt v3, v6, :cond_2f

    .line 3264
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_34

    .line 3265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3266
    iget-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v6, :cond_2d

    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2e

    .line 3267
    :cond_2d
    invoke-direct {v1, v2, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3270
    :cond_2e
    const/4 v6, 0x2

    iput v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 3271
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 3273
    :cond_2f
    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v6, v11, v6

    iget v7, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v6, v7

    if-lt v3, v6, :cond_32

    sub-int v6, v11, v7

    if-gt v3, v6, :cond_32

    .line 3274
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_34

    .line 3275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3276
    iget-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v6, :cond_30

    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_31

    .line 3277
    :cond_30
    invoke-direct {v1, v2, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3280
    :cond_31
    const/4 v6, 0x1

    iput v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollDirection:I

    .line 3281
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 3273
    :cond_32
    const/4 v7, 0x0

    .line 3284
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 3285
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3286
    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    const/4 v12, 0x1

    if-ne v6, v12, :cond_33

    .line 3287
    invoke-virtual {v1, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 3291
    :cond_33
    const/16 v6, 0x4e21

    invoke-direct {v1, v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3292
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3293
    iput-wide v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3294
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 3295
    iput-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3296
    iput-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    .line 3300
    :cond_34
    :goto_d
    nop

    .line 3343
    :goto_e
    const/4 v6, 0x1

    move v0, v6

    .restart local v6    # "var2":Z
    goto/16 :goto_10

    .line 3245
    .end local v5    # "var11":I
    .end local v14    # "var4":I
    .local v6, "var4":I
    .restart local v7    # "var11":I
    :cond_35
    move v14, v6

    move v5, v7

    .line 3345
    .end local v6    # "var4":I
    .end local v7    # "var11":I
    .restart local v5    # "var11":I
    .restart local v14    # "var4":I
    :goto_f
    iget-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    if-eqz v6, :cond_36

    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    if-lez v6, :cond_36

    iget v7, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScrollRange:I

    if-eq v6, v7, :cond_36

    .line 3346
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRange()V

    .line 3349
    :cond_36
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 3350
    iget-object v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3351
    const/16 v6, 0x4e21

    invoke-direct {v1, v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3352
    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    const/4 v12, 0x1

    if-ne v6, v12, :cond_37

    .line 3353
    invoke-virtual {v1, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 3357
    :cond_37
    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v6, v8

    if-le v3, v6, :cond_38

    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    sub-int v6, v11, v6

    iget v7, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v6, v7

    if-lt v3, v6, :cond_39

    :cond_38
    if-lez v0, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getRight()I

    move-result v6

    if-le v0, v6, :cond_3a

    .line 3358
    :cond_39
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 3361
    :cond_3a
    iget-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    if-nez v6, :cond_3b

    iget-wide v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-eqz v6, :cond_3c

    .line 3362
    :cond_3b
    const/16 v6, 0x4e21

    invoke-direct {v1, v2, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 3365
    :cond_3c
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverRecognitionStartTime:J

    .line 3366
    iput-wide v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStartTime:J

    .line 3367
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverAreaEnter:Z

    .line 3368
    iput-boolean v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsSendHoverScrollState:Z

    .line 3369
    const/16 v7, 0xa

    if-ne v4, v7, :cond_3d

    iget v7, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    if-eqz v7, :cond_3d

    .line 3370
    iput v6, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateForListener:I

    .line 3371
    iget-object v7, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v7, :cond_3d

    .line 3372
    invoke-virtual {v7, v1, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 3376
    :cond_3d
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v0, v6

    .line 3381
    .end local v3    # "var10":I
    .end local v4    # "var3":I
    .end local v5    # "var11":I
    .end local v8    # "var12":I
    .end local v9    # "var14":Z
    .end local v10    # "var6":Z
    .end local v11    # "var8":I
    .end local v14    # "var4":I
    .end local v15    # "var7":Z
    .local v0, "var2":Z
    :goto_10
    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .line 3385
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3388
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsArrowKeyPressed:Z

    .line 3392
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method dispatchLayout()V
    .locals 2

    .line 3397
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    const-string v1, "SeslRecyclerView"

    if-nez v0, :cond_0

    .line 3398
    const-string v0, "No adapter attached; skipping layout"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3399
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 3400
    const-string v0, "No layout manager attached; skipping layout"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3402
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 3403
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3404
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayoutStep1()V

    .line 3405
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 3406
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayoutStep2()V

    goto :goto_0

    .line 3407
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 3408
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    goto :goto_0

    .line 3410
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 3411
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayoutStep2()V

    .line 3414
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayoutStep3()V

    .line 3417
    :goto_1
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F
    .param p3, "var3"    # Z

    .line 3420
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 3424
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # [I
    .param p4, "var4"    # [I

    .line 3428
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # [I
    .param p4, "var4"    # [I
    .param p5, "var5"    # I

    .line 3432
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # [I

    .line 3436
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # [I
    .param p6, "var6"    # I

    .line 3440
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 3444
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 3445
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 3448
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onScrollStateChanged(I)V

    .line 3449
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 3450
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 3453
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var2":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3455
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 3454
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3459
    .end local v0    # "var2":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 3462
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    .line 3463
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollX()I

    move-result v0

    .line 3464
    .local v0, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollY()I

    move-result v1

    .line 3465
    .local v1, "var4":I
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onScrollChanged(IIII)V

    .line 3466
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onScrolled(II)V

    .line 3467
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v3, :cond_0

    .line 3468
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 3471
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    if-eqz v2, :cond_1

    .line 3472
    invoke-virtual {v2, p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrolled(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    .line 3475
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 3476
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 3477
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v2, p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrolled(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    .line 3476
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3481
    :cond_2
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchScrollCounter:I

    .line 3482
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .line 3486
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var1":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3487
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 3488
    .local v1, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3489
    iget v2, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 3490
    .local v2, "var3":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3491
    iget-object v4, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 3492
    iput v3, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 3486
    .end local v1    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v2    # "var3":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3497
    .end local v0    # "var1":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3498
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3501
    .local p1, "var1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 3502
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3505
    .local p1, "var1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 3506
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 3510
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    const-string v1, "SeslRecyclerView"

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->getItemAnimationTypeInternal()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3511
    const-string v0, "dispatchTouchEvent : itemAnimator is running, return.."

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto/16 :goto_7

    .line 3513
    .end local v0    # "var2":Z
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 3514
    const-string v0, "No layout manager attached; skipping gototop & multiselection"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "var2":Z
    goto/16 :goto_7

    .line 3517
    .end local v0    # "var2":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3518
    .local v0, "var3":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 3519
    .local v3, "var4":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 3520
    .local v4, "var5":I
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 3521
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 3526
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v5, :cond_3

    .line 3527
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 3528
    .local v5, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    move v11, v5

    move v12, v6

    .local v6, "var7":I
    goto :goto_0

    .line 3530
    .end local v5    # "var6":I
    .end local v6    # "var7":I
    :cond_3
    const/4 v5, 0x0

    .line 3531
    .restart local v5    # "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v6

    move v11, v5

    move v12, v6

    .line 3534
    .end local v5    # "var6":I
    .local v11, "var6":I
    .local v12, "var7":I
    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    .line 3692
    :sswitch_0
    const/4 v10, 0x0

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v11

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->multiSelection(IIIIZ)V

    goto/16 :goto_6

    .line 3681
    :sswitch_1
    const-class v1, Landroid/widget/TextView;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v2, v7, :cond_4

    const-string v2, "hidden_semIsTextSelectionProgressing"

    goto :goto_1

    :cond_4
    const-string v2, "semIsTextSelectionProgressing"

    :goto_1
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectionEnabled:Z

    if-eqz v1, :cond_5

    .line 3682
    iput-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    goto :goto_2

    .line 3684
    :cond_5
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    .line 3687
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v1, :cond_19

    .line 3688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    goto/16 :goto_6

    .line 3585
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    if-eqz v7, :cond_a

    .line 3586
    if-ne v7, v2, :cond_6

    .line 3587
    iput v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    .line 3590
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_3

    .line 3560
    :sswitch_3
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v1, :cond_7

    .line 3561
    const/4 v10, 0x0

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v11

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->multiSelection(IIIIZ)V

    .line 3562
    const/4 v1, 0x1

    .line 3563
    .local v1, "var2":Z
    return v1

    .line 3566
    .end local v1    # "var2":Z
    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v1, :cond_8

    .line 3567
    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->updateLongPressMultiSelection(IIZ)V

    .line 3568
    const/4 v1, 0x1

    .line 3569
    .restart local v1    # "var2":Z
    return v1

    .line 3572
    .end local v1    # "var2":Z
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    if-ne v1, v2, :cond_19

    .line 3573
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3574
    iput v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    .line 3575
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 3576
    invoke-direct {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->autoHide(I)V

    .line 3577
    iput-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopMoved:Z

    .line 3580
    :cond_9
    const/4 v1, 0x1

    .line 3581
    .restart local v1    # "var2":Z
    return v1

    .line 3593
    .end local v1    # "var2":Z
    :cond_a
    :goto_3
    :sswitch_4
    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v7, :cond_b

    .line 3594
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->multiSelectionEnd(II)V

    .line 3595
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    .line 3596
    const/4 v1, 0x1

    .line 3597
    .restart local v1    # "var2":Z
    return v1

    .line 3600
    .end local v1    # "var2":Z
    :cond_b
    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v7, :cond_e

    .line 3601
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v7, :cond_c

    .line 3602
    invoke-interface {v7, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    .line 3605
    :cond_c
    iput-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 3606
    const/4 v7, -0x1

    iput v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedViewPosition:I

    .line 3607
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartX:I

    .line 3608
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 3609
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndX:I

    .line 3610
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 3611
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    .line 3612
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 3613
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRight:I

    .line 3614
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 3615
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3616
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3617
    iput v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 3618
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3619
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3620
    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    if-ne v7, v5, :cond_d

    .line 3621
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 3625
    :cond_d
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsHoverOverscrolled:Z

    .line 3626
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 3627
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    .line 3630
    :cond_e
    :sswitch_5
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v7

    if-eqz v7, :cond_14

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    if-ne v7, v2, :cond_14

    .line 3631
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3632
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslOnGoToTopClickListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;

    .line 3633
    .local v2, "var10":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;
    if-eqz v2, :cond_f

    invoke-interface {v2, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;->onGoToTopClick(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 3634
    return v5

    .line 3637
    :cond_f
    const-string v7, " can scroll top "

    invoke-static {v1, v7}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    .line 3639
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    if-eqz v1, :cond_13

    .line 3640
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopScroll()V

    .line 3641
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 3642
    .local v1, "var11":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    instance-of v7, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v7, :cond_10

    .line 3643
    move-object v7, v1

    check-cast v7, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v7, v6, v6}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_5

    .line 3645
    :cond_10
    iput-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToping:Z

    .line 3646
    if-lez v4, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v7

    if-ge v4, v7, :cond_12

    .line 3647
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 3648
    instance-of v7, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    if-eqz v7, :cond_11

    .line 3649
    move-object v7, v1

    check-cast v7, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    invoke-virtual {v7, v4, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_4

    .line 3651
    :cond_11
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 3655
    :cond_12
    :goto_4
    new-instance v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$11;

    invoke-direct {v7, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$11;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 3662
    :goto_5
    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/16 v9, 0x96

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslShowGoToTopEdge(FFI)V

    .line 3666
    .end local v1    # "var11":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    .end local v2    # "var10":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslHideGoToTop()V

    .line 3667
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->playSoundEffect(I)V

    .line 3668
    return v5

    .line 3671
    :cond_14
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopMoved:Z

    if-eqz v1, :cond_15

    .line 3672
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopMoved:Z

    .line 3673
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_15

    .line 3674
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 3678
    :cond_15
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->multiSelectionEnd(II)V

    .line 3679
    goto :goto_6

    .line 3536
    :sswitch_6
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3537
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopMoved:Z

    .line 3538
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToToping:Z

    .line 3541
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    if-eq v1, v2, :cond_17

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3542
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 3543
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 3544
    return v5

    .line 3547
    :cond_17
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    if-eqz v1, :cond_18

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 3548
    iput-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlMultiSelection:Z

    .line 3549
    iput-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsNeedPenSelection:Z

    .line 3550
    const/4 v10, 0x0

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v11

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->multiSelection(IIIIZ)V

    .line 3551
    const/4 v1, 0x1

    .line 3552
    .local v1, "var2":Z
    return v1

    .line 3555
    .end local v1    # "var2":Z
    :cond_18
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v1, :cond_19

    .line 3556
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    .line 3695
    :cond_19
    :goto_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    move v0, v1

    .line 3698
    .end local v3    # "var4":I
    .end local v4    # "var5":I
    .end local v11    # "var6":I
    .end local v12    # "var7":I
    .local v0, "var2":Z
    :goto_7
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_0
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 3702
    const/4 v0, 0x1

    .line 3703
    .local v0, "var2":Z
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3704
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3707
    .local v1, "var3":I
    const/4 v2, 0x0

    .local v2, "var4":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3708
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 3707
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3711
    :cond_0
    const/4 v3, 0x0

    .line 3712
    .local v3, "var8":Z
    move v4, v3

    .line 3714
    .local v4, "var7":Z
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v5, :cond_3

    .line 3715
    move v4, v3

    .line 3716
    invoke-virtual {v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3717
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 3718
    .local v5, "var5":I
    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_1

    .line 3719
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v2

    goto :goto_1

    .line 3721
    :cond_1
    const/4 v2, 0x0

    .line 3724
    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3725
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3726
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3727
    const/4 v4, 0x1

    goto :goto_2

    .line 3729
    :cond_2
    const/4 v4, 0x0

    .line 3732
    :goto_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3736
    .end local v5    # "var5":I
    :cond_3
    move v3, v4

    .line 3737
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v5, :cond_6

    .line 3738
    move v3, v4

    .line 3739
    invoke-virtual {v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3740
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 3741
    .restart local v5    # "var5":I
    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_4

    .line 3742
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3745
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v6, :cond_5

    invoke-virtual {v6, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3746
    const/4 v3, 0x1

    goto :goto_3

    .line 3748
    :cond_5
    const/4 v3, 0x0

    .line 3751
    :goto_3
    or-int/2addr v3, v4

    .line 3752
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3756
    .end local v5    # "var5":I
    :cond_6
    move v4, v3

    .line 3757
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v5, :cond_9

    .line 3758
    move v4, v3

    .line 3759
    invoke-virtual {v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 3760
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 3761
    .restart local v5    # "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v6

    .line 3762
    .local v6, "var6":I
    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_7

    .line 3763
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v1

    goto :goto_4

    .line 3765
    :cond_7
    const/4 v1, 0x0

    .line 3768
    :goto_4
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3769
    neg-int v7, v1

    int-to-float v7, v7

    neg-int v8, v6

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3770
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v7, :cond_8

    invoke-virtual {v7, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3771
    const/4 v4, 0x1

    goto :goto_5

    .line 3773
    :cond_8
    const/4 v4, 0x0

    .line 3776
    :goto_5
    or-int/2addr v4, v3

    .line 3777
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3781
    .end local v5    # "var5":I
    .end local v6    # "var6":I
    :cond_9
    move v3, v4

    .line 3782
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v5, :cond_c

    .line 3783
    move v3, v4

    .line 3784
    invoke-virtual {v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_c

    .line 3785
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 3786
    .restart local v5    # "var5":I
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3787
    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_a

    .line 3788
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 3790
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3793
    :goto_6
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v6, :cond_b

    invoke-virtual {v6, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3794
    move v3, v0

    goto :goto_7

    .line 3796
    :cond_b
    const/4 v3, 0x0

    .line 3799
    :goto_7
    or-int/2addr v3, v4

    .line 3800
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3804
    .end local v5    # "var5":I
    :cond_c
    move v4, v3

    .line 3805
    if-nez v3, :cond_d

    .line 3806
    move v4, v3

    .line 3807
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v5, :cond_d

    .line 3808
    move v4, v3

    .line 3809
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 3810
    move v4, v3

    .line 3811
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3812
    const/4 v4, 0x1

    .line 3818
    :cond_d
    if-eqz v4, :cond_e

    .line 3819
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3822
    :cond_e
    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v5, :cond_f

    .line 3823
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->drawGoToTop()V

    .line 3826
    :cond_f
    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v5, :cond_15

    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v5, :cond_15

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    if-nez v5, :cond_10

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockTop:I

    if-eqz v5, :cond_15

    .line 3827
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    .line 3828
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 3829
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChildPosition:I

    if-lt v5, v2, :cond_12

    add-int v6, v1, v2

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_12

    .line 3830
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    sub-int/2addr v5, v2

    invoke-virtual {v6, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3831
    const/4 v2, 0x0

    .line 3832
    if-eqz v5, :cond_11

    .line 3833
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3836
    :cond_11
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDistanceFromTrackedChildTop:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 3839
    :cond_12
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    if-ge v5, v6, :cond_13

    .line 3840
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    goto :goto_8

    .line 3842
    :cond_13
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .line 3845
    :goto_8
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockTop:I

    .line 3846
    if-le v6, v5, :cond_14

    .line 3847
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragEndY:I

    .end local v2    # "var4":I
    .local v5, "var4":I
    goto :goto_9

    .line 3849
    .end local v5    # "var4":I
    .restart local v2    # "var4":I
    :cond_14
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragStartY:I

    .line 3852
    .end local v2    # "var4":I
    .restart local v5    # "var4":I
    :goto_9
    iput v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockBottom:I

    .line 3853
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockLeft:I

    iget v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRight:I

    invoke-virtual {v6, v7, v2, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3854
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3855
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v5

    .line 3858
    .end local v5    # "var4":I
    .restart local v2    # "var4":I
    :cond_15
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # J

    .line 3861
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 3865
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-nez v0, :cond_1

    .line 3866
    new-instance v0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 3867
    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 3868
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    .line 3869
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    .line 3871
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 3875
    :cond_1
    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 3878
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-nez v0, :cond_1

    .line 3879
    new-instance v0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 3880
    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 3881
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    .line 3882
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    .line 3884
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 3888
    :cond_1
    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 3891
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-nez v0, :cond_1

    .line 3892
    new-instance v0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 3893
    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 3894
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    .line 3895
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    .line 3897
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 3901
    :cond_1
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 3904
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-nez v0, :cond_1

    .line 3905
    new-instance v0, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 3906
    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 3907
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    .line 3908
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    .line 3910
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 3914
    :cond_1
    :goto_0
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .locals 2

    .line 3917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final fillRemainingScrollValues(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 3921
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3922
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->access$4700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;)Lcom/samsung/android/ui/widget/SeslOverScroller;

    move-result-object v0

    .line 3923
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslOverScroller;
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRemainingScrollHorizontal:I

    .line 3924
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRemainingScrollVertical:I

    .line 3925
    .end local v0    # "var2":Lcom/samsung/android/ui/widget/SeslOverScroller;
    goto :goto_0

    .line 3926
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRemainingScrollHorizontal:I

    .line 3927
    iput v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRemainingScrollVertical:I

    .line 3930
    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 3933
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3937
    .local v0, "var3":I
    :goto_0
    if-gez v0, :cond_0

    .line 3938
    const/4 v1, 0x0

    .line 3939
    .local v1, "var4":Landroid/view/View;
    goto :goto_1

    .line 3942
    .end local v1    # "var4":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3943
    .restart local v1    # "var4":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 3944
    .local v2, "var5":F
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 3945
    .local v3, "var6":F
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    .line 3946
    nop

    .line 3952
    .end local v2    # "var5":F
    .end local v3    # "var6":F
    :goto_1
    return-object v1

    .line 3949
    .restart local v2    # "var5":F
    .restart local v3    # "var6":F
    :cond_1
    nop

    .end local v2    # "var5":F
    .end local v3    # "var6":F
    add-int/lit8 v0, v0, -0x1

    .line 3950
    goto :goto_0
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 3957
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "var2":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3958
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 3957
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 3961
    :cond_0
    if-eq v0, p0, :cond_1

    .line 3962
    const/4 p1, 0x0

    .line 3965
    :cond_1
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 3969
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 3971
    if-nez p1, :cond_0

    .line 3972
    const/4 v0, 0x0

    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_0

    .line 3974
    .end local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 3977
    .restart local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_0
    return-object v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    .line 3982
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    if-eqz v1, :cond_0

    .line 3983
    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 3984
    .end local v0    # "var1":I
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 3985
    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .restart local v0    # "var1":I
    goto :goto_0

    .line 3987
    .end local v0    # "var1":I
    :cond_1
    const/4 v0, -0x1

    .line 3990
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 2

    .line 3995
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    if-eqz v1, :cond_0

    .line 3996
    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 3997
    .end local v0    # "var1":I
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 3998
    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .restart local v0    # "var1":I
    goto :goto_0

    .line 4000
    .end local v0    # "var1":I
    :cond_1
    const/4 v0, -0x1

    .line 4003
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 7
    .param p1, "var1"    # I

    .line 4008
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 4009
    const/4 v0, 0x0

    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_1

    .line 4011
    .end local v0    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4012
    .local v0, "var3":I
    const/4 v1, 0x0

    .line 4015
    .local v1, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "var4":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 4016
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 4017
    .local v3, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    move-object v4, v1

    .line 4018
    .local v4, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v3, :cond_2

    .line 4019
    move-object v4, v1

    .line 4020
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4021
    move-object v4, v1

    .line 4022
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapterPositionFor(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 4023
    move-object v1, v3

    .line 4024
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    iget-object v6, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4025
    move-object v0, v1

    goto :goto_1

    .line 4028
    :cond_1
    move-object v4, v3

    .line 4033
    :cond_2
    nop

    .end local v3    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    .line 4015
    move-object v1, v4

    goto :goto_0

    .end local v4    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    move-object v0, v1

    .line 4037
    .end local v1    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v2    # "var4":I
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_1
    return-object v0
.end method

.method public findViewHolderForItemId(J)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 7
    .param p1, "var1"    # J

    .line 4042
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4043
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4044
    .local v0, "var4":I
    const/4 v1, 0x0

    .line 4047
    .local v1, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "var5":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4048
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 4049
    .local v3, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    move-object v4, v1

    .line 4050
    .local v4, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    .line 4051
    move-object v4, v1

    .line 4052
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4053
    move-object v4, v1

    .line 4054
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    .line 4055
    move-object v1, v3

    .line 4056
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    iget-object v6, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4057
    goto :goto_1

    .line 4060
    :cond_0
    move-object v4, v3

    .line 4065
    :cond_1
    nop

    .end local v3    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    .line 4047
    move-object v1, v4

    goto :goto_0

    .line 4067
    .end local v0    # "var4":I
    .end local v2    # "var5":I
    .end local v4    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    :goto_1
    goto :goto_2

    .line 4068
    .end local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    const/4 v1, 0x0

    .line 4071
    .restart local v1    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :goto_2
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "var1"    # I

    .line 4075
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findViewHolderForPosition(IZ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 1
    .param p1, "var1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4080
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findViewHolderForPosition(IZ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 4084
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4085
    .local v0, "var3":I
    const/4 v1, 0x0

    .line 4088
    .local v1, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "var5":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 4089
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 4090
    .local v3, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    move-object v4, v1

    .line 4091
    .local v4, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v3, :cond_3

    .line 4092
    move-object v4, v1

    .line 4093
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4095
    if-eqz p2, :cond_0

    .line 4096
    iget v5, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-eq v5, p1, :cond_1

    .line 4097
    move-object v4, v1

    .line 4098
    goto :goto_1

    .line 4101
    :cond_0
    move-object v4, v1

    .line 4102
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-eq v5, p1, :cond_1

    .line 4103
    goto :goto_1

    .line 4107
    :cond_1
    move-object v1, v3

    .line 4108
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    iget-object v6, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4109
    goto :goto_2

    .line 4112
    :cond_2
    move-object v4, v3

    .line 4117
    :cond_3
    :goto_1
    nop

    .end local v3    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v2, v2, 0x1

    .line 4088
    move-object v1, v4

    goto :goto_0

    .line 4120
    .end local v2    # "var5":I
    .end local v4    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    :goto_2
    return-object v1
.end method

.method public fling(II)Z
    .locals 9
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 4125
    const/4 v0, 0x0

    .line 4127
    .local v0, "var3":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 4128
    const-string v1, "SeslRecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    move v1, v0

    .local v1, "var4":Z
    goto/16 :goto_3

    .line 4131
    .end local v1    # "var4":Z
    :cond_0
    move v2, v0

    .line 4132
    .local v2, "var4":Z
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_a

    .line 4137
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 4138
    .local v1, "var5":Z
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 4139
    .local v3, "var6":Z
    if-eqz v1, :cond_1

    .line 4140
    move v4, p1

    .line 4141
    .local v4, "var7":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinFlingVelocity:I

    if-lt v5, v6, :cond_1

    .line 4142
    goto :goto_0

    .line 4146
    .end local v4    # "var7":I
    :cond_1
    const/4 v4, 0x0

    .line 4151
    .restart local v4    # "var7":I
    :goto_0
    if-eqz v3, :cond_2

    .line 4152
    move v5, p2

    .line 4153
    .local v5, "var8":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinFlingVelocity:I

    if-lt v6, v7, :cond_2

    .line 4154
    goto :goto_1

    .line 4158
    .end local v5    # "var8":I
    :cond_2
    const/4 v5, 0x0

    .line 4161
    .restart local v5    # "var8":I
    :goto_1
    if-nez v4, :cond_3

    .line 4162
    move v2, v0

    .line 4163
    if-nez v5, :cond_3

    .line 4164
    return v2

    .line 4168
    :cond_3
    move v2, v0

    .line 4169
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v6

    if-nez v6, :cond_9

    .line 4171
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    .line 4172
    const/4 v6, 0x0

    .local v6, "var9":Z
    goto :goto_2

    .line 4174
    .end local v6    # "var9":Z
    :cond_4
    const/4 v6, 0x1

    .line 4177
    .restart local v6    # "var9":Z
    :goto_2
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p0, v7, v8, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedFling(FFZ)Z

    .line 4178
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnFlingListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;->onFling(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4179
    const/4 v2, 0x1

    move v1, v2

    goto :goto_3

    .line 4181
    :cond_5
    move v2, v0

    .line 4182
    if-eqz v6, :cond_8

    .line 4183
    const/4 p1, 0x0

    .line 4184
    if-eqz v1, :cond_6

    .line 4185
    const/4 p1, 0x1

    .line 4188
    :cond_6
    move p2, p1

    .line 4189
    if-eqz v3, :cond_7

    .line 4190
    or-int/lit8 p2, p1, 0x2

    .line 4193
    :cond_7
    const/4 v7, 0x1

    invoke-virtual {p0, p2, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startNestedScroll(II)Z

    .line 4194
    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    neg-int v8, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4195
    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    neg-int v8, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4196
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->fling(II)V

    .line 4197
    const/4 v2, 0x1

    move v1, v2

    goto :goto_3

    .line 4182
    :cond_8
    move v1, v2

    goto :goto_3

    .line 4169
    .end local v6    # "var9":Z
    :cond_9
    move v1, v2

    goto :goto_3

    .line 4132
    .end local v1    # "var5":Z
    .end local v3    # "var6":Z
    .end local v4    # "var7":I
    .end local v5    # "var8":I
    :cond_a
    move v1, v2

    .line 4204
    .end local v2    # "var4":Z
    .local v1, "var4":Z
    :goto_3
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 4208
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4209
    .local v0, "var3":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4210
    move-object p1, v0

    goto/16 :goto_a

    .line 4213
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_1

    .line 4214
    const/4 v1, 0x1

    .local v1, "var4":Z
    goto :goto_0

    .line 4216
    .end local v1    # "var4":Z
    :cond_1
    const/4 v1, 0x0

    .line 4219
    .restart local v1    # "var4":Z
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    .line 4222
    .local v2, "var10":Landroid/view/FocusFinder;
    const/4 v3, 0x0

    if-eqz v1, :cond_e

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    if-ne p2, v4, :cond_e

    .line 4223
    :cond_2
    const/4 v6, 0x0

    .line 4224
    .local v6, "var5":Z
    move v7, p2

    .line 4226
    .local v7, "var12":I
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4228
    if-ne p2, v5, :cond_3

    .line 4229
    const/16 v8, 0x82

    .local v8, "var13":S
    goto :goto_1

    .line 4231
    .end local v8    # "var13":S
    :cond_3
    const/16 v8, 0x21

    .line 4234
    .restart local v8    # "var13":S
    :goto_1
    invoke-virtual {v2, p0, p1, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_4

    .line 4235
    const/4 v9, 0x1

    .local v9, "var7":Z
    goto :goto_2

    .line 4237
    .end local v9    # "var7":Z
    :cond_4
    const/4 v9, 0x0

    .line 4240
    .restart local v9    # "var7":Z
    :goto_2
    move v6, v9

    .line 4241
    move v7, p2

    .line 4242
    sget-boolean v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_5

    .line 4243
    move v7, v8

    .line 4244
    move v6, v9

    .line 4248
    .end local v8    # "var13":S
    .end local v9    # "var7":Z
    :cond_5
    move v8, v6

    .line 4249
    .local v8, "var7":Z
    move v9, v7

    .line 4250
    .local v9, "var6":I
    if-nez v6, :cond_b

    .line 4251
    move v8, v6

    .line 4252
    move v9, v7

    .line 4253
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4255
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v10

    if-ne v10, v4, :cond_6

    .line 4256
    const/4 v4, 0x1

    .local v4, "var9":Z
    goto :goto_3

    .line 4258
    .end local v4    # "var9":Z
    :cond_6
    const/4 v4, 0x0

    .line 4261
    .restart local v4    # "var9":Z
    :goto_3
    if-ne v7, v5, :cond_7

    .line 4262
    const/4 v5, 0x1

    .end local v6    # "var5":Z
    .local v5, "var5":Z
    goto :goto_4

    .line 4264
    .end local v5    # "var5":Z
    .restart local v6    # "var5":Z
    :cond_7
    const/4 v5, 0x0

    .line 4268
    .end local v6    # "var5":Z
    .restart local v5    # "var5":Z
    :goto_4
    xor-int v6, v5, v4

    if-eqz v6, :cond_8

    .line 4269
    const/16 v6, 0x42

    .local v6, "var11":B
    goto :goto_5

    .line 4271
    .end local v6    # "var11":B
    :cond_8
    const/16 v6, 0x11

    .line 4274
    .restart local v6    # "var11":B
    :goto_5
    invoke-virtual {v2, p0, p1, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_9

    .line 4275
    const/4 v5, 0x1

    goto :goto_6

    .line 4277
    :cond_9
    const/4 v5, 0x0

    .line 4280
    :goto_6
    move v8, v5

    .line 4281
    move v9, v7

    .line 4282
    sget-boolean v10, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_a

    .line 4283
    move v9, v6

    .line 4284
    move v8, v5

    move v6, v5

    goto :goto_7

    .line 4282
    :cond_a
    move v6, v5

    .line 4289
    .end local v4    # "var9":Z
    .end local v5    # "var5":Z
    .local v6, "var5":Z
    :cond_b
    :goto_7
    if-eqz v8, :cond_d

    .line 4290
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    .line 4291
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_c

    .line 4292
    const/4 p1, 0x0

    .line 4293
    return-object p1

    .line 4296
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 4297
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v4, p1, v9, v5, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    .line 4298
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4301
    :cond_d
    invoke-virtual {v2, p0, p1, v9}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4302
    .end local v6    # "var5":Z
    .end local v7    # "var12":I
    .end local v8    # "var7":Z
    goto :goto_8

    .line 4303
    .end local v9    # "var6":I
    :cond_e
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 4304
    .local v4, "var8":Landroid/view/View;
    move-object v0, v4

    .line 4305
    move v9, p2

    .line 4306
    .restart local v9    # "var6":I
    if-nez v4, :cond_10

    .line 4307
    move-object v0, v4

    .line 4308
    move v9, p2

    .line 4309
    if-eqz v1, :cond_10

    .line 4310
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    .line 4311
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_f

    .line 4312
    const/4 p1, 0x0

    .line 4313
    return-object p1

    .line 4316
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 4317
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 4318
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4319
    move v9, p2

    .line 4324
    .end local v4    # "var8":Landroid/view/View;
    :cond_10
    :goto_8
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_12

    .line 4325
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_11

    .line 4326
    invoke-super {p0, p1, v9}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_a

    .line 4328
    :cond_11
    const/4 v3, 0x0

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    goto :goto_a

    .line 4331
    :cond_12
    move-object v4, v0

    .line 4332
    .restart local v4    # "var8":Landroid/view/View;
    invoke-direct {p0, p1, v0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_13

    .line 4333
    invoke-super {p0, p1, v9}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 4336
    :cond_13
    iget-boolean v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsArrowKeyPressed:Z

    if-eqz v5, :cond_16

    if-nez v4, :cond_16

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v5, v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v5, :cond_16

    .line 4337
    const/4 p2, 0x0

    .line 4338
    const/16 v5, 0x82

    if-ne v9, v5, :cond_14

    .line 4339
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v6

    sub-int p2, v5, v6

    goto :goto_9

    .line 4340
    :cond_14
    const/16 v5, 0x21

    if-ne v9, v5, :cond_15

    .line 4341
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getTop()I

    move-result v6

    sub-int p2, v5, v6

    .line 4344
    :cond_15
    :goto_9
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5, p2, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    .line 4345
    iput-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsArrowKeyPressed:Z

    .line 4348
    :cond_16
    move-object p1, v4

    .line 4352
    .end local v1    # "var4":Z
    .end local v2    # "var10":Landroid/view/FocusFinder;
    .end local v4    # "var8":Landroid/view/View;
    .end local v9    # "var6":I
    :goto_a
    return-object p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 4356
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4359
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4357
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslRecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "var1"    # Landroid/util/AttributeSet;

    .line 4364
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4367
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4365
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslRecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4372
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4375
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4373
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslRecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .locals 1

    .line 4380
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionFor(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 4385
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4386
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    iget v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    .local v0, "var2":I
    goto :goto_0

    .line 4388
    .end local v0    # "var2":I
    :cond_0
    const/4 v0, -0x1

    .line 4391
    .restart local v0    # "var2":I
    :goto_0
    return v0
.end method

.method public getBaseline()I
    .locals 1

    .line 4396
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4397
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    .local v0, "var1":I
    goto :goto_0

    .line 4399
    .end local v0    # "var1":I
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    .line 4402
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method getChangedHolderKey(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 4407
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4408
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    .local v0, "var2":J
    goto :goto_0

    .line 4410
    .end local v0    # "var2":J
    :cond_0
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    .line 4413
    .restart local v0    # "var2":J
    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 4417
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 4419
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 4420
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .local v1, "var2":I
    goto :goto_0

    .line 4422
    .end local v1    # "var2":I
    :cond_0
    const/4 v1, -0x1

    .line 4425
    .restart local v1    # "var2":I
    :goto_0
    return v1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 4429
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildDrawingOrderCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 4430
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    goto :goto_0

    .line 4432
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result p1

    .line 4435
    :goto_0
    return p1
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 5
    .param p1, "var1"    # Landroid/view/View;

    .line 4439
    const-wide/16 v0, -0x1

    .line 4440
    .local v0, "var2":J
    move-wide v2, v0

    .line 4441
    .local v2, "var4":J
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v4, :cond_1

    .line 4442
    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4443
    move-wide v2, v0

    goto :goto_0

    .line 4445
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    .line 4446
    .local v4, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    move-wide v2, v0

    .line 4447
    if-eqz v4, :cond_1

    .line 4448
    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    .line 4453
    .end local v4    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 4457
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 4459
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 4460
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    .local v1, "var2":I
    goto :goto_0

    .line 4462
    .end local v1    # "var2":I
    :cond_0
    const/4 v1, -0x1

    .line 4465
    .restart local v1    # "var2":I
    :goto_0
    return v1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4470
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .line 4474
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4475
    .local v0, "var2":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 4476
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4478
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 4483
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;
    .locals 1

    .line 4487
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 4491
    invoke-static {p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4492
    return-void
.end method

.method public getItemAnimator()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;
    .locals 1

    .line 4495
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "var1"    # Landroid/view/View;

    .line 4499
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    .line 4501
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;
    iget-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    .line 4502
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .local v1, "var6":Landroid/graphics/Rect;
    goto :goto_1

    .line 4503
    .end local v1    # "var6":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4504
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .restart local v1    # "var6":Landroid/graphics/Rect;
    goto :goto_1

    .line 4506
    .end local v1    # "var6":Landroid/graphics/Rect;
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4507
    .local v1, "var3":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4508
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4510
    .local v3, "var4":I
    const/4 v4, 0x0

    .local v4, "var5":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 4511
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4512
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 4513
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 4514
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 4515
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 4516
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 4510
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4519
    .end local v4    # "var5":I
    :cond_3
    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4520
    move-object v2, v1

    .line 4523
    .end local v3    # "var4":I
    .local v1, "var6":Landroid/graphics/Rect;
    :goto_1
    return-object v1
.end method

.method public getItemDecorationAt(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;
    .locals 4
    .param p1, "var1"    # I

    .line 4527
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getItemDecorationCount()I

    move-result v0

    .line 4528
    .local v0, "var2":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 4529
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;

    return-object v1

    .line 4531
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is an invalid index for size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 4536
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    .locals 1

    .line 4540
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    return-object v0
.end method

.method public final getLongPressMultiSelectionListener()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;
    .locals 1

    .line 4544
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 4548
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 4552
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    .line 4557
    sget-boolean v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    .line 4558
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .local v0, "var1":J
    goto :goto_0

    .line 4560
    .end local v0    # "var1":J
    :cond_0
    const-wide/16 v0, 0x0

    .line 4563
    .restart local v0    # "var1":J
    :goto_0
    return-wide v0
.end method

.method public getOnFlingListener()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;
    .locals 1

    .line 4567
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnFlingListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 4571
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;
    .locals 1

    .line 4575
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->getRecycledViewPool()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 4579
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .line 4583
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 4587
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 4591
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .line 4596
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4597
    const/4 v0, 0x0

    .local v0, "var1":Z
    goto :goto_0

    .line 4599
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x1

    .line 4602
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method initAdapterManager()V
    .locals 2

    .line 4606
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$12;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    .line 4679
    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "var1"    # Landroid/graphics/drawable/StateListDrawable;
    .param p2, "var2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "var3"    # Landroid/graphics/drawable/StateListDrawable;
    .param p4, "var4"    # Landroid/graphics/drawable/Drawable;

    .line 4682
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 4683
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4684
    .local v0, "var5":Landroid/content/res/Resources;
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    const v2, 0x7f07008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v2, 0x7f07008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v2, 0x7f07008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 4685
    .end local v0    # "var5":Landroid/content/res/Resources;
    nop

    .line 4688
    return-void

    .line 4686
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set fast scroller without both required drawables."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method invalidateGlows()V
    .locals 1

    .line 4691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBottomGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 4692
    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 4693
    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRightGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 4694
    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLeftGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 4695
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .line 4698
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4699
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4700
    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4703
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->markItemDecorInsetsDirty()V

    .line 4704
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 4707
    :cond_1
    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .line 4711
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4712
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 4714
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 4717
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 4722
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4723
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 4725
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 4728
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 4732
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .line 4737
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    .line 4738
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 4740
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 4743
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method protected isInScrollingContainer()Z
    .locals 2

    .line 4747
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4751
    .local v0, "var1":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4756
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4757
    const/4 v1, 0x1

    .line 4758
    .local v1, "var2":Z
    goto :goto_2

    .line 4761
    .end local v1    # "var2":Z
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 4752
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 4753
    .restart local v1    # "var2":Z
    nop

    .line 4764
    :goto_2
    return v1
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .line 4768
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 3

    .line 4772
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    .line 4773
    .local v0, "var1":Landroid/content/Context;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    .line 4775
    .local v1, "var2":Landroid/content/Context;
    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4776
    const/4 v2, 0x0

    .local v2, "var3":Z
    goto :goto_0

    .line 4778
    .end local v2    # "var3":Z
    :cond_0
    const/4 v2, 0x1

    .line 4781
    .restart local v2    # "var3":Z
    :goto_0
    return v2
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 4785
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .line 4790
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScrollerEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4791
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 4793
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 4796
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 4800
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4801
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 4802
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->awakenScrollBars()Z

    .line 4805
    :cond_0
    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 4808
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4810
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4811
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4810
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4814
    .end local v1    # "var2":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 4815
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 4818
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4820
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4821
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 4822
    .local v2, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4823
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 4820
    .end local v2    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4827
    .end local v1    # "var2":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->markItemDecorInsetsDirty()V

    .line 4828
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 4829
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 4832
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 4834
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4835
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4834
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4838
    .end local v1    # "var3":I
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 4841
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 4843
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4844
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4843
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4847
    .end local v1    # "var3":I
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 4850
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4852
    .local v0, "var3":I
    const/4 v1, 0x0

    .local v1, "var4":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4853
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 4854
    .local v2, "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 4855
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4856
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 4852
    .end local v2    # "var5":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4860
    .end local v1    # "var4":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4861
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 4862
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 4865
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4869
    .local v0, "var3":I
    if-ge p1, p2, :cond_0

    .line 4870
    move v1, p1

    .line 4871
    .local v1, "var4":I
    move v2, p2

    .line 4872
    .local v2, "var5":I
    const/4 v3, -0x1

    .local v3, "var6":B
    goto :goto_0

    .line 4874
    .end local v1    # "var4":I
    .end local v2    # "var5":I
    .end local v3    # "var6":B
    :cond_0
    move v1, p2

    .line 4875
    .restart local v1    # "var4":I
    move v2, p1

    .line 4876
    .restart local v2    # "var5":I
    const/4 v3, 0x1

    .line 4879
    .restart local v3    # "var6":B
    :goto_0
    const/4 v4, 0x0

    .local v4, "var7":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 4880
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v5, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v5

    .line 4881
    .local v5, "var8":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v5, :cond_2

    iget v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v1, :cond_2

    iget v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-gt v6, v2, :cond_2

    .line 4882
    iget v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_1

    .line 4883
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 4885
    :cond_1
    invoke-virtual {v5, v3, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4888
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 4879
    .end local v5    # "var8":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4892
    .end local v4    # "var7":I
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4893
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 4894
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .line 4897
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4899
    .local v0, "var4":I
    const/4 v1, 0x0

    .local v1, "var5":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4900
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 4901
    .local v2, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4902
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    add-int v4, p1, p2

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    .line 4903
    neg-int v3, p2

    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4904
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v5, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 4905
    :cond_0
    iget v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_1

    .line 4906
    add-int/lit8 v3, p1, -0x1

    neg-int v4, p2

    invoke-virtual {v2, v3, v4, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4907
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v5, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 4899
    .end local v2    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4912
    .end local v1    # "var5":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4913
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 4914
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .line 4917
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4918
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 4919
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsAttached:Z

    .line 4921
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4922
    const/4 v2, 0x1

    .local v2, "var1":Z
    goto :goto_0

    .line 4924
    .end local v2    # "var1":Z
    :cond_0
    const/4 v2, 0x0

    .line 4927
    .restart local v2    # "var1":Z
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    .line 4928
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v3, :cond_1

    .line 4929
    invoke-virtual {v3, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 4932
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    .line 4933
    sget-boolean v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    .line 4934
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    .line 4935
    if-nez v0, :cond_3

    .line 4936
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    .line 4937
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 4938
    .local v0, "var2":Landroid/view/Display;
    const/high16 v3, 0x42700000    # 60.0f

    .line 4939
    .local v3, "var3":F
    move v4, v3

    .line 4940
    .local v4, "var4":F
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4941
    move v4, v3

    .line 4942
    if-eqz v0, :cond_2

    .line 4943
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v5

    .line 4944
    .local v5, "var5":F
    move v4, v3

    .line 4945
    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_2

    .line 4946
    move v4, v5

    .line 4951
    .end local v5    # "var5":F
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    const v6, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v6, v4

    float-to-long v6, v6

    iput-wide v6, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->mFrameIntervalNs:J

    .line 4952
    sget-object v5, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4955
    .end local v0    # "var2":Landroid/view/Display;
    .end local v3    # "var3":F
    .end local v4    # "var4":F
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->add(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 4956
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_4

    .line 4957
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    .line 4961
    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .line 4964
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .line 4967
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 4970
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4971
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 4972
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->endAnimations()V

    .line 4975
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopScroll()V

    .line 4976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsAttached:Z

    .line 4977
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 4978
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 4981
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4982
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4983
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->onDetach()V

    .line 4984
    sget-boolean v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    if-eqz v0, :cond_2

    .line 4985
    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->remove(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 4986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    .line 4989
    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 4992
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4993
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawOutlineStroke:Z

    if-eqz v0, :cond_0

    .line 4994
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokeHeight:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4995
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getRight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokeHeight:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4998
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5000
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5001
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 5000
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5004
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .line 5007
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 5008
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    .line 5011
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll(Z)V

    .line 5012
    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 5015
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 5016
    if-ge v0, v1, :cond_0

    .line 5017
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutOrScrollCounter:I

    .line 5018
    if-eqz p1, :cond_0

    .line 5019
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchContentChangedIfNecessary()V

    .line 5020
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 5024
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 5028
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 5029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsMouseWheel:Z

    .line 5032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 5033
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5034
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    neg-float v1, v1

    .local v1, "var2":F
    goto :goto_0

    .line 5036
    .end local v1    # "var2":F
    :cond_0
    const/4 v1, 0x0

    .line 5039
    .restart local v1    # "var2":F
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5040
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .local v2, "var3":F
    goto :goto_1

    .line 5042
    .end local v2    # "var3":F
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "var3":F
    goto :goto_1

    .line 5044
    .end local v1    # "var2":F
    .end local v2    # "var3":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 5045
    const/16 v1, 0x1a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 5046
    .restart local v2    # "var3":F
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5047
    neg-float v1, v2

    .line 5048
    .restart local v1    # "var2":F
    const/4 v2, 0x0

    goto :goto_1

    .line 5049
    .end local v1    # "var2":F
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5050
    const/4 v1, 0x0

    .restart local v1    # "var2":F
    goto :goto_1

    .line 5052
    .end local v1    # "var2":F
    :cond_4
    const/4 v1, 0x0

    .line 5053
    .restart local v1    # "var2":F
    const/4 v2, 0x0

    goto :goto_1

    .line 5056
    .end local v1    # "var2":F
    .end local v2    # "var3":F
    :cond_5
    const/4 v1, 0x0

    .line 5057
    .restart local v1    # "var2":F
    const/4 v2, 0x0

    .line 5060
    .restart local v2    # "var3":F
    :goto_1
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_6

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_8

    .line 5062
    :cond_6
    cmpl-float v3, v1, v3

    if-eqz v3, :cond_7

    .line 5063
    const/4 v3, 0x2

    .local v3, "var4":B
    goto :goto_2

    .line 5065
    .end local v3    # "var4":B
    :cond_7
    const/4 v3, 0x1

    .line 5068
    .restart local v3    # "var4":B
    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startNestedScroll(II)Z

    .line 5069
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v0, v2

    float-to-int v5, v0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    const/4 v0, 0x0

    move-object v8, v0

    check-cast v8, [I

    const/4 v9, 0x1

    move-object v4, p0

    move-object v7, v8

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5070
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 5075
    .end local v1    # "var2":F
    .end local v2    # "var3":F
    .end local v3    # "var4":B
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 5080
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_0

    .line 5081
    const/4 v2, 0x0

    .local v2, "var2":Z
    goto/16 :goto_e

    .line 5082
    .end local v2    # "var2":Z
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5083
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->cancelTouch()V

    .line 5084
    const/4 v2, 0x1

    .restart local v2    # "var2":Z
    goto/16 :goto_e

    .line 5085
    .end local v2    # "var2":Z
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v2, :cond_2

    .line 5086
    const/4 v2, 0x0

    .restart local v2    # "var2":Z
    goto/16 :goto_e

    .line 5088
    .end local v2    # "var2":Z
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 5089
    .local v2, "var3":Z
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 5091
    .local v3, "var2":Z
    if-eqz v1, :cond_3

    const/16 v4, 0x2002

    invoke-static {v1, v4}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5092
    const/4 v4, 0x1

    .local v4, "var4":Z
    goto :goto_0

    .line 5094
    .end local v4    # "var4":Z
    :cond_3
    const/4 v4, 0x0

    .line 5097
    .restart local v4    # "var4":Z
    :goto_0
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_4

    .line 5098
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5101
    :cond_4
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5102
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 5103
    .local v5, "var5":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 5104
    .local v6, "var6":I
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 5105
    .local v7, "var7":Landroid/view/MotionEvent;
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5106
    const/4 v3, 0x1

    move v2, v3

    goto/16 :goto_e

    .line 5110
    :cond_5
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    .line 5271
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_d

    .line 5262
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 5263
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 5264
    .local v8, "var14":I
    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    .line 5265
    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 5266
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v11, v9

    float-to-int v6, v11

    .line 5267
    iput v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    .line 5268
    iput v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchY:I

    .line 5269
    goto/16 :goto_d

    .line 5257
    .end local v8    # "var14":I
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->cancelTouch()V

    goto/16 :goto_c

    .line 5172
    :pswitch_4
    iget v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 5173
    if-gez v6, :cond_6

    .line 5174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error processing scroll; pointer index for id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SeslRecyclerView"

    invoke-static {v9, v8}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    const/4 v3, 0x0

    .line 5176
    return v3

    .line 5179
    :cond_6
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v11, v9

    float-to-int v11, v11

    .line 5180
    .local v11, "var8":I
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v12, v9

    float-to-int v9, v12

    .line 5181
    .local v9, "var9":I
    iget v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    sub-int/2addr v12, v11

    .line 5182
    .local v12, "var10":I
    iget v13, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    sub-int/2addr v13, v9

    .line 5183
    .local v13, "var11":I
    move v6, v12

    .line 5184
    move v5, v13

    .line 5185
    iget v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    if-eq v14, v10, :cond_d

    .line 5186
    const/4 v14, 0x0

    .line 5187
    .local v14, "var15":Z
    move v15, v12

    .line 5188
    .local v15, "var14":I
    move/from16 v16, v14

    .line 5189
    .local v16, "var16":Z
    if-eqz v2, :cond_8

    .line 5190
    move v15, v12

    .line 5191
    move/from16 v16, v14

    .line 5192
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    if-le v8, v10, :cond_8

    .line 5193
    if-lez v12, :cond_7

    .line 5194
    sub-int v8, v12, v10

    move v15, v8

    .end local v15    # "var14":I
    .restart local v8    # "var14":I
    goto :goto_1

    .line 5196
    .end local v8    # "var14":I
    .restart local v15    # "var14":I
    :cond_7
    add-int/2addr v10, v12

    move v15, v10

    .line 5199
    :goto_1
    const/16 v16, 0x1

    .line 5203
    :cond_8
    move v8, v13

    .line 5204
    .end local v12    # "var10":I
    .local v8, "var10":I
    move/from16 v10, v16

    .line 5205
    .local v10, "var12":Z
    if-eqz v3, :cond_b

    .line 5206
    move v8, v13

    .line 5207
    move/from16 v10, v16

    .line 5208
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move/from16 v17, v5

    .end local v5    # "var5":I
    .local v17, "var5":I
    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    if-le v12, v5, :cond_a

    .line 5209
    if-lez v13, :cond_9

    .line 5210
    sub-int v5, v13, v5

    .end local v8    # "var10":I
    .local v5, "var10":I
    goto :goto_2

    .line 5212
    .end local v5    # "var10":I
    .restart local v8    # "var10":I
    :cond_9
    add-int/2addr v5, v13

    .line 5215
    .end local v8    # "var10":I
    .restart local v5    # "var10":I
    :goto_2
    const/4 v10, 0x1

    move v12, v5

    goto :goto_3

    .line 5208
    .end local v5    # "var10":I
    .restart local v8    # "var10":I
    :cond_a
    move v12, v8

    goto :goto_3

    .line 5205
    .end local v17    # "var5":I
    .local v5, "var5":I
    :cond_b
    move/from16 v17, v5

    .end local v5    # "var5":I
    .restart local v17    # "var5":I
    move v12, v8

    .line 5219
    .end local v8    # "var10":I
    .restart local v12    # "var10":I
    :goto_3
    move v5, v15

    .line 5220
    .end local v6    # "var6":I
    .local v5, "var6":I
    move v6, v12

    .line 5221
    .end local v17    # "var5":I
    .local v6, "var5":I
    if-eqz v10, :cond_c

    .line 5222
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 5223
    move v6, v12

    .line 5224
    move v5, v15

    move/from16 v18, v6

    move v6, v5

    move/from16 v5, v18

    goto :goto_4

    .line 5221
    :cond_c
    move/from16 v18, v6

    move v6, v5

    move/from16 v5, v18

    goto :goto_4

    .line 5185
    .end local v10    # "var12":Z
    .end local v14    # "var15":Z
    .end local v15    # "var14":I
    .end local v16    # "var16":Z
    .local v5, "var5":I
    .local v6, "var6":I
    :cond_d
    move/from16 v17, v5

    .line 5228
    :goto_4
    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_13

    .line 5229
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    const/4 v14, 0x0

    aget v14, v8, v14

    sub-int v14, v11, v14

    iput v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    .line 5230
    aget v8, v8, v10

    sub-int v8, v9, v8

    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    .line 5231
    iget-boolean v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopMoved:Z

    if-nez v8, :cond_11

    .line 5232
    if-eqz v2, :cond_e

    .line 5233
    move v8, v6

    .local v8, "var14":I
    goto :goto_5

    .line 5235
    .end local v8    # "var14":I
    :cond_e
    const/4 v8, 0x0

    .line 5238
    .restart local v8    # "var14":I
    :goto_5
    if-eqz v3, :cond_f

    .line 5239
    move v10, v5

    .end local v12    # "var10":I
    .local v10, "var10":I
    goto :goto_6

    .line 5241
    .end local v10    # "var10":I
    .restart local v12    # "var10":I
    :cond_f
    const/4 v10, 0x0

    .line 5244
    .end local v12    # "var10":I
    .restart local v10    # "var10":I
    :goto_6
    invoke-virtual {v0, v8, v10, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 5245
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    const/4 v14, 0x1

    invoke-interface {v12, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5249
    .end local v8    # "var14":I
    :cond_10
    move v12, v10

    .end local v10    # "var10":I
    .restart local v12    # "var10":I
    :cond_11
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    if-eqz v8, :cond_13

    if-nez v6, :cond_12

    if-eqz v5, :cond_13

    .line 5250
    :cond_12
    invoke-virtual {v8, v0, v6, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->postFromTraversal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    .line 5254
    :cond_13
    invoke-direct {v0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRangeBy(I)V

    .line 5255
    goto/16 :goto_d

    .line 5162
    .end local v9    # "var9":I
    .end local v11    # "var8":I
    .end local v12    # "var10":I
    .end local v13    # "var11":I
    :pswitch_5
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 5163
    if-eqz v4, :cond_14

    .line 5164
    const/4 v8, 0x1

    .local v8, "var17":B
    goto :goto_7

    .line 5166
    .end local v8    # "var17":B
    :cond_14
    const/4 v8, 0x0

    .line 5169
    .restart local v8    # "var17":B
    :goto_7
    invoke-virtual {v0, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopNestedScroll(I)V

    .line 5170
    goto/16 :goto_d

    .line 5112
    .end local v8    # "var17":B
    :pswitch_6
    iget-boolean v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v8, :cond_15

    .line 5113
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIgnoreMotionEventTillDown:Z

    goto :goto_8

    .line 5112
    :cond_15
    const/4 v8, 0x0

    .line 5116
    :goto_8
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 5117
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 5118
    iput v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    .line 5119
    iput v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 5120
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 5121
    iput v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    .line 5122
    iput v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchY:I

    .line 5123
    iget-boolean v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mUsePagingTouchSlopForStylus:Z

    if-eqz v8, :cond_17

    .line 5124
    const/16 v8, 0x4002

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 5125
    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslPagingTouchSlop:I

    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    goto :goto_9

    .line 5127
    :cond_16
    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslTouchSlop:I

    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    .line 5131
    :cond_17
    :goto_9
    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_18

    .line 5132
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5133
    invoke-virtual {v0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    goto :goto_a

    .line 5131
    :cond_18
    const/4 v9, 0x1

    .line 5136
    :goto_a
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    .line 5137
    .local v8, "var13":[I
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    const/4 v11, 0x0

    aput v11, v10, v9

    .line 5138
    aput v11, v8, v11

    .line 5139
    iget-boolean v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    if-eqz v9, :cond_19

    .line 5140
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRange()V

    .line 5143
    :cond_19
    const/4 v6, 0x0

    .line 5144
    if-eqz v2, :cond_1a

    .line 5145
    const/4 v6, 0x1

    .line 5148
    :cond_1a
    move v5, v6

    .line 5149
    if-eqz v3, :cond_1b

    .line 5150
    or-int/lit8 v5, v6, 0x2

    .line 5153
    :cond_1b
    if-eqz v4, :cond_1c

    .line 5154
    const/4 v9, 0x1

    .local v9, "var17":B
    goto :goto_b

    .line 5156
    .end local v9    # "var17":B
    :cond_1c
    const/4 v9, 0x0

    .line 5159
    .restart local v9    # "var17":B
    :goto_b
    invoke-virtual {v0, v5, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startNestedScroll(II)Z

    .line 5160
    goto :goto_d

    .line 5260
    .end local v8    # "var13":[I
    .end local v9    # "var17":B
    :goto_c
    nop

    .line 5274
    :goto_d
    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    .line 5275
    const/4 v3, 0x1

    move v2, v3

    goto :goto_e

    .line 5277
    :cond_1d
    const/4 v3, 0x0

    move v2, v3

    .line 5282
    .end local v3    # "var2":Z
    .end local v4    # "var4":Z
    .end local v5    # "var5":I
    .end local v6    # "var6":I
    .end local v7    # "var7":Landroid/view/MotionEvent;
    .local v2, "var2":Z
    :goto_e
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/KeyEvent;

    .line 5286
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 5307
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5308
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 5302
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5303
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 5299
    :sswitch_2
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    .line 5300
    goto :goto_0

    .line 5293
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5294
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 5288
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5289
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->pageScroll(I)Z

    .line 5312
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5c -> :sswitch_4
        0x5d -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/KeyEvent;

    .line 5316
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5319
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    .line 5321
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 5326
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5327
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayout()V

    .line 5328
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 5329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    .line 5330
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 5331
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onItemCountChanged(II)V

    .line 5334
    :cond_0
    if-eqz p1, :cond_4

    .line 5335
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSizeChnage:Z

    .line 5336
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetImmersiveScrollBottomPadding(I)V

    .line 5337
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 5338
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->autoHide(I)V

    .line 5339
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    .line 5341
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "var6":Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 5342
    instance-of v3, v2, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v3, :cond_2

    .line 5343
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mWindowOffsets:[I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 5344
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mWindowOffsets:[I

    aget p2, v3, v0

    .line 5345
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    .line 5346
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLocationInWindow([I)V

    .line 5347
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mWindowOffsets:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTopOffsetOfScreen:I

    .line 5348
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    add-int v4, p2, p3

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTopOffsetOfScreen:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    .line 5349
    if-gez v3, :cond_1

    .line 5350
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    .line 5353
    :cond_1
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScrollRange:I

    .line 5354
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    .line 5355
    goto :goto_1

    .line 5341
    :cond_2
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 5359
    .end local v2    # "var6":Landroid/view/ViewParent;
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    if-nez v0, :cond_4

    .line 5360
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTopOffsetOfScreen:I

    .line 5361
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRemainNestedScrollRange:I

    .line 5362
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScrollRange:I

    .line 5366
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 5370
    const/4 v0, 0x0

    .line 5371
    .local v0, "var3":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 5372
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->defaultOnMeasure(II)V

    goto/16 :goto_3

    .line 5374
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 5375
    .local v1, "var4":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 5376
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 5377
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 5378
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 5379
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "auto = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fixedSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasFixedSize:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SeslRecyclerView"

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5381
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ph ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5386
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 5387
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 5388
    .local v2, "var5":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 5389
    .local v4, "var6":I
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onMeasure(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;II)V

    .line 5390
    move v5, v0

    .line 5391
    .local v5, "var7":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_2

    .line 5392
    move v5, v0

    .line 5393
    if-ne v4, v6, :cond_2

    .line 5394
    const/4 v5, 0x1

    .line 5398
    :cond_2
    if-nez v5, :cond_4

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v7, :cond_4

    .line 5399
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    if-ne v7, v3, :cond_3

    .line 5400
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayoutStep1()V

    .line 5403
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 5404
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v3, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 5405
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayoutStep2()V

    .line 5406
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 5407
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5408
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 5409
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 5410
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayoutStep2()V

    .line 5411
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 5414
    .end local v2    # "var5":I
    .end local v4    # "var6":I
    .end local v5    # "var7":Z
    :cond_4
    goto :goto_3

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasFixedSize:Z

    if-eqz v2, :cond_6

    .line 5415
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onMeasure(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;II)V

    goto :goto_3

    .line 5417
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterUpdateDuringMeasure:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    .line 5418
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 5419
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 5420
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 5421
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 5422
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v2, :cond_7

    .line 5423
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v3, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    goto :goto_0

    .line 5425
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslAdapterHelper;->consumeUpdatesInOnePass()V

    .line 5426
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 5429
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5430
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_1

    .line 5431
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v2, :cond_9

    .line 5432
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setMeasuredDimension(II)V

    .line 5433
    return-void

    .line 5436
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v2, :cond_a

    .line 5437
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    goto :goto_2

    .line 5439
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    .line 5442
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 5443
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v2, v3, v5, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onMeasure(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;II)V

    .line 5444
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 5445
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iput-boolean v4, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 5449
    .end local v1    # "var4":Landroid/graphics/Rect;
    :goto_3
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 5453
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5454
    const/4 v0, 0x0

    .local v0, "var3":Z
    goto :goto_0

    .line 5456
    .end local v0    # "var3":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 5459
    .restart local v0    # "var3":Z
    :goto_0
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 5463
    instance-of v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 5464
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 5466
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    .line 5467
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5468
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 5469
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5473
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 5476
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 5477
    .local v0, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingSavedState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 5478
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;->copyFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;)V

    goto :goto_0

    .line 5479
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 5480
    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 5482
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 5485
    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 5489
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 5492
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 5495
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 5496
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 5497
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidateGlows()V

    .line 5500
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    .line 5501
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onSizeChanged(IIII)V

    .line 5504
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 5509
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_20

    iget-boolean v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-nez v0, :cond_20

    .line 5510
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5511
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->cancelTouch()V

    .line 5512
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto/16 :goto_c

    .line 5513
    .end local v0    # "var2":Z
    :cond_0
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 5514
    const/4 v0, 0x0

    .restart local v0    # "var2":Z
    goto/16 :goto_c

    .line 5516
    .end local v0    # "var2":Z
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsMouseWheel:Z

    .line 5517
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    .line 5518
    .local v9, "var2":Z
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    .line 5519
    .local v10, "var3":Z
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 5520
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5523
    :cond_2
    const/4 v11, 0x0

    .line 5524
    .local v11, "var4":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 5525
    .local v12, "var5":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 5526
    .local v13, "var6":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 5527
    .local v0, "var7":I
    const/4 v14, 0x1

    if-nez v13, :cond_3

    .line 5528
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    .line 5529
    .local v1, "var8":[I
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    aput v8, v2, v14

    .line 5530
    aput v8, v1, v8

    .line 5533
    .end local v1    # "var8":[I
    :cond_3
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    aget v2, v1, v8

    int-to-float v2, v2

    aget v1, v1, v14

    int-to-float v1, v1

    invoke-virtual {v12, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5535
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5536
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScrollerEventListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    if-eqz v1, :cond_6

    .line 5538
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 5539
    :cond_4
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getEffectState()I

    move-result v1

    .line 5540
    .local v1, "var21":I
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    .line 5541
    .local v2, "var20":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    if-ne v1, v14, :cond_5

    .line 5542
    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScrollerEventListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    iget-object v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getScrollY()F

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;->onPressed(F)V

    .line 5543
    goto :goto_0

    .line 5547
    .end local v1    # "var21":I
    .end local v2    # "var20":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v14, :cond_6

    .line 5548
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getEffectState()I

    move-result v1

    .line 5549
    .restart local v1    # "var21":I
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    .line 5550
    .local v2, "var18":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    if-nez v1, :cond_6

    .line 5551
    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScrollerEventListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    iget-object v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getScrollY()F

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;->onReleased(F)V

    .line 5557
    .end local v1    # "var21":I
    .end local v2    # "var18":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    :cond_6
    :goto_0
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 5558
    const/4 v1, 0x1

    move v0, v1

    .end local v9    # "var2":Z
    .local v1, "var2":Z
    goto/16 :goto_b

    .line 5560
    .end local v1    # "var2":Z
    .restart local v9    # "var2":Z
    :cond_7
    move v15, v11

    .line 5561
    .local v15, "var9":Z
    const-string v1, "SeslRecyclerView"

    const/high16 v2, 0x3f000000    # 0.5f

    packed-switch v13, :pswitch_data_0

    .line 5738
    move v1, v11

    .end local v15    # "var9":Z
    .local v1, "var9":Z
    goto/16 :goto_a

    .line 5734
    .end local v1    # "var9":Z
    .restart local v15    # "var9":Z
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 5735
    move v1, v11

    .line 5736
    .end local v15    # "var9":Z
    .restart local v1    # "var9":Z
    goto/16 :goto_a

    .line 5724
    .end local v1    # "var9":Z
    .restart local v15    # "var9":Z
    :pswitch_1
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 5725
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 5726
    .local v1, "var21":I
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    .line 5727
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 5728
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v3, v2

    float-to-int v1, v3

    .line 5729
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    .line 5730
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchY:I

    .line 5731
    move v2, v11

    .line 5732
    .end local v15    # "var9":Z
    .local v2, "var9":Z
    move v1, v2

    goto/16 :goto_a

    .line 5719
    .end local v1    # "var21":I
    .end local v2    # "var9":Z
    .restart local v15    # "var9":Z
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->cancelTouch()V

    .line 5720
    move v15, v11

    .line 5722
    :pswitch_3
    move v1, v15

    goto/16 :goto_a

    .line 5613
    :pswitch_4
    iget v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 5614
    .local v3, "var21":I
    if-gez v3, :cond_8

    .line 5615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error processing scroll; pointer index for id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5616
    const/4 v1, 0x0

    .line 5617
    .end local v9    # "var2":Z
    .local v1, "var2":Z
    return v1

    .line 5620
    .end local v1    # "var2":Z
    .restart local v9    # "var2":Z
    :cond_8
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v5, v1

    .line 5621
    .local v5, "var10":I
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v4, v1

    .line 5622
    .local v4, "var11":I
    iget v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    sub-int v16, v1, v5

    .line 5623
    .end local v0    # "var7":I
    .local v16, "var7":I
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    sub-int v3, v0, v4

    .line 5624
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollConsumed:[I

    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move/from16 v1, v16

    move-object/from16 v19, v2

    move v2, v3

    move/from16 v20, v3

    .end local v3    # "var21":I
    .local v20, "var21":I
    move-object/from16 v3, v19

    move/from16 v19, v4

    .end local v4    # "var11":I
    .local v19, "var11":I
    move-object/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "var10":I
    .local v18, "var10":I
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5625
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollConsumed:[I

    aget v1, v0, v8

    sub-int v16, v16, v1

    .line 5626
    aget v0, v0, v14

    move/from16 v1, v20

    .end local v20    # "var21":I
    .local v1, "var21":I
    sub-int v3, v1, v0

    .line 5627
    .end local v1    # "var21":I
    .restart local v3    # "var21":I
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v1, v0, v8

    int-to-float v1, v1

    aget v0, v0, v14

    int-to-float v0, v0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5628
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    .line 5629
    .local v0, "var17":[I
    aget v1, v0, v8

    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v4, v2, v8

    add-int/2addr v1, v4

    aput v1, v0, v8

    .line 5630
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    .line 5631
    aget v1, v0, v14

    aget v2, v2, v14

    add-int/2addr v1, v2

    aput v1, v0, v14

    .line 5632
    iget-object v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollConsumed:[I

    aget v1, v1, v14

    invoke-direct {v6, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRangeBy(I)V

    .line 5633
    .end local v0    # "var17":[I
    goto :goto_1

    .line 5634
    .end local v3    # "var21":I
    .restart local v20    # "var21":I
    :cond_9
    move/from16 v1, v20

    .end local v20    # "var21":I
    .restart local v1    # "var21":I
    invoke-direct {v6, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRangeBy(I)V

    move v3, v1

    .line 5637
    .end local v1    # "var21":I
    .restart local v3    # "var21":I
    :goto_1
    move/from16 v0, v16

    .line 5638
    .end local v13    # "var6":I
    .local v0, "var6":I
    move v1, v3

    .line 5639
    .local v1, "var12":I
    iget v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    if-eq v2, v14, :cond_10

    .line 5640
    const/4 v2, 0x0

    .line 5641
    .local v2, "var22":Z
    move/from16 v4, v16

    .line 5642
    .local v4, "var13":I
    move v5, v2

    .line 5643
    .local v5, "var19":Z
    if-eqz v9, :cond_b

    .line 5644
    move/from16 v4, v16

    .line 5645
    move v5, v2

    .line 5646
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v8, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    if-le v13, v8, :cond_b

    .line 5647
    if-lez v16, :cond_a

    .line 5648
    sub-int v4, v16, v8

    goto :goto_2

    .line 5650
    :cond_a
    add-int v8, v16, v8

    move v4, v8

    .line 5653
    :goto_2
    const/4 v5, 0x1

    .line 5657
    :cond_b
    move v8, v3

    .line 5658
    .end local v16    # "var7":I
    .local v8, "var7":I
    move v13, v5

    .line 5659
    .local v13, "var14":Z
    if-eqz v10, :cond_d

    .line 5660
    move v8, v3

    .line 5661
    move v13, v5

    .line 5662
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move/from16 v21, v0

    .end local v0    # "var6":I
    .local v21, "var6":I
    iget v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    if-le v14, v0, :cond_e

    .line 5663
    if-lez v3, :cond_c

    .line 5664
    sub-int v0, v3, v0

    move v8, v0

    .end local v8    # "var7":I
    .local v0, "var7":I
    goto :goto_3

    .line 5666
    .end local v0    # "var7":I
    .restart local v8    # "var7":I
    :cond_c
    add-int/2addr v0, v3

    move v8, v0

    .line 5669
    :goto_3
    const/4 v13, 0x1

    goto :goto_4

    .line 5659
    .end local v21    # "var6":I
    .local v0, "var6":I
    :cond_d
    move/from16 v21, v0

    .line 5673
    .end local v0    # "var6":I
    .restart local v21    # "var6":I
    :cond_e
    :goto_4
    move v0, v4

    .line 5674
    .end local v21    # "var6":I
    .restart local v0    # "var6":I
    move v1, v8

    .line 5675
    if-eqz v13, :cond_f

    .line 5676
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 5677
    move v1, v8

    .line 5678
    move v0, v4

    move v13, v0

    move v0, v8

    goto :goto_5

    .line 5675
    :cond_f
    move v13, v0

    move v0, v8

    goto :goto_5

    .line 5639
    .end local v2    # "var22":Z
    .end local v4    # "var13":I
    .end local v5    # "var19":Z
    .end local v8    # "var7":I
    .end local v13    # "var14":Z
    .restart local v16    # "var7":I
    :cond_10
    move/from16 v21, v0

    .end local v0    # "var6":I
    .restart local v21    # "var6":I
    move/from16 v0, v16

    move/from16 v13, v21

    .line 5682
    .end local v16    # "var7":I
    .end local v21    # "var6":I
    .local v0, "var7":I
    .local v13, "var6":I
    :goto_5
    move v2, v11

    .line 5683
    .end local v15    # "var9":Z
    .local v2, "var9":Z
    iget v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    .line 5684
    iget-object v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    const/4 v8, 0x0

    aget v8, v4, v8

    sub-int v8, v18, v8

    iput v8, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    .line 5685
    aget v4, v4, v5

    sub-int v4, v19, v4

    iput v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    .line 5686
    iget-boolean v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopMoved:Z

    if-nez v4, :cond_13

    .line 5687
    if-eqz v9, :cond_11

    .line 5688
    move v3, v13

    goto :goto_6

    .line 5690
    :cond_11
    const/4 v3, 0x0

    .line 5693
    :goto_6
    if-eqz v10, :cond_12

    .line 5694
    move v0, v1

    goto :goto_7

    .line 5696
    :cond_12
    const/4 v0, 0x0

    .line 5699
    :goto_7
    invoke-virtual {v6, v3, v0, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5700
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5704
    :cond_13
    move v2, v11

    .line 5705
    iget-object v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    if-eqz v4, :cond_15

    .line 5706
    if-nez v13, :cond_14

    .line 5707
    move v2, v11

    .line 5708
    if-nez v1, :cond_14

    .line 5709
    move v1, v2

    goto/16 :goto_a

    .line 5713
    :cond_14
    invoke-virtual {v4, v6, v13, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->postFromTraversal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    .line 5714
    move v2, v11

    move v1, v2

    goto/16 :goto_a

    .line 5705
    :cond_15
    move v1, v2

    goto/16 :goto_a

    .line 5683
    :cond_16
    move v1, v2

    goto/16 :goto_a

    .line 5588
    .end local v1    # "var12":I
    .end local v2    # "var9":Z
    .end local v3    # "var21":I
    .end local v18    # "var10":I
    .end local v19    # "var11":I
    .restart local v15    # "var9":Z
    :pswitch_5
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5589
    const/4 v2, 0x1

    .line 5590
    .end local v15    # "var9":Z
    .restart local v2    # "var9":Z
    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5592
    if-eqz v9, :cond_17

    .line 5593
    iget-object v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    neg-float v3, v3

    .local v3, "var15":F
    goto :goto_8

    .line 5595
    .end local v3    # "var15":F
    :cond_17
    const/4 v3, 0x0

    .line 5599
    .restart local v3    # "var15":F
    :goto_8
    if-eqz v10, :cond_18

    .line 5600
    iget-object v4, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v4, v4

    .local v4, "var16":F
    goto :goto_9

    .line 5602
    .end local v4    # "var16":F
    :cond_18
    const/4 v4, 0x0

    .line 5605
    .restart local v4    # "var16":F
    :goto_9
    const/4 v5, 0x0

    cmpl-float v8, v3, v5

    if-nez v8, :cond_19

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1a

    :cond_19
    float-to-int v5, v3

    float-to-int v8, v4

    invoke-virtual {v6, v5, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->fling(II)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 5606
    :cond_1a
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 5609
    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchUp() velocity : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5610
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->resetTouch()V

    .line 5611
    move v1, v2

    goto :goto_a

    .line 5563
    .end local v2    # "var9":Z
    .end local v3    # "var15":F
    .end local v4    # "var16":F
    .restart local v15    # "var9":Z
    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollPointerId:I

    .line 5564
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 5565
    .local v1, "var21":I
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    .line 5566
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchX:I

    .line 5567
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v2

    float-to-int v1, v3

    .line 5568
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    .line 5569
    iput v1, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInitialTouchY:I

    .line 5570
    iget-boolean v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasNestedScrollRange:Z

    if-eqz v2, :cond_1c

    .line 5571
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->adjustNestedScrollRange()V

    .line 5574
    :cond_1c
    const/4 v1, 0x0

    .line 5575
    if-eqz v9, :cond_1d

    .line 5576
    const/4 v1, 0x1

    .line 5579
    :cond_1d
    move v0, v1

    .line 5580
    if-eqz v10, :cond_1e

    .line 5581
    or-int/lit8 v0, v1, 0x2

    .line 5584
    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startNestedScroll(II)Z

    .line 5585
    move v2, v11

    .line 5586
    .end local v15    # "var9":Z
    .restart local v2    # "var9":Z
    move v1, v2

    .line 5741
    .end local v2    # "var9":Z
    .local v1, "var9":Z
    :goto_a
    if-nez v1, :cond_1f

    .line 5742
    iget-object v2, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5745
    :cond_1f
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 5746
    const/4 v2, 0x1

    move v0, v2

    .line 5748
    .end local v1    # "var9":Z
    .end local v9    # "var2":Z
    .end local v10    # "var3":Z
    .end local v11    # "var4":Z
    .end local v12    # "var5":Landroid/view/MotionEvent;
    .end local v13    # "var6":I
    .local v0, "var2":Z
    :goto_b
    goto :goto_c

    .line 5750
    .end local v0    # "var2":Z
    :cond_20
    const/4 v0, 0x0

    .line 5753
    .restart local v0    # "var2":Z
    :goto_c
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 1

    .line 5757
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 5758
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPostedAnimatorRunner:Z

    .line 5762
    :cond_0
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 5765
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDispatchItemsChangedEvent:Z

    .line 5766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 5767
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->markKnownViewsInvalid()V

    .line 5768
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 5771
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 5772
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-boolean v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5773
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChangedHolderKey(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 5774
    .local v0, "var3":J
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToOldChangeHolders(JLcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 5777
    .end local v0    # "var3":J
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewInfoStore:Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;->addToPreLayout(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5778
    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    .line 5781
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 5782
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->endAnimations()V

    .line 5785
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 5786
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 5787
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 5790
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->clear()V

    .line 5791
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 5794
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 5795
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 5796
    .local v0, "var2":Z
    if-eqz v0, :cond_0

    .line 5797
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v1

    .line 5798
    .local v1, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->unscrapView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 5799
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->recycleViewHolderInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 5803
    .end local v1    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    if-nez v0, :cond_1

    .line 5804
    const/4 v1, 0x1

    .local v1, "var3":Z
    goto :goto_0

    .line 5806
    .end local v1    # "var3":Z
    :cond_1
    const/4 v1, 0x0

    .line 5809
    .restart local v1    # "var3":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 5810
    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Z

    .line 5814
    invoke-static {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 5815
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v0, :cond_2

    .line 5816
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5817
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    .line 5818
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5819
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5823
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5824
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 5825
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 5826
    return-void
.end method

.method public removeItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;

    .line 5829
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 5830
    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5833
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5834
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5836
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5837
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 5839
    .end local v0    # "var2":Z
    :cond_1
    const/4 v0, 0x0

    .line 5842
    .restart local v0    # "var2":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setWillNotDraw(Z)V

    .line 5845
    .end local v0    # "var2":Z
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->markItemDecorInsetsDirty()V

    .line 5846
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 5847
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 5850
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getItemDecorationCount()I

    move-result v0

    .line 5851
    .local v0, "var2":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 5852
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getItemDecorationAt(I)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;)V

    .line 5856
    return-void

    .line 5854
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is an invalid index for size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnChildAttachStateChangeListener;

    .line 5859
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5860
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5863
    :cond_0
    return-void
.end method

.method public removeOnItemTouchListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 5866
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5867
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 5868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mActiveOnItemTouchListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    .line 5871
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    .line 5874
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5875
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5878
    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 9

    .line 5881
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v0

    .line 5883
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5884
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5885
    .local v2, "var3":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 5886
    .local v3, "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    if-eqz v4, :cond_1

    .line 5887
    iget-object v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5888
    .local v4, "var7":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 5889
    .local v5, "var5":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5890
    .local v6, "var6":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v5, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 5891
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 5883
    .end local v2    # "var3":Landroid/view/View;
    .end local v3    # "var4":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v4    # "var7":Landroid/view/View;
    .end local v5    # "var5":I
    .end local v6    # "var6":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5896
    .end local v1    # "var2":I
    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 5899
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onRequestChildFocus(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 5900
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 5903
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5904
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;
    .param p3, "var3"    # Z

    .line 5907
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "var1"    # Z

    .line 5911
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5913
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5914
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 5913
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5917
    .end local v1    # "var3":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 5918
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 5921
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 5922
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 5924
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutWasDefered:Z

    .line 5927
    :goto_0
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .line 5930
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5932
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5933
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    .line 5934
    .local v2, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5935
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->saveOldPosition()V

    .line 5932
    .end local v2    # "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5939
    .end local v1    # "var2":I
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 5942
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 5943
    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5944
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_4

    .line 5945
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 5946
    .local v0, "var3":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 5947
    .local v1, "var4":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    .line 5948
    :cond_1
    if-nez v0, :cond_2

    .line 5949
    const/4 p1, 0x0

    .line 5952
    :cond_2
    if-nez v1, :cond_3

    .line 5953
    const/4 p2, 0x0

    .line 5956
    :cond_3
    const/4 v2, 0x0

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 5960
    .end local v0    # "var3":Z
    .end local v1    # "var4":Z
    :cond_4
    :goto_0
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/MotionEvent;

    .line 5963
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v11, 0x0

    .line 5964
    .local v11, "var4":Z
    const/4 v0, 0x0

    .line 5965
    .local v0, "var5":I
    const/4 v12, 0x0

    .line 5966
    .local v12, "var6":B
    const/4 v1, 0x0

    .line 5967
    .local v1, "var7":I
    const/4 v2, 0x0

    .line 5968
    .local v2, "var8":B
    const/4 v3, 0x0

    .line 5969
    .local v3, "var9":I
    const/4 v13, 0x0

    .line 5970
    .local v13, "var10":B
    const/4 v4, 0x0

    .line 5971
    .local v4, "var11":I
    const/4 v14, 0x0

    .line 5972
    .local v14, "var12":B
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    .line 5973
    iget-object v5, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v5, :cond_3

    .line 5974
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 5975
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 5976
    const-string v5, "RV Scroll"

    invoke-static {v5}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5977
    iget-object v5, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v7, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->fillRemainingScrollValues(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 5978
    move v3, v13

    .line 5979
    move v0, v12

    .line 5980
    if-eqz v8, :cond_0

    .line 5981
    iget-object v5, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v15, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v6, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5, v8, v15, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v3

    .line 5982
    sub-int v0, v8, v3

    .line 5985
    :cond_0
    move v4, v14

    .line 5986
    move v1, v2

    .line 5987
    if-eqz v9, :cond_2

    .line 5988
    iget-object v5, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v6, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v15, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5, v9, v6, v15}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v5

    .line 5989
    .local v5, "var17":I
    sub-int v6, v9, v5

    .line 5990
    .local v6, "var15":I
    move v4, v5

    .line 5991
    move v1, v6

    .line 5992
    iget v15, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    if-nez v15, :cond_1

    .line 5993
    const/4 v15, 0x1

    invoke-direct {v7, v15}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 5994
    invoke-direct {v7, v15}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->autoHide(I)V

    .line 5995
    move v1, v6

    .line 5996
    move v4, v5

    goto :goto_0

    .line 5992
    :cond_1
    const/4 v15, 0x1

    goto :goto_0

    .line 5987
    .end local v5    # "var17":I
    .end local v6    # "var15":I
    :cond_2
    const/4 v15, 0x1

    .line 6000
    :goto_0
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 6001
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->repositionShadowingViews()V

    .line 6002
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 6003
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    move v6, v0

    move v5, v1

    move/from16 v22, v4

    move v4, v3

    move/from16 v3, v22

    goto :goto_1

    .line 5973
    :cond_3
    const/4 v15, 0x1

    move v6, v0

    move v5, v1

    move/from16 v22, v4

    move v4, v3

    move/from16 v3, v22

    .line 6006
    .end local v0    # "var5":I
    .end local v1    # "var7":I
    .local v3, "var11":I
    .local v4, "var9":I
    .local v5, "var7":I
    .local v6, "var5":I
    :goto_1
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6007
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 6010
    :cond_4
    const/4 v0, 0x1

    .line 6011
    .local v0, "var18":Z
    move v1, v0

    .line 6012
    .local v1, "var16":Z
    iget-boolean v15, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsMouseWheel:Z

    if-eqz v15, :cond_6

    .line 6013
    move v1, v0

    .line 6014
    if-gez v5, :cond_5

    .line 6015
    const/4 v1, 0x0

    move v15, v1

    goto :goto_2

    .line 6014
    :cond_5
    move v15, v1

    goto :goto_2

    .line 6012
    :cond_6
    move v15, v1

    .line 6019
    .end local v1    # "var16":Z
    .local v15, "var16":Z
    :goto_2
    if-eqz v10, :cond_7

    const/16 v1, 0x2002

    invoke-static {v10, v1}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6020
    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_3

    .line 6022
    :cond_7
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 6026
    .end local v0    # "var18":Z
    .local v17, "var18":Z
    :goto_3
    if-eqz v15, :cond_b

    .line 6027
    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    .line 6028
    .local v1, "var13":[I
    if-eqz v17, :cond_8

    .line 6029
    const/4 v0, 0x1

    move/from16 v18, v0

    .end local v2    # "var8":B
    .local v0, "var8":B
    goto :goto_4

    .line 6031
    .end local v0    # "var8":B
    .restart local v2    # "var8":B
    :cond_8
    const/4 v0, 0x0

    move/from16 v18, v0

    .line 6034
    .end local v2    # "var8":B
    .local v18, "var8":B
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v19, v1

    .end local v1    # "var13":[I
    .local v19, "var13":[I
    move v1, v4

    move v2, v3

    move v8, v3

    .end local v3    # "var11":I
    .local v8, "var11":I
    move v3, v6

    move v9, v4

    .end local v4    # "var9":I
    .local v9, "var9":I
    move v4, v5

    move/from16 v20, v11

    move v11, v5

    .end local v5    # "var7":I
    .local v11, "var7":I
    .local v20, "var4":Z
    move-object/from16 v5, v19

    move/from16 v21, v12

    move/from16 v16, v13

    const/4 v13, 0x1

    move v12, v6

    .end local v6    # "var5":I
    .end local v13    # "var10":B
    .local v12, "var5":I
    .local v16, "var10":B
    .local v21, "var6":B
    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6035
    iget v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    iget-object v1, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    sub-int/2addr v0, v3

    iput v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchX:I

    .line 6036
    iget v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    aget v3, v1, v13

    sub-int/2addr v0, v3

    iput v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLastTouchY:I

    .line 6037
    if-eqz v10, :cond_9

    .line 6038
    aget v0, v1, v2

    int-to-float v0, v0

    aget v1, v1, v13

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6041
    :cond_9
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    .line 6042
    .local v0, "var14":[I
    aget v1, v0, v2

    iget-object v3, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollOffset:[I

    aget v4, v3, v2

    add-int/2addr v1, v4

    aput v1, v0, v2

    .line 6043
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedOffsets:[I

    .line 6044
    aget v1, v0, v13

    aget v2, v3, v13

    add-int/2addr v1, v2

    aput v1, v0, v13

    .line 6045
    iput-boolean v13, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNestedScroll:Z

    .line 6046
    goto :goto_6

    .line 6034
    .end local v0    # "var14":[I
    :cond_a
    move/from16 v2, v18

    goto :goto_5

    .line 6026
    .end local v8    # "var11":I
    .end local v9    # "var9":I
    .end local v16    # "var10":B
    .end local v18    # "var8":B
    .end local v19    # "var13":[I
    .end local v20    # "var4":Z
    .end local v21    # "var6":B
    .restart local v2    # "var8":B
    .restart local v3    # "var11":I
    .restart local v4    # "var9":I
    .restart local v5    # "var7":I
    .restart local v6    # "var5":I
    .local v11, "var4":Z
    .local v12, "var6":B
    .restart local v13    # "var10":B
    :cond_b
    move v8, v3

    move v9, v4

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v16, v13

    const/4 v13, 0x1

    move v11, v5

    move v12, v6

    .line 6050
    .end local v3    # "var11":I
    .end local v4    # "var9":I
    .end local v5    # "var7":I
    .end local v6    # "var5":I
    .end local v13    # "var10":B
    .restart local v8    # "var11":I
    .restart local v9    # "var9":I
    .local v11, "var7":I
    .local v12, "var5":I
    .restart local v16    # "var10":B
    .restart local v20    # "var4":Z
    .restart local v21    # "var6":B
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 6051
    if-eqz v10, :cond_c

    if-nez v17, :cond_c

    .line 6052
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v11

    invoke-direct {v7, v0, v1, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->pullGlows(FFFF)V

    .line 6055
    :cond_c
    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 6059
    :cond_d
    move/from16 v18, v2

    .end local v2    # "var8":B
    .restart local v18    # "var8":B
    :goto_6
    if-nez v9, :cond_e

    if-eqz v8, :cond_f

    .line 6060
    :cond_e
    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchOnScrolled(II)V

    .line 6063
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_10

    .line 6064
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 6067
    :cond_10
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_12

    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v7, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6068
    :cond_11
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 6071
    :cond_12
    if-nez v9, :cond_14

    if-eqz v8, :cond_13

    goto :goto_7

    :cond_13
    move/from16 v0, v20

    goto :goto_8

    .line 6072
    :cond_14
    :goto_7
    const/4 v0, 0x1

    .line 6075
    .end local v20    # "var4":Z
    .local v0, "var4":Z
    :goto_8
    return v0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 6079
    const-string v0, "SeslRecyclerView"

    const-string v1, "SeslRecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6080
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 6083
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1

    .line 6084
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopScroll()V

    .line 6085
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 6086
    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6088
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 6089
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->awakenScrollBars()Z

    .line 6090
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_1

    .line 6091
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 6096
    :cond_1
    :goto_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 6099
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6100
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6103
    :cond_0
    return-void
.end method

.method public seslFindNearChildViewUnder(FF)Landroid/view/View;
    .locals 22
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 6106
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v3

    .line 6107
    .local v3, "var3":I
    const/high16 v4, 0x3f000000    # 0.5f

    add-float v5, v1, v4

    float-to-int v5, v5

    .line 6108
    .local v5, "var4":I
    add-float/2addr v4, v2

    float-to-int v4, v4

    .line 6109
    .local v4, "var5":I
    move v6, v4

    .line 6110
    .local v6, "var6":I
    const v7, 0x7fffffff

    .line 6111
    .local v7, "var7":I
    const/4 v8, 0x0

    .line 6118
    .local v8, "var8":I
    add-int/lit8 v9, v3, -0x1

    .local v9, "var9":I
    :goto_0
    if-ltz v9, :cond_3

    .line 6119
    invoke-virtual {v0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6120
    .local v10, "var10":Landroid/view/View;
    move v11, v6

    .line 6121
    .local v11, "var11":I
    move v12, v7

    .line 6122
    .local v12, "var12":I
    move v13, v8

    .line 6123
    .local v13, "var13":I
    if-eqz v10, :cond_2

    .line 6124
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v14, v15

    div-int/lit8 v11, v14, 0x2

    .line 6125
    if-ne v8, v11, :cond_0

    .line 6126
    move v13, v8

    .line 6127
    move v12, v7

    .line 6128
    move v11, v6

    goto :goto_1

    .line 6130
    :cond_0
    sub-int v14, v4, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 6131
    if-lt v12, v7, :cond_1

    .line 6132
    goto :goto_2

    .line 6135
    :cond_1
    move v13, v11

    .line 6139
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, -0x1

    .line 6140
    move v6, v11

    .line 6141
    move v7, v12

    .line 6118
    move v8, v13

    goto :goto_0

    .line 6144
    .end local v10    # "var10":Landroid/view/View;
    .end local v11    # "var11":I
    .end local v12    # "var12":I
    .end local v13    # "var13":I
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .line 6145
    const/4 v10, 0x0

    .line 6146
    .local v10, "var12":I
    const/4 v8, 0x0

    .line 6147
    const/4 v11, 0x0

    .line 6148
    .restart local v11    # "var11":I
    add-int/lit8 v9, v3, -0x1

    .line 6151
    :goto_3
    if-gez v9, :cond_4

    .line 6152
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "findNearChildViewUnder didn\'t find valid child view! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "SeslRecyclerView"

    invoke-static {v13, v12}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6153
    const/4 v12, 0x0

    .line 6154
    .local v12, "var10":Landroid/view/View;
    goto/16 :goto_5

    .line 6157
    .end local v12    # "var10":Landroid/view/View;
    :cond_4
    invoke-virtual {v0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6158
    .restart local v12    # "var10":Landroid/view/View;
    move v13, v8

    .line 6159
    .local v13, "var14":I
    move v14, v11

    .line 6160
    .local v14, "var15":I
    move v15, v7

    .line 6161
    .local v15, "var16":I
    move/from16 v16, v10

    .line 6162
    .local v16, "var17":I
    if-eqz v12, :cond_c

    .line 6164
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    .line 6165
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 6166
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 6167
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v16

    .line 6168
    add-int/lit8 v1, v3, -0x1

    if-ne v9, v1, :cond_5

    .line 6169
    add-int/lit8 v8, v3, -0x1

    .line 6170
    add-int/lit8 v11, v3, -0x1

    .line 6171
    sub-int v1, v5, v15

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 6172
    sub-int v1, v5, v16

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 6175
    :cond_5
    move v1, v8

    .line 6176
    .local v1, "var18":I
    move/from16 v17, v11

    .line 6177
    .local v17, "var19":I
    move/from16 v18, v7

    .line 6178
    .local v18, "var13":I
    move v4, v10

    .line 6179
    if-lt v6, v14, :cond_9

    .line 6180
    move v1, v8

    .line 6181
    move/from16 v17, v11

    .line 6182
    move/from16 v18, v7

    .line 6183
    move v4, v10

    .line 6184
    if-gt v6, v13, :cond_8

    .line 6185
    sub-int v19, v5, v15

    move/from16 v20, v1

    .end local v1    # "var18":I
    .local v20, "var18":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 6186
    .end local v18    # "var13":I
    .local v1, "var13":I
    sub-int v18, v5, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 6187
    move/from16 v16, v8

    .line 6188
    move v8, v7

    .line 6189
    if-gt v1, v7, :cond_6

    .line 6190
    move/from16 v16, v9

    .line 6191
    move v8, v1

    .line 6194
    :cond_6
    move/from16 v18, v16

    .line 6195
    .end local v20    # "var18":I
    .local v18, "var18":I
    move/from16 v17, v11

    .line 6196
    move v1, v8

    .line 6197
    move v4, v10

    .line 6198
    if-gt v15, v10, :cond_7

    .line 6199
    move/from16 v17, v9

    .line 6200
    move v4, v15

    .line 6201
    move v1, v8

    .line 6202
    move/from16 v18, v16

    move/from16 v21, v18

    move/from16 v18, v1

    move/from16 v1, v21

    goto :goto_4

    .line 6198
    :cond_7
    move/from16 v21, v18

    move/from16 v18, v1

    move/from16 v1, v21

    goto :goto_4

    .line 6184
    .local v1, "var18":I
    .local v18, "var13":I
    :cond_8
    move/from16 v20, v1

    .line 6207
    :cond_9
    :goto_4
    if-gt v6, v13, :cond_a

    .line 6208
    move v13, v1

    .line 6209
    move/from16 v14, v17

    .line 6210
    move/from16 v15, v18

    .line 6211
    move/from16 v16, v4

    .line 6212
    if-eqz v9, :cond_a

    .line 6213
    goto :goto_6

    .line 6217
    :cond_a
    move/from16 v2, v18

    .end local v18    # "var13":I
    .local v2, "var13":I
    if-ge v2, v4, :cond_b

    .line 6218
    move/from16 v18, v2

    .end local v2    # "var13":I
    .restart local v18    # "var13":I
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto :goto_5

    .line 6220
    .end local v18    # "var13":I
    .restart local v2    # "var13":I
    :cond_b
    move/from16 v18, v2

    .end local v2    # "var13":I
    .restart local v18    # "var13":I
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    move/from16 v0, v17

    .end local v17    # "var19":I
    .local v0, "var19":I
    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6222
    nop

    .line 6233
    .end local v0    # "var19":I
    .end local v1    # "var18":I
    .end local v13    # "var14":I
    .end local v14    # "var15":I
    .end local v15    # "var16":I
    .end local v16    # "var17":I
    .end local v18    # "var13":I
    :goto_5
    return-object v12

    .line 6226
    .restart local v13    # "var14":I
    .restart local v14    # "var15":I
    .restart local v15    # "var16":I
    .restart local v16    # "var17":I
    :cond_c
    :goto_6
    add-int/lit8 v9, v9, -0x1

    .line 6227
    move v8, v13

    .line 6228
    move v11, v14

    .line 6229
    move v7, v15

    .line 6230
    move/from16 v10, v16

    .line 6231
    .end local v13    # "var14":I
    .end local v14    # "var15":I
    .end local v15    # "var16":I
    .end local v16    # "var17":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_3
.end method

.method public seslGetGoToTopBottomPadding()I
    .locals 1

    .line 6237
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    return v0
.end method

.method public seslGetHoverBottomPadding()I
    .locals 1

    .line 6241
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    return v0
.end method

.method public seslGetHoverTopPadding()I
    .locals 1

    .line 6245
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    return v0
.end method

.method public final seslGetOnMultiSelectedListener()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;
    .locals 1

    .line 6249
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;

    return-object v0
.end method

.method public seslHideGoToTop()V
    .locals 2

    .line 6253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->autoHide(I)V

    .line 6254
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 6255
    return-void
.end method

.method public seslInitConfigurations(Landroid/content/Context;)V
    .locals 6
    .param p1, "var1"    # Landroid/content/Context;

    .line 6258
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 6259
    .local v0, "var2":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6260
    .local v1, "var3":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    .line 6261
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslTouchSlop:I

    .line 6262
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslPagingTouchSlop:I

    .line 6263
    invoke-static {v0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScaledHorizontalScrollFactor:F

    .line 6264
    invoke-static {v0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScaledVerticalScrollFactor:F

    .line 6265
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMinFlingVelocity:I

    .line 6266
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mMaxFlingVelocity:I

    .line 6267
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    .line 6268
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    .line 6269
    const v2, 0x7f070216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    .line 6270
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImmersiveBottomPadding:I

    .line 6271
    const v2, 0x7f070217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopSize:I

    .line 6272
    const v2, 0x7f070215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopElevation:I

    .line 6273
    const v2, 0x7f070243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mNavigationBarHeight:I

    .line 6274
    const v2, 0x7f070259

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mStrokeHeight:I

    .line 6275
    return-void
.end method

.method public seslIsFastScrollerEnabled()Z
    .locals 1

    .line 6278
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScrollerEnabled:Z

    return v0
.end method

.method public seslIsPagingTouchSlopForStylusEnabled()Z
    .locals 1

    .line 6282
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mUsePagingTouchSlopForStylus:Z

    return v0
.end method

.method public seslSetCtrlkeyPressed(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 6286
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsCtrlKeyPressed:Z

    .line 6287
    return-void
.end method

.method public seslSetFastScrollerEnabled(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 6290
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 6291
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    goto :goto_0

    .line 6292
    :cond_0
    if-eqz p1, :cond_1

    .line 6293
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    .line 6294
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    .line 6295
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    .line 6298
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScrollerEnabled:Z

    .line 6299
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    .line 6300
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 6303
    :cond_2
    return-void
.end method

.method public seslSetFastScrollerEventListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    .line 6306
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScrollerEventListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslFastScrollerEventListener;

    .line 6307
    return-void
.end method

.method public seslSetFillBottomColor(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 6310
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6311
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawWhiteTheme:Z

    if-nez v0, :cond_0

    .line 6312
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->setRoundedCornerColor(II)V

    .line 6315
    :cond_0
    return-void
.end method

.method public seslSetFillBottomEnabled(Z)V
    .locals 4
    .param p1, "var1"    # Z

    .line 6318
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    if-eqz v0, :cond_1

    .line 6319
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawRect:Z

    .line 6320
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawWhiteTheme:Z

    if-nez v0, :cond_0

    .line 6321
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060155

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6324
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 6327
    :cond_1
    return-void
.end method

.method public seslSetGoToTopBottomPadding(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 6330
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    .line 6331
    return-void
.end method

.method public seslSetGoToTopEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 6334
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetGoToTopEnabled(ZZ)V

    .line 6335
    return-void
.end method

.method public seslSetGoToTopEnabled(ZZ)V
    .locals 6
    .param p1, "var1"    # Z
    .param p2, "var2"    # Z

    .line 6339
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 6340
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

    .local v1, "var3":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 6342
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080133

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6345
    .restart local v1    # "var3":Landroid/graphics/drawable/Drawable;
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 6346
    if-eqz v1, :cond_6

    .line 6347
    if-nez p1, :cond_1

    .line 6348
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_5

    .line 6349
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_2

    .line 6352
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    .line 6353
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    .line 6354
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 6355
    .local v2, "var4":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    .line 6356
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    .line 6357
    .local v3, "var5":Landroid/widget/ImageView;
    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 6358
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080107

    check-cast v0, Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 6360
    .end local v0    # "var3":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "var3":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080106

    check-cast v0, Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6363
    .end local v1    # "var3":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "var3":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6364
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopElevation:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setElevation(F)V

    move-object v1, v0

    .line 6367
    .end local v0    # "var3":Landroid/graphics/drawable/Drawable;
    .end local v3    # "var5":Landroid/widget/ImageView;
    .restart local v1    # "var3":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6370
    .end local v2    # "var4":Z
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6371
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_5

    .line 6372
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 6376
    :cond_5
    :goto_2
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    .line 6377
    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 6378
    const-wide/16 v3, 0x14d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6379
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6380
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$13;

    invoke-direct {v5, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$13;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6389
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 6390
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6391
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6392
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$14;

    invoke-direct {v2, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$14;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6401
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$15;

    invoke-direct {v2, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$15;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6427
    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public seslSetHoverBottomPadding(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 6430
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverBottomAreaHeight:I

    .line 6431
    return-void
.end method

.method public seslSetHoverScrollEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 6434
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollEnable:Z

    .line 6435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverScrollStateChanged:Z

    .line 6436
    return-void
.end method

.method public seslSetHoverTopPadding(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 6439
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHoverTopAreaHeight:I

    .line 6440
    return-void
.end method

.method public seslSetImmersiveScrollBottomPadding(I)V
    .locals 10
    .param p1, "var1"    # I

    .line 6443
    if-ltz p1, :cond_2

    .line 6444
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 6445
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 6446
    .local v0, "var2":I
    if-gez v0, :cond_0

    .line 6447
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImmersiveBottomPadding:I

    .line 6448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6449
    .local v1, "var9":Ljava/lang/StringBuilder;
    const-string v2, "The Immersive padding value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6450
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6451
    const-string v2, ") was too large to draw GoToTop."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SeslRecyclerView"

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6453
    return-void

    .line 6456
    .end local v1    # "var9":Ljava/lang/StringBuilder;
    :cond_0
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImmersiveBottomPadding:I

    .line 6457
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v1

    .line 6458
    .local v1, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v2

    .line 6459
    .local v2, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v3

    .line 6460
    .local v3, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int v5, v1, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 6461
    .end local v3    # "var6":I
    .local v4, "var6":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 6462
    .local v3, "var3":Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopSize:I

    .line 6463
    div-int/lit8 v5, v1, 0x2

    sub-int v5, v4, v5

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v4

    add-int v7, v1, v0

    invoke-virtual {v3, v5, v0, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 6464
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopView:Landroid/widget/ImageView;

    .line 6465
    .local v5, "var7":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 6466
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 6469
    .end local v0    # "var2":I
    .end local v1    # "var4":I
    .end local v2    # "var5":I
    .end local v3    # "var3":Landroid/graphics/Rect;
    .end local v4    # "var6":I
    .end local v5    # "var7":Landroid/widget/ImageView;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    .line 6470
    .local v0, "var8":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_2

    .line 6471
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setImmersiveBottomPadding(I)V

    .line 6472
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFastScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 6476
    .end local v0    # "var8":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    :cond_2
    return-void
.end method

.method public seslSetLastItemOutlineStrokeEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 6479
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    if-eqz v0, :cond_0

    .line 6480
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawLastItemOutlineStoke:Z

    .line 6481
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 6484
    :cond_0
    return-void
.end method

.method public seslSetLastOutlineStrokeEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 6487
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawLastOutLineStroke:Z

    .line 6488
    return-void
.end method

.method public seslSetLongPressMultiSelectionListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    .line 6491
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLongPressMultiSelectionListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    .line 6492
    return-void
.end method

.method public seslSetOnGoToTopClickListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;

    .line 6495
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslOnGoToTopClickListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnGoToTopClickListener;

    .line 6496
    return-void
.end method

.method public seslSetOnMultiSelectedListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;

    .line 6499
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SeslOnMultiSelectedListener;

    .line 6500
    return-void
.end method

.method public seslSetOutlineStrokeEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 6503
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetOutlineStrokeEnabled(ZZ)V

    .line 6504
    return-void
.end method

.method public seslSetOutlineStrokeEnabled(ZZ)V
    .locals 4
    .param p1, "var1"    # Z
    .param p2, "var2"    # Z

    .line 6507
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    if-eqz v0, :cond_1

    .line 6508
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawOutlineStroke:Z

    .line 6509
    iput-boolean p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawWhiteTheme:Z

    .line 6510
    new-instance v0, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    .line 6511
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    .line 6512
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawWhiteTheme:Z

    if-nez v0, :cond_0

    .line 6513
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060155

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6516
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 6519
    :cond_1
    return-void
.end method

.method public seslSetPagingTouchSlopForStylus(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 6522
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mUsePagingTouchSlopForStylus:Z

    .line 6523
    return-void
.end method

.method public seslSetPenSelectionEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 6526
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsPenSelectionEnabled:Z

    .line 6527
    return-void
.end method

.method public seslSetRegulationEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 6530
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    if-eqz v0, :cond_0

    .line 6531
    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->access$4700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;)Lcom/samsung/android/ui/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->setRegulationEnabled(Z)V

    .line 6534
    :cond_0
    return-void
.end method

.method public seslSetSmoothScrollEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 6537
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    if-eqz v0, :cond_0

    .line 6538
    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->access$4700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;)Lcom/samsung/android/ui/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->setSmoothScrollEnabled(Z)V

    .line 6541
    :cond_0
    return-void
.end method

.method public seslShowGoToTopEdge(FFI)V
    .locals 3
    .param p1, "var1"    # F
    .param p2, "var2"    # F
    .param p3, "var3"    # I

    .line 6544
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureTopGlow()V

    .line 6545
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTopGlow:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    .line 6546
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate(IIII)V

    .line 6547
    return-void
.end method

.method public seslStartLongPressMultiSelection()V
    .locals 1

    .line 6550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsLongPressMultiSelection:Z

    .line 6551
    return-void
.end method

.method public setAccessibilityDelegateCompat(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    .line 6554
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAccessibilityDelegate:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewAccessibilityDelegate;

    .line 6555
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 6556
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 6559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setLayoutFrozen(Z)V

    .line 6560
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setAdapterInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;ZZ)V

    .line 6561
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 6562
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 6563
    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    .line 6566
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildDrawingOrderCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    if-eq p1, v0, :cond_1

    .line 6567
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildDrawingOrderCallback:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    .line 6569
    if-eqz p1, :cond_0

    .line 6570
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 6572
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 6575
    .restart local v0    # "var2":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 6578
    .end local v0    # "var2":Z
    :cond_1
    return-void
.end method

.method setChildImportantForAccessibilityInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;I)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "var2"    # I

    .line 6582
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6583
    iput p2, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 6584
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6585
    const/4 v0, 0x0

    .local v0, "var3":Z
    goto :goto_0

    .line 6587
    .end local v0    # "var3":Z
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 6588
    const/4 v0, 0x1

    .line 6591
    .restart local v0    # "var3":Z
    :goto_0
    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 6595
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 6596
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidateGlows()V

    .line 6599
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mClipToPadding:Z

    .line 6600
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 6601
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 6602
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 6605
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 6608
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mHasFixedSize:Z

    .line 6609
    return-void
.end method

.method public setItemAnimator(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    .line 6612
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 6613
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->endAnimations()V

    .line 6614
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    const/4 v1, 0x0

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->setListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 6617
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    .line 6618
    if-eqz p1, :cond_1

    .line 6619
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimatorListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->setListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 6622
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 6625
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->setViewCacheSize(I)V

    .line 6626
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10
    .param p1, "var1"    # Z

    .line 6629
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_2

    .line 6630
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6631
    if-nez p1, :cond_1

    .line 6632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    .line 6633
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutWasDefered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 6634
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 6637
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    .line 6639
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6640
    .local v0, "var2":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v0

    move-wide v4, v0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6641
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    .line 6642
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 6643
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopScroll()V

    .line 6647
    .end local v0    # "var2":J
    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 6650
    const/4 v0, 0x1

    .line 6651
    .local v0, "var2":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eq p1, v1, :cond_8

    .line 6652
    instance-of v1, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    .line 6654
    .local v1, "var3":Z
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawRect:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 6655
    const/4 v2, 0x1

    .local v2, "var4":Z
    goto :goto_0

    .line 6657
    .end local v2    # "var4":Z
    :cond_0
    const/4 v2, 0x0

    .line 6660
    .restart local v2    # "var4":Z
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawRect:Z

    .line 6661
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawOutlineStroke:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 6662
    const/4 v2, 0x1

    goto :goto_1

    .line 6664
    :cond_1
    const/4 v2, 0x0

    .line 6667
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawOutlineStroke:Z

    .line 6668
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawLastOutLineStroke:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 6669
    move v2, v0

    goto :goto_2

    .line 6671
    :cond_2
    const/4 v2, 0x0

    .line 6674
    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mDrawLastOutLineStroke:Z

    .line 6675
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopScroll()V

    .line 6676
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v3, :cond_5

    .line 6677
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemAnimator:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;

    if-eqz v3, :cond_3

    .line 6678
    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->endAnimations()V

    .line 6681
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 6682
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 6683
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->clear()V

    .line 6684
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsAttached:Z

    if-eqz v3, :cond_4

    .line 6685
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3, p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;)V

    .line 6688
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 6689
    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    goto :goto_3

    .line 6691
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->clear()V

    .line 6694
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->removeAllViewsUnfiltered()V

    .line 6695
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 6696
    if-eqz p1, :cond_7

    .line 6697
    iget-object v3, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-nez v3, :cond_6

    .line 6701
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->setRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 6702
    iget-boolean v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mIsAttached:Z

    if-eqz v3, :cond_7

    .line 6703
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    goto :goto_4

    .line 6698
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already attached to a SeslRecyclerView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6707
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->updateViewCacheSize()V

    .line 6708
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 6711
    .end local v1    # "var3":Z
    .end local v2    # "var4":Z
    :cond_8
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 6714
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 6715
    return-void
.end method

.method public setOnFlingListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;

    .line 6718
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mOnFlingListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnFlingListener;

    .line 6719
    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6723
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    .line 6724
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 6727
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPreserveFocusAfterLayout:Z

    .line 6728
    return-void
.end method

.method public setRecycledViewPool(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;

    .line 6731
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->setRecycledViewPool(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecycledViewPool;)V

    .line 6732
    return-void
.end method

.method public setRecyclerListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerListener;

    .line 6735
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecyclerListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$RecyclerListener;

    .line 6736
    return-void
.end method

.method setScrollState(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 6739
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    if-eq p1, v0, :cond_1

    .line 6740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting scroll state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslRecyclerView"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6741
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mScrollState:I

    .line 6742
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 6743
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopScrollersInternal()V

    .line 6746
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 6749
    :cond_1
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 6752
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 6753
    .local v0, "var2":Landroid/view/ViewConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): slopConstant["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6754
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetPagingTouchSlopForStylus(Z)V

    .line 6755
    packed-switch p1, :pswitch_data_0

    .line 6760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; using default value"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6757
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    .line 6758
    goto :goto_1

    .line 6762
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mTouchSlop:I

    .line 6765
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setViewCacheExtension(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;

    .line 6768
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->setViewCacheExtension(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewCacheExtension;)V

    .line 6769
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 6773
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6774
    const/4 v0, 0x0

    .line 6775
    .local v0, "var2":I
    if-eqz p1, :cond_0

    .line 6776
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    .line 6779
    :cond_0
    move v1, v0

    .line 6780
    .local v1, "var3":I
    if-nez v0, :cond_1

    .line 6781
    const/4 v1, 0x0

    .line 6784
    :cond_1
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 6785
    const/4 v0, 0x1

    .line 6786
    .end local v1    # "var3":I
    .local v0, "var4":Z
    goto :goto_0

    .line 6787
    .end local v0    # "var4":Z
    :cond_2
    const/4 v0, 0x0

    .line 6790
    .restart local v0    # "var4":Z
    :goto_0
    return v0
.end method

.method showGoToTop()V
    .locals 2

    .line 6794
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6795
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setupGoToTop(I)V

    .line 6796
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->autoHide(I)V

    .line 6799
    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 6802
    const/4 v0, 0x0

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 6803
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/animation/Interpolator;

    .line 6806
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 6807
    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6808
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_4

    .line 6809
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6810
    const/4 p1, 0x0

    .line 6813
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6814
    const/4 p2, 0x0

    .line 6817
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 6818
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 6819
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->showGoToTop()V

    .line 6823
    :cond_4
    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 6826
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1

    .line 6827
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 6828
    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6830
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;I)V

    .line 6834
    :cond_1
    :goto_0
    return-void
.end method

.method startInterceptRequestLayout()V
    .locals 2

    .line 6837
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    .line 6838
    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 6839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutWasDefered:Z

    .line 6842
    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 6845
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 6849
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method stopInterceptRequestLayout(Z)V
    .locals 3
    .param p1, "var1"    # Z

    .line 6853
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 6854
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    .line 6857
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    .line 6858
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutWasDefered:Z

    .line 6861
    :cond_1
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    .line 6862
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutWasDefered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v2, :cond_2

    .line 6863
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchLayout()V

    .line 6866
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_3

    .line 6867
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayoutWasDefered:Z

    .line 6871
    :cond_3
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mInterceptRequestLayoutDepth:I

    .line 6872
    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 6875
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 6876
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 6879
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollingChildHelper()Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 6880
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 6883
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 6884
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopScrollersInternal()V

    .line 6885
    return-void
.end method

.method public swapAdapter(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    .param p2, "var2"    # Z

    .line 6888
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setLayoutFrozen(Z)V

    .line 6889
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setAdapterInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;ZZ)V

    .line 6890
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 6891
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestLayout()V

    .line 6892
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 6896
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6897
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 6899
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 6902
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/Object;

    .line 6906
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 6908
    .local v0, "var4":I
    const/4 v1, 0x0

    .local v1, "var5":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6909
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6910
    .local v2, "var6":Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 6911
    .local v3, "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    iget v4, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    add-int v5, p1, p2

    if-ge v4, v5, :cond_0

    .line 6912
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addFlags(I)V

    .line 6913
    invoke-virtual {v3, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 6914
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6908
    .end local v2    # "var6":Landroid/view/View;
    .end local v3    # "var7":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6918
    .end local v1    # "var5":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 6919
    return-void
.end method
