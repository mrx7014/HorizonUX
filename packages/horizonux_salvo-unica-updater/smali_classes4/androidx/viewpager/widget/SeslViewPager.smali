.class public Landroidx/viewpager/widget/SeslViewPager;
.super Landroid/view/ViewGroup;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/SeslViewPager$ItemInfo;,
        Landroidx/viewpager/widget/SeslViewPager$DecorView;,
        Landroidx/viewpager/widget/SeslViewPager$LayoutParams;,
        Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;,
        Landroidx/viewpager/widget/SeslViewPager$PageTransformer;,
        Landroidx/viewpager/widget/SeslViewPager$SavedState;,
        Landroidx/viewpager/widget/SeslViewPager$PagerObserver;,
        Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/SeslViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/SeslViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYOUT_ATTRS:[I

.field public static final sInterpolator:Landroid/view/animation/Interpolator;

.field public static final sPositionComparator:Landroidx/viewpager/widget/SeslViewPager$ViewPositionComparator;


# instance fields
.field public mActivePointerId:I

.field public mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field public mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mBottomPageBounds:I

.field public mCalledSuper:Z

.field public mCloseEnough:I

.field public mCurItem:I

.field public mDecorChildCount:I

.field public mDefaultGutterSize:I

.field public mDragInGutterEnabled:Z

.field public mDrawingOrder:I

.field public mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mEndScrollRunnable:Ljava/lang/Runnable;

.field public mExpectedAdapterCount:I

.field public mFakeDragging:Z

.field public mFirstLayout:Z

.field public mFirstOffset:F

.field public mFlingDistance:I

.field public mGutterSize:I

.field public mInLayout:Z

.field public mInitialMotionX:F

.field public mInitialMotionY:F

.field public mInternalPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

.field public mIsBeingDragged:Z

.field public mIsChangedConfiguration:Z

.field public mIsMouseWheelEventSupport:Z

.field public mIsScrollStarted:Z

.field public mIsUnableToDrag:Z

.field public final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/SeslViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLastMotionX:F

.field public mLastMotionY:F

.field public mLastOffset:F

.field public mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

.field public mLeftIncr:I

.field public mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field public mMaximumVelocity:I

.field public mMinimumVelocity:I

.field public mObserver:Landroidx/viewpager/widget/SeslViewPager$PagerObserver;

.field public mOffscreenPageLimit:I

.field public mOnPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

.field public mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPageMargin:I

.field public mPageTransformer:Landroidx/viewpager/widget/SeslViewPager$PageTransformer;

.field public mPageTransformerLayerType:I

.field public mPagingTouchSlop:I

.field public mPopulatePending:Z

.field public mRestoredAdapterState:Landroid/os/Parcelable;

.field public mRestoredClassLoader:Ljava/lang/ClassLoader;

.field public mRestoredCurItem:I

.field public mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

.field public mScaledTouchSlop:I

.field public mScrollState:I

.field public mScroller:Landroid/widget/Scroller;

.field public mScrollingCacheEnabled:Z

.field public final mTempItem:Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTopPageBounds:I

.field public mTouchSlop:I

.field public mTouchSlopRatio:F

.field public mUsePagingTouchSlopForStylus:Z

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/SeslViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/SeslViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroidx/viewpager/widget/SeslViewPager;->LAYOUT_ATTRS:[I

    .line 86
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$2;

    invoke-direct {v0}, Landroidx/viewpager/widget/SeslViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/SeslViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroidx/viewpager/widget/SeslViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/SeslViewPager;->sPositionComparator:Landroidx/viewpager/widget/SeslViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;

    .line 162
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mDragInGutterEnabled:Z

    .line 105
    new-instance v2, Landroidx/viewpager/widget/SeslViewPager$3;

    invoke-direct {v2, p0}, Landroidx/viewpager/widget/SeslViewPager$3;-><init>(Landroidx/viewpager/widget/SeslViewPager;)V

    iput-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 114
    iput-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    .line 115
    const v2, -0x800001

    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    .line 123
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsChangedConfiguration:Z

    .line 124
    iput-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsMouseWheelEventSupport:Z

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 130
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    .line 132
    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftIncr:I

    .line 137
    iput v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mOffscreenPageLimit:I

    .line 143
    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mPagingTouchSlop:I

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 147
    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredCurItem:I

    .line 149
    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mScaledTouchSlop:I

    .line 153
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempItem:Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 157
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlopRatio:F

    .line 158
    iput-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mUsePagingTouchSlopForStylus:Z

    .line 163
    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mScrollState:I

    .line 164
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->initViewPager()V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mDragInGutterEnabled:Z

    .line 105
    new-instance v2, Landroidx/viewpager/widget/SeslViewPager$3;

    invoke-direct {v2, p0}, Landroidx/viewpager/widget/SeslViewPager$3;-><init>(Landroidx/viewpager/widget/SeslViewPager;)V

    iput-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 114
    iput-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    .line 115
    const v2, -0x800001

    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    .line 123
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsChangedConfiguration:Z

    .line 124
    iput-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsMouseWheelEventSupport:Z

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 130
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    .line 132
    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftIncr:I

    .line 137
    iput v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mOffscreenPageLimit:I

    .line 143
    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mPagingTouchSlop:I

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 147
    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredCurItem:I

    .line 149
    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mScaledTouchSlop:I

    .line 153
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempItem:Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 157
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlopRatio:F

    .line 158
    iput-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mUsePagingTouchSlopForStylus:Z

    .line 169
    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mScrollState:I

    .line 170
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->initViewPager()V

    .line 171
    return-void
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 3156
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 3157
    return p1

    .line 3159
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static constrain(III)I
    .locals 1
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 3149
    if-ge p0, p1, :cond_0

    .line 3150
    return p1

    .line 3152
    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private getClientWidth()I
    .locals 2

    .line 174
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static isDecorView(Landroid/view/View;)Z
    .locals 2
    .param p0, "var0"    # Landroid/view/View;

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/viewpager/widget/SeslViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 182
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 185
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 189
    iget-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 190
    iput-boolean p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mScrollingCacheEnabled:Z

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
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

    .line 197
    .local p1, "var1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_5

    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 199
    .local v0, "var4":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getDescendantFocusability()I

    move-result v1

    .line 200
    .local v1, "var5":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 201
    const/4 v2, 0x0

    .local v2, "var6":I
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 202
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 203
    .local v3, "var7":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 204
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/SeslViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v4

    .line 205
    .local v4, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 206
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 201
    .end local v3    # "var7":Landroid/view/View;
    .end local v4    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "var6":I
    :cond_1
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 213
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 214
    return-void

    .line 217
    :cond_3
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 218
    return-void

    .line 221
    :cond_4
    if-eqz p1, :cond_5

    .line 222
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v0    # "var4":I
    .end local v1    # "var5":I
    :cond_5
    return-void
.end method

.method public addNewItem(II)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 230
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;-><init>()V

    .line 231
    .local v0, "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iput p1, v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 232
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 233
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    .line 234
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 235
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :goto_0
    return-object v0
.end method

.method public addOnAdapterChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;

    .line 244
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 248
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 252
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 256
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p1, "var1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, "var3":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v2

    .line 265
    .local v2, "var4":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 266
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 261
    .end local v1    # "var3":Landroid/view/View;
    .end local v2    # "var4":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "var2":I
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/ViewGroup$LayoutParams;

    .line 274
    move-object v0, p3

    .line 275
    .local v0, "var4":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/SeslViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/SeslViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 279
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 280
    .local v1, "var5":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    iget-boolean v2, v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroidx/viewpager/widget/SeslViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    .line 281
    iget-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mInLayout:Z

    if-eqz v2, :cond_3

    .line 282
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot add pager decor view during layout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_2
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->needsMeasure:Z

    .line 287
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/SeslViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 289
    :cond_3
    invoke-super {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 292
    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 9
    .param p1, "var1"    # I

    .line 295
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, "var2":Landroid/view/View;
    const/4 v1, 0x0

    .line 297
    .local v1, "var3":Z
    const/4 v2, 0x0

    .line 299
    .local v2, "var4":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 300
    move-object v3, v2

    .local v3, "var5":Landroid/view/View;
    goto :goto_3

    .line 303
    .end local v3    # "var5":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_4

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 308
    .local v3, "var9":Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "var6":Z
    goto :goto_1

    .line 313
    .end local v4    # "var6":Z
    :cond_1
    if-ne v3, p0, :cond_3

    .line 314
    const/4 v4, 0x1

    .line 315
    .restart local v4    # "var6":Z
    nop

    .line 321
    :goto_1
    if-nez v4, :cond_4

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v5, "var7":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_2
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 326
    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2

    .line 330
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v6, "var11":Ljava/lang/StringBuilder;
    const-string v7, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ViewPager"

    invoke-static {v8, v7}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    move-object v7, v2

    .line 335
    .local v7, "var5":Landroid/view/View;
    move-object v3, v7

    goto :goto_3

    .line 318
    .end local v4    # "var6":Z
    .end local v5    # "var7":Ljava/lang/StringBuilder;
    .end local v6    # "var11":Ljava/lang/StringBuilder;
    .end local v7    # "var5":Landroid/view/View;
    :cond_3
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    .line 339
    .end local v3    # "var9":Landroid/view/ViewParent;
    :cond_4
    move-object v3, v0

    .line 343
    .local v3, "var5":Landroid/view/View;
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 344
    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v2, :cond_9

    if-eq v2, v3, :cond_9

    .line 347
    if-ne p1, v5, :cond_6

    .line 348
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v2}, Landroidx/viewpager/widget/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 349
    .local v4, "var10":I
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v3}, Landroidx/viewpager/widget/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 350
    .local v5, "var8":I
    if-eqz v3, :cond_5

    if-lt v4, v5, :cond_5

    .line 351
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->pageLeft()Z

    move-result v1

    goto :goto_4

    .line 353
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_4

    .line 355
    .end local v4    # "var10":I
    .end local v5    # "var8":I
    :cond_6
    if-ne p1, v4, :cond_8

    .line 356
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v2}, Landroidx/viewpager/widget/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 357
    .restart local v4    # "var10":I
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v3}, Landroidx/viewpager/widget/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 358
    .restart local v5    # "var8":I
    if-eqz v3, :cond_7

    if-gt v4, v5, :cond_7

    .line 359
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->pageRight()Z

    move-result v1

    goto :goto_4

    .line 361
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 364
    .end local v4    # "var10":I
    .end local v5    # "var8":I
    :cond_8
    :goto_4
    goto :goto_5

    :cond_9
    if-eq p1, v5, :cond_b

    const/4 v5, 0x1

    if-eq p1, v5, :cond_b

    .line 365
    if-eq p1, v4, :cond_a

    const/4 v4, 0x2

    if-ne p1, v4, :cond_c

    .line 366
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->pageRight()Z

    move-result v1

    goto :goto_5

    .line 369
    :cond_b
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->pageLeft()Z

    move-result v1

    .line 372
    :cond_c
    :goto_5
    if-eqz v1, :cond_d

    .line 373
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/SeslViewPager;->playSoundEffect(I)V

    .line 376
    :cond_d
    return v1
.end method

.method public final calculatePageOffsets(Landroidx/viewpager/widget/SeslViewPager$ItemInfo;ILandroidx/viewpager/widget/SeslViewPager$ItemInfo;)V
    .locals 10
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 380
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 381
    .local v0, "var4":I
    invoke-direct {p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v1

    .line 383
    .local v1, "var5":I
    if-lez v1, :cond_0

    .line 384
    iget v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .local v2, "var6":F
    goto :goto_0

    .line 386
    .end local v2    # "var6":F
    :cond_0
    const/4 v2, 0x0

    .line 393
    .restart local v2    # "var6":F
    :goto_0
    if-eqz p3, :cond_9

    .line 394
    iget v1, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 395
    iget v3, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 396
    .local v3, "var7":I
    if-ge v1, v3, :cond_5

    .line 397
    const/4 v3, 0x0

    .line 398
    iget v4, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    iget v5, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 401
    .local v4, "var8":F
    :goto_1
    add-int/lit8 v5, v1, 0x1

    .line 402
    .local v5, "var9":I
    iget v6, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-gt v5, v6, :cond_9

    iget-object v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 403
    goto/16 :goto_7

    .line 406
    :cond_1
    iget-object v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object p3, v6

    check-cast p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 409
    :goto_2
    move v1, v5

    .line 410
    move v6, v4

    .line 411
    .local v6, "var10":F
    iget v7, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-gt v5, v7, :cond_2

    .line 412
    goto :goto_3

    .line 415
    :cond_2
    move v1, v5

    .line 416
    move v6, v4

    .line 417
    iget-object v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v3, v7, :cond_4

    .line 418
    nop

    .line 425
    :goto_3
    iget v7, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-ge v1, v7, :cond_3

    .line 426
    iget-object v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v7, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v7

    add-float/2addr v7, v2

    add-float/2addr v6, v7

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 430
    :cond_3
    iput v6, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 431
    iget v7, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v6

    add-float v4, v7, v2

    goto :goto_1

    .line 421
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 422
    iget-object v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object p3, v7

    check-cast p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    goto :goto_2

    .line 433
    .end local v4    # "var8":F
    .end local v5    # "var9":I
    .end local v6    # "var10":F
    :cond_5
    if-le v1, v3, :cond_9

    .line 434
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 435
    .end local v3    # "var7":I
    .local v4, "var7":I
    iget v3, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 436
    .local v3, "var8":F
    add-int/lit8 v1, v1, -0x1

    .line 438
    :goto_4
    iget v5, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-lt v1, v5, :cond_9

    if-ltz v4, :cond_9

    .line 439
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object p3, v5

    check-cast p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 442
    :goto_5
    move v5, v1

    .line 443
    .restart local v5    # "var9":I
    move v6, v3

    .line 444
    .restart local v6    # "var10":F
    iget v7, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-lt v1, v7, :cond_6

    .line 445
    goto :goto_6

    .line 448
    :cond_6
    move v5, v1

    .line 449
    move v6, v3

    .line 450
    if-gtz v4, :cond_8

    .line 451
    nop

    .line 458
    :goto_6
    iget v7, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-le v5, v7, :cond_7

    .line 459
    iget-object v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v7, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v7

    add-float/2addr v7, v2

    sub-float/2addr v6, v7

    .line 460
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 463
    :cond_7
    iget v7, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v2

    sub-float v3, v6, v7

    .line 464
    iput v3, p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 465
    add-int/lit8 v1, v5, -0x1

    goto :goto_4

    .line 454
    :cond_8
    add-int/lit8 v4, v4, -0x1

    .line 455
    iget-object v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object p3, v7

    check-cast p3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    goto :goto_5

    .line 470
    .end local v3    # "var8":F
    .end local v4    # "var7":I
    .end local v5    # "var9":I
    .end local v6    # "var10":F
    :cond_9
    :goto_7
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 471
    .local v3, "var9":I
    iget v4, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 472
    .local v4, "var8":F
    iget v5, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 473
    .local v5, "var7":I
    add-int/lit8 v1, v5, -0x1

    .line 474
    if-nez v5, :cond_a

    .line 475
    move v6, v4

    .restart local v6    # "var10":F
    goto :goto_8

    .line 477
    .end local v6    # "var10":F
    :cond_a
    const v6, -0x800001

    .line 480
    .restart local v6    # "var10":F
    :goto_8
    iput v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    .line 481
    iget v5, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 482
    add-int/lit8 v0, v0, -0x1

    .line 483
    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_b

    .line 484
    iget v8, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    iget v9, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v7

    .end local v6    # "var10":F
    .local v8, "var10":F
    goto :goto_9

    .line 486
    .end local v8    # "var10":F
    .restart local v6    # "var10":F
    :cond_b
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 489
    .end local v6    # "var10":F
    .restart local v8    # "var10":F
    :goto_9
    iput v8, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    .line 491
    add-int/lit8 v5, p2, -0x1

    :goto_a
    if-ltz v5, :cond_e

    .line 492
    iget-object v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 495
    .end local p3    # "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v6, "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :goto_b
    iget p3, v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 496
    .local p3, "var11":I
    if-gt v1, p3, :cond_d

    .line 497
    iget v9, v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 498
    iput v4, v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 499
    if-nez p3, :cond_c

    .line 500
    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    .line 503
    :cond_c
    add-int/lit8 v5, v5, -0x1

    .line 504
    nop

    .line 491
    .end local p3    # "var11":I
    add-int/lit8 v1, v1, -0x1

    move-object p3, v6

    goto :goto_a

    .line 507
    .restart local p3    # "var11":I
    :cond_d
    iget-object v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v9, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v9

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 508
    nop

    .end local p3    # "var11":I
    add-int/lit8 v1, v1, -0x1

    .line 509
    goto :goto_b

    .line 512
    .end local v6    # "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local p3, "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_e
    iget v6, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    iget v9, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v9

    add-float/2addr v6, v2

    .line 513
    .end local v4    # "var8":F
    .local v6, "var8":F
    iget v4, p1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 514
    .end local v5    # "var7":I
    .local v4, "var7":I
    add-int/lit8 v1, p2, 0x1

    .line 516
    move p2, v4

    :goto_c
    if-ge v1, v3, :cond_11

    .line 517
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 520
    .end local p1    # "var1":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v5, "var1":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :goto_d
    iget v4, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 521
    if-lt p2, v4, :cond_10

    .line 522
    if-ne v4, v0, :cond_f

    .line 523
    iget p1, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr p1, v6

    sub-float/2addr p1, v7

    iput p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    .line 526
    :cond_f
    iput v6, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 527
    iget p1, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr p1, v2

    add-float/2addr v6, p1

    .line 528
    add-int/lit8 v1, v1, 0x1

    .line 529
    nop

    .line 516
    add-int/lit8 p2, p2, 0x1

    move-object p1, v5

    goto :goto_c

    .line 532
    :cond_10
    iget-object p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v6, p1

    .line 533
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 537
    .end local v5    # "var1":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local p1    # "var1":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_11
    return-void
.end method

.method public canScroll(Landroid/view/View;ZIII)Z
    .locals 18
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Z
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 540
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 541
    .local v1, "var6":Z
    const/4 v2, 0x1

    .line 542
    .local v2, "var7":Z
    if-eqz v1, :cond_2

    .line 543
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 544
    .local v3, "var8":Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 545
    .local v4, "var9":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 547
    .local v5, "var10":I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "var11":I
    :goto_0
    if-ltz v6, :cond_2

    .line 548
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 549
    .local v14, "var12":Landroid/view/View;
    add-int v15, p4, v4

    .line 550
    .local v15, "var13":I
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v15, v8, :cond_1

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v15, v8, :cond_1

    .line 551
    add-int v13, p5, v5

    .line 552
    .local v13, "var14":I
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v13, v8, :cond_0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v13, v8, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v12, v15, v8

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v16, v13, v8

    move-object/from16 v8, p0

    move-object v9, v14

    move/from16 v11, p3

    move/from16 v17, v13

    .end local v13    # "var14":I
    .local v17, "var14":I
    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroidx/viewpager/widget/SeslViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 553
    return v7

    .line 552
    .end local v17    # "var14":I
    .restart local v13    # "var14":I
    :cond_0
    move/from16 v17, v13

    .line 547
    .end local v13    # "var14":I
    .end local v14    # "var12":Landroid/view/View;
    .end local v15    # "var13":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 559
    .end local v3    # "var8":Landroid/view/ViewGroup;
    .end local v4    # "var9":I
    .end local v5    # "var10":I
    .end local v6    # "var11":I
    :cond_2
    if-eqz p2, :cond_3

    move/from16 v3, p3

    neg-int v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 560
    move v4, v2

    .end local p2    # "var2":Z
    .local v4, "var2":Z
    goto :goto_1

    .line 559
    .end local v4    # "var2":Z
    .restart local p2    # "var2":Z
    :cond_3
    move/from16 v3, p3

    .line 562
    :cond_4
    const/4 v4, 0x0

    .line 565
    .end local p2    # "var2":Z
    .restart local v4    # "var2":Z
    :goto_1
    return v4
.end method

.method public canScrollHorizontally(I)Z
    .locals 7
    .param p1, "var1"    # I

    .line 569
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 570
    .local v0, "var2":Landroidx/viewpager/widget/PagerAdapter;
    const/4 v1, 0x0

    .line 571
    .local v1, "var3":Z
    const/4 v2, 0x0

    .line 572
    .local v2, "var4":Z
    if-nez v0, :cond_0

    .line 573
    const/4 v3, 0x0

    return v3

    .line 575
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v3

    .line 576
    .local v3, "var5":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v4

    .line 577
    .local v4, "var6":I
    if-gez p1, :cond_2

    .line 578
    int-to-float v5, v3

    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le v4, v5, :cond_1

    .line 579
    const/4 v2, 0x1

    .line 582
    :cond_1
    return v2

    .line 584
    :cond_2
    move v2, v1

    .line 585
    if-lez p1, :cond_3

    .line 586
    move v2, v1

    .line 587
    int-to-float v5, v3

    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-ge v4, v5, :cond_3

    .line 588
    const/4 v2, 0x1

    .line 592
    :cond_3
    return v2
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 599
    instance-of v0, p1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 602
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 605
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public final completeScroll(Z)V
    .locals 7
    .param p1, "var1"    # Z

    .line 610
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 611
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 613
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 616
    .restart local v0    # "var2":Z
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 617
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 618
    iget-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 619
    iget-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 620
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v2

    .line 621
    .local v2, "var3":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollY()I

    move-result v3

    .line 622
    .local v3, "var4":I
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 623
    .local v4, "var5":I
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 624
    .local v5, "var6":I
    if-ne v2, v4, :cond_1

    if-eq v3, v5, :cond_2

    .line 625
    :cond_1
    invoke-virtual {p0, v4, v5}, Landroidx/viewpager/widget/SeslViewPager;->scrollTo(II)V

    .line 626
    if-eq v4, v2, :cond_2

    .line 627
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/SeslViewPager;->pageScrolled(I)Z

    .line 633
    .end local v2    # "var3":I
    .end local v3    # "var4":I
    .end local v4    # "var5":I
    .end local v5    # "var6":I
    :cond_2
    iput-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mPopulatePending:Z

    .line 634
    const/4 v2, 0x0

    .line 635
    .local v2, "var10":B
    move v3, v0

    .line 637
    .local v3, "var9":Z
    move v4, v2

    .local v4, "var8":I
    :goto_1
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 638
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 639
    .local v5, "var7":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget-boolean v6, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->scrolling:Z

    if-eqz v6, :cond_3

    .line 640
    iput-boolean v1, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->scrolling:Z

    .line 641
    const/4 v3, 0x1

    .line 637
    .end local v5    # "var7":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 645
    .end local v4    # "var8":I
    :cond_4
    if-eqz v3, :cond_6

    .line 646
    if-eqz p1, :cond_5

    .line 647
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 649
    :cond_5
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 653
    :cond_6
    :goto_2
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsScrollStarted:Z

    .line 657
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v0

    .line 659
    .local v0, "var1":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollY()I

    move-result v1

    .line 660
    .local v1, "var2":I
    iget-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 661
    .local v2, "var3":I
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 662
    .local v3, "var4":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 663
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager/widget/SeslViewPager;->scrollTo(II)V

    .line 664
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 665
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 666
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroidx/viewpager/widget/SeslViewPager;->scrollTo(II)V

    .line 670
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 671
    .end local v0    # "var1":I
    .end local v1    # "var2":I
    .end local v2    # "var3":I
    .end local v3    # "var4":I
    goto :goto_0

    .line 672
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->completeScroll(Z)V

    .line 674
    :goto_0
    return-void
.end method

.method public dataSetChanged()V
    .locals 17

    .line 677
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 678
    .local v1, "var1":I
    iput v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mExpectedAdapterCount:I

    .line 680
    iget-object v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v0, Landroidx/viewpager/widget/SeslViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    iget-object v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 681
    const/4 v2, 0x1

    .local v2, "var2":Z
    goto :goto_0

    .line 683
    .end local v2    # "var2":Z
    :cond_0
    const/4 v2, 0x0

    .line 686
    .restart local v2    # "var2":Z
    :goto_0
    iget v3, v0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 687
    .local v3, "var3":I
    move v5, v2

    .line 688
    .local v5, "var4":Z
    move v6, v3

    .line 689
    .local v6, "var12":I
    const/4 v7, 0x0

    .line 692
    .local v7, "var5":I
    move v3, v7

    :goto_1
    iget-object v8, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    if-ge v7, v8, :cond_7

    .line 693
    iget-object v8, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 694
    .local v8, "var6":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget-object v10, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v11, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v10

    .line 697
    .local v10, "var7":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 698
    move v9, v7

    .line 699
    .local v9, "var8":I
    move v11, v3

    .line 700
    .local v11, "var9":I
    move v12, v6

    .local v12, "var10":I
    goto :goto_3

    .line 703
    .end local v9    # "var8":I
    .end local v11    # "var9":I
    .end local v12    # "var10":I
    :cond_1
    const/4 v11, -0x2

    if-ne v10, v11, :cond_3

    .line 704
    iget-object v11, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 705
    add-int/lit8 v11, v7, -0x1

    .line 706
    .restart local v11    # "var9":I
    move v12, v3

    .line 707
    .local v12, "var8":I
    if-nez v3, :cond_2

    .line 708
    iget-object v13, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v13, v0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 709
    const/4 v12, 0x1

    .line 712
    :cond_2
    iget-object v13, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v14, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget-object v15, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v13, v0, v14, v15}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 713
    iget v13, v0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 714
    .local v13, "var10":I
    move v7, v11

    .line 715
    move v3, v12

    .line 716
    iget v14, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-ne v13, v14, :cond_6

    .line 717
    add-int/lit8 v14, v1, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 718
    move v3, v12

    .line 719
    move v7, v11

    goto :goto_2

    .line 722
    .end local v11    # "var9":I
    .end local v12    # "var8":I
    .end local v13    # "var10":I
    :cond_3
    iget v9, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 723
    .local v9, "var11":I
    move v11, v7

    .line 724
    .local v11, "var8":I
    move v12, v3

    .line 725
    .local v12, "var9":I
    move v13, v6

    .line 726
    .restart local v13    # "var10":I
    if-ne v9, v10, :cond_4

    .line 727
    move v9, v11

    move v11, v12

    move v12, v13

    goto :goto_3

    .line 730
    :cond_4
    iget v14, v0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-ne v9, v14, :cond_5

    .line 731
    move v6, v10

    .line 734
    :cond_5
    iput v10, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    .line 737
    .end local v9    # "var11":I
    .local v11, "var9":I
    .local v12, "var8":I
    :cond_6
    :goto_2
    const/4 v5, 0x1

    .line 738
    move v9, v7

    .line 739
    .end local v12    # "var8":I
    .local v9, "var8":I
    move v11, v3

    .line 740
    move v12, v6

    .line 744
    .end local v13    # "var10":I
    .local v12, "var10":I
    :goto_3
    add-int/lit8 v7, v9, 0x1

    .line 745
    move v3, v11

    .line 692
    .end local v8    # "var6":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v9    # "var8":I
    .end local v10    # "var7":I
    .end local v11    # "var9":I
    move v6, v12

    goto :goto_1

    .line 748
    .end local v12    # "var10":I
    :cond_7
    if-eqz v3, :cond_8

    .line 749
    iget-object v8, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8, v0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 752
    :cond_8
    iget-object v8, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v10, Landroidx/viewpager/widget/SeslViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 753
    if-eqz v5, :cond_b

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v7

    .line 756
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v7, :cond_a

    .line 757
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 758
    .local v8, "var13":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    iget-boolean v10, v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    .line 759
    const/4 v10, 0x0

    iput v10, v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->widthFactor:F

    .line 756
    .end local v8    # "var13":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 763
    :cond_a
    invoke-virtual {v0, v6, v9, v4}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItemInternal(IZZ)V

    .line 764
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->requestLayout()V

    .line 767
    :cond_b
    return-void
.end method

.method public final determineTargetPage(IFII)I
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # F
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 770
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_1

    .line 771
    if-lez p3, :cond_0

    .line 772
    const/4 p3, 0x0

    goto :goto_0

    .line 774
    :cond_0
    iget p3, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftIncr:I

    .line 777
    :goto_0
    sub-int/2addr p1, p3

    goto :goto_2

    .line 780
    :cond_1
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-lt p1, v0, :cond_2

    .line 781
    const v0, 0x3ecccccd    # 0.4f

    .local v0, "var5":F
    goto :goto_1

    .line 783
    .end local v0    # "var5":F
    :cond_2
    const v0, 0x3f19999a    # 0.6f

    .line 786
    .restart local v0    # "var5":F
    :goto_1
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftIncr:I

    add-float v2, p2, v0

    float-to-int v2, v2

    mul-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 789
    .end local v0    # "var5":F
    :goto_2
    move p3, p1

    .line 790
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 791
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 792
    .local v0, "var6":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 793
    .local v1, "var7":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 794
    .local v2, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget v3, v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget v4, v2, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    invoke-static {p1, v3, v4}, Landroidx/viewpager/widget/SeslViewPager;->constrain(III)I

    move-result p3

    .line 797
    .end local v0    # "var6":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v1    # "var7":Ljava/util/ArrayList;
    .end local v2    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_3
    return p3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .line 802
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/SeslViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 805
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 808
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public final dispatchOnPageScrolled(IFI)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # F
    .param p3, "var3"    # I

    .line 812
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 813
    .local v0, "var4":Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;
    if-eqz v0, :cond_0

    .line 814
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 817
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 818
    .local v1, "var7":Ljava/util/List;
    if-eqz v1, :cond_2

    .line 819
    const/4 v2, 0x0

    .line 821
    .local v2, "var5":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "var6":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 822
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 823
    if-eqz v0, :cond_1

    .line 824
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 821
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    .end local v2    # "var5":I
    .end local v3    # "var6":I
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 830
    if-eqz v0, :cond_3

    .line 831
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 834
    :cond_3
    return-void
.end method

.method public final dispatchOnPageSelected(I)V
    .locals 5
    .param p1, "var1"    # I

    .line 837
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 838
    .local v0, "var2":Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;
    if-eqz v0, :cond_0

    .line 839
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 842
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 843
    .local v1, "var5":Ljava/util/List;
    if-eqz v1, :cond_2

    .line 844
    const/4 v2, 0x0

    .line 846
    .local v2, "var3":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "var4":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 847
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 848
    if-eqz v0, :cond_1

    .line 849
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 846
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    .end local v2    # "var3":I
    .end local v3    # "var4":I
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 855
    if-eqz v0, :cond_3

    .line 856
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 859
    :cond_3
    return-void
.end method

.method public final dispatchOnScrollStateChanged(I)V
    .locals 5
    .param p1, "var1"    # I

    .line 862
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 863
    .local v0, "var2":Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;
    if-eqz v0, :cond_0

    .line 864
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 867
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 868
    .local v1, "var5":Ljava/util/List;
    if-eqz v1, :cond_2

    .line 869
    const/4 v2, 0x0

    .line 871
    .local v2, "var3":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "var4":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 872
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 873
    if-eqz v0, :cond_1

    .line 874
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 871
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 879
    .end local v2    # "var3":I
    .end local v3    # "var4":I
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 880
    if-eqz v0, :cond_3

    .line 881
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 884
    :cond_3
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 888
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 889
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 891
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v0

    .line 893
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 894
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 895
    .local v2, "var4":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 896
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v3

    .line 897
    .local v3, "var5":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 898
    const/4 v4, 0x1

    return v4

    .line 893
    .end local v2    # "var4":Landroid/view/View;
    .end local v3    # "var5":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    .end local v1    # "var3":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "var1"    # F

    .line 908
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 915
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 916
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getOverScrollMode()I

    move-result v0

    .line 917
    .local v0, "var2":I
    const/4 v1, 0x0

    .line 918
    .local v1, "var3":Z
    const/4 v2, 0x0

    .line 919
    .local v2, "var4":Z
    if-eqz v0, :cond_2

    .line 920
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 921
    goto :goto_0

    .line 924
    :cond_0
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 925
    .local v4, "var5":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    if-gt v5, v3, :cond_2

    .line 968
    .end local v0    # "var2":I
    .end local v2    # "var4":Z
    .end local v4    # "var5":Landroidx/viewpager/widget/PagerAdapter;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->finish()V

    .line 969
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->finish()V

    goto/16 :goto_3

    .line 931
    .restart local v0    # "var2":I
    .restart local v2    # "var4":Z
    :cond_2
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    const/high16 v4, 0x4b800000    # 1.6777216E7f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_4

    .line 932
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 933
    .local v3, "var9":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 934
    .local v6, "var10":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getWidth()I

    move-result v0

    .line 935
    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 936
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 937
    neg-int v7, v6

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    add-float/2addr v8, v5

    neg-float v8, v8

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 939
    :cond_3
    neg-int v7, v6

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    int-to-float v9, v0

    mul-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 942
    :goto_1
    iget-object v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v7, v6, v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 943
    iget-object v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v7, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    or-int/lit8 v2, v7, 0x0

    .line 944
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 947
    .end local v3    # "var9":I
    .end local v6    # "var10":I
    :cond_4
    move v1, v2

    .line 948
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 949
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 950
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getWidth()I

    move-result v3

    .line 951
    .local v3, "var6":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getHeight()I

    move-result v6

    .line 952
    .local v6, "var9":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingTop()I

    move-result v7

    .line 953
    .local v7, "var7":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingBottom()I

    move-result v8

    .line 954
    .local v8, "var8":I
    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 955
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 956
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    int-to-float v10, v3

    mul-float/2addr v9, v10

    sub-float/2addr v9, v4

    invoke-virtual {p1, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 958
    :cond_5
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    add-float/2addr v9, v5

    neg-float v5, v9

    int-to-float v9, v3

    mul-float/2addr v5, v9

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 961
    :goto_2
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    sub-int v5, v6, v7

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 962
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    or-int v1, v2, v4

    .line 963
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 972
    .end local v0    # "var2":I
    .end local v2    # "var4":Z
    .end local v3    # "var6":I
    .end local v6    # "var9":I
    .end local v7    # "var7":I
    .end local v8    # "var8":I
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 973
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 976
    :cond_7
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 979
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 980
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 981
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 985
    :cond_0
    return-void
.end method

.method public final enableLayers(Z)V
    .locals 5
    .param p1, "var1"    # Z

    .line 988
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v0

    .line 990
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 992
    if-eqz p1, :cond_0

    .line 993
    iget v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageTransformerLayerType:I

    .local v2, "var4":I
    goto :goto_1

    .line 995
    .end local v2    # "var4":I
    :cond_0
    const/4 v2, 0x0

    .line 998
    .restart local v2    # "var4":I
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 990
    .end local v2    # "var4":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1001
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method

.method public final endDrag()V
    .locals 2

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    .line 1005
    iput-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsUnableToDrag:Z

    .line 1006
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1007
    .local v0, "var1":Landroid/view/VelocityTracker;
    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1009
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1012
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .line 1016
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 1017
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1018
    .local v0, "var2":I
    const/16 v1, 0x15

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 1019
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->pageLeft()Z

    move-result v1

    .local v1, "var3":Z
    goto :goto_0

    .line 1022
    .end local v1    # "var3":Z
    :cond_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->arrowScroll(I)Z

    move-result v1

    .line 1025
    .restart local v1    # "var3":Z
    :goto_0
    return v1

    .line 1028
    .end local v1    # "var3":Z
    :cond_1
    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 1029
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1030
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->pageRight()Z

    move-result v1

    .restart local v1    # "var3":Z
    goto :goto_1

    .line 1032
    .end local v1    # "var3":Z
    :cond_2
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->arrowScroll(I)Z

    move-result v1

    .line 1035
    .restart local v1    # "var3":Z
    :goto_1
    return v1

    .line 1038
    .end local v1    # "var3":Z
    :cond_3
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_5

    .line 1039
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1040
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->arrowScroll(I)Z

    move-result v1

    .line 1041
    .restart local v1    # "var3":Z
    return v1

    .line 1044
    .end local v1    # "var3":Z
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1045
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->arrowScroll(I)Z

    move-result v1

    .line 1046
    .restart local v1    # "var3":Z
    return v1

    .line 1051
    .end local v0    # "var2":I
    .end local v1    # "var3":Z
    :cond_5
    const/4 v0, 0x0

    .line 1052
    .local v0, "var3":Z
    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1056
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    invoke-direct {v0}, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "var1"    # Landroid/util/AttributeSet;

    .line 1060
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1064
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 1068
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1072
    move v0, p2

    .line 1073
    .local v0, "var3":I
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mDrawingOrder:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1074
    add-int/lit8 v1, p1, -0x1

    sub-int v0, v1, p2

    .line 1077
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    iget v1, v1, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->childIndex:I

    return v1
.end method

.method public final getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "var1"    # Landroid/graphics/Rect;
    .param p2, "var2"    # Landroid/view/View;

    .line 1081
    move-object v0, p1

    .line 1082
    .local v0, "var3":Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 1083
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 1086
    :cond_0
    if-nez p2, :cond_1

    .line 1087
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1088
    return-object v0

    .line 1090
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1091
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1092
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1093
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1096
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "var4":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_2

    .line 1097
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 1098
    .local v2, "var5":Landroid/view/ViewGroup;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1099
    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1100
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1101
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1096
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 1104
    .end local v1    # "var4":Landroid/view/ViewParent;
    .end local v2    # "var5":Landroid/view/ViewGroup;
    :cond_2
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1109
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 1113
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 1117
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    return v0
.end method

.method public infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 1122
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1123
    .local v0, "var2":Landroid/view/ViewParent;
    if-ne v0, p0, :cond_0

    .line 1124
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/SeslViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v1

    return-object v1

    .line 1127
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1128
    const/4 v1, 0x0

    return-object v1

    .line 1131
    :cond_1
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 1132
    .end local v0    # "var2":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method public infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .line 1136
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1137
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 1138
    .local v1, "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1139
    return-object v1

    .line 1136
    .end local v1    # "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1143
    .end local v0    # "var2":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final infoForCurrentScrollPosition()Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .locals 15

    .line 1147
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->seslGetScrollStart()I

    move-result v0

    .line 1148
    .local v0, "var1":I
    invoke-direct {p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v1

    .line 1150
    .local v1, "var2":I
    if-lez v1, :cond_0

    .line 1151
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .local v2, "var3":F
    goto :goto_0

    .line 1153
    .end local v2    # "var3":F
    :cond_0
    const/4 v2, 0x0

    .line 1157
    .restart local v2    # "var3":F
    :goto_0
    if-lez v1, :cond_1

    .line 1158
    iget v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .local v3, "var4":F
    goto :goto_1

    .line 1160
    .end local v3    # "var4":F
    :cond_1
    const/4 v3, 0x0

    .line 1163
    .restart local v3    # "var4":F
    :goto_1
    const/4 v4, 0x0

    .line 1164
    .local v4, "var5":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    const/4 v5, 0x0

    .line 1165
    .local v5, "var6":F
    move v6, v5

    .line 1166
    .local v6, "var7":F
    const/4 v0, 0x0

    .line 1167
    const/4 v7, -0x1

    .line 1170
    .local v7, "var8":I
    const/4 v8, 0x1

    .local v8, "var13":Z
    :goto_2
    iget-object v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_6

    .line 1171
    iget-object v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 1172
    .local v9, "var9":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move v10, v0

    .line 1173
    .local v10, "var10":I
    move-object v11, v9

    .line 1174
    .local v11, "var11":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-nez v8, :cond_2

    .line 1175
    iget v12, v9, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 1176
    .local v12, "var12":I
    add-int/lit8 v7, v7, 0x1

    .line 1177
    move v10, v0

    .line 1178
    move-object v11, v9

    .line 1179
    if-eq v12, v7, :cond_2

    .line 1180
    iget-object v11, p0, Landroidx/viewpager/widget/SeslViewPager;->mTempItem:Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 1181
    add-float v13, v5, v6

    add-float/2addr v13, v3

    iput v13, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 1182
    iput v7, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 1183
    iget-object v13, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v14, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    .line 1184
    add-int/lit8 v10, v0, -0x1

    .line 1188
    .end local v12    # "var12":I
    :cond_2
    iget v5, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 1189
    iget v6, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    .line 1190
    if-nez v8, :cond_3

    cmpg-float v12, v2, v5

    if-gez v12, :cond_3

    .line 1191
    return-object v4

    .line 1194
    :cond_3
    add-float v12, v6, v5

    add-float/2addr v12, v3

    cmpg-float v12, v2, v12

    if-ltz v12, :cond_5

    iget-object v12, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v10, v12, :cond_4

    goto :goto_3

    .line 1198
    :cond_4
    iget v7, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 1199
    iget v6, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    .line 1200
    add-int/lit8 v0, v10, 0x1

    .line 1201
    const/4 v8, 0x0

    .line 1170
    .end local v9    # "var9":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v10    # "var10":I
    move-object v4, v11

    goto :goto_2

    .line 1195
    .restart local v9    # "var9":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v10    # "var10":I
    :cond_5
    :goto_3
    return-object v11

    .line 1204
    .end local v8    # "var13":Z
    .end local v9    # "var9":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v10    # "var10":I
    .end local v11    # "var11":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_6
    return-object v4
.end method

.method public infoForPosition(I)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .locals 3
    .param p1, "var1"    # I

    .line 1208
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1209
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 1210
    .local v1, "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget v2, v1, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1211
    return-object v1

    .line 1208
    .end local v1    # "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1215
    .end local v0    # "var2":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public initViewPager()V
    .locals 5

    .line 1220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->setWillNotDraw(Z)V

    .line 1221
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->setDescendantFocusability(I)V

    .line 1222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->setFocusable(Z)V

    .line 1223
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1224
    .local v1, "var1":Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroidx/viewpager/widget/SeslViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1225
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1226
    .local v2, "var2":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1227
    .local v3, "var3":F
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    .line 1228
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mScaledTouchSlop:I

    .line 1229
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mPagingTouchSlop:I

    .line 1230
    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mMinimumVelocity:I

    .line 1231
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mMaximumVelocity:I

    .line 1232
    new-instance v4, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-direct {v4, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 1233
    new-instance v4, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-direct {v4, v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 1234
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v4, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 1235
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v4, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 1236
    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mFlingDistance:I

    .line 1237
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mCloseEnough:I

    .line 1238
    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mDefaultGutterSize:I

    .line 1239
    new-instance v4, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroidx/viewpager/widget/SeslViewPager$MyAccessibilityDelegate;-><init>(Landroidx/viewpager/widget/SeslViewPager;)V

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1240
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1241
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1244
    :cond_0
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$4;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/SeslViewPager$4;-><init>(Landroidx/viewpager/widget/SeslViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1271
    return-void
.end method

.method public final isGutterDrag(FF)Z
    .locals 5
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 1274
    iget-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mDragInGutterEnabled:Z

    .line 1275
    .local v0, "var3":Z
    const/4 v1, 0x0

    .line 1276
    .local v1, "var4":Z
    if-eqz v0, :cond_0

    .line 1277
    const/4 v2, 0x0

    return v2

    .line 1279
    :cond_0
    iget v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mGutterSize:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    const/4 v3, 0x0

    if-gez v2, :cond_1

    cmpg-float v2, p2, v3

    if-gtz v2, :cond_3

    .line 1280
    :cond_1
    move v0, v1

    .line 1281
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getWidth()I

    move-result v2

    iget v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mGutterSize:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 1282
    return v0

    .line 1285
    :cond_2
    move v0, v1

    .line 1286
    cmpl-float v2, p2, v3

    if-ltz v2, :cond_3

    .line 1287
    return v0

    .line 1291
    :cond_3
    const/4 v0, 0x1

    .line 1292
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1297
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    .line 1299
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1302
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1303
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1304
    .local v0, "var1":Landroid/widget/Scroller;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1305
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1308
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1309
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 1312
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1313
    iget v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    if-lez v1, :cond_7

    iget-object v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_7

    .line 1314
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v1

    .line 1315
    .local v1, "var2":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getWidth()I

    move-result v2

    .line 1316
    .local v2, "var3":I
    iget v3, v0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    int-to-float v3, v3

    .line 1317
    .local v3, "var4":F
    int-to-float v4, v2

    .line 1318
    .local v4, "var5":F
    div-float v5, v3, v4

    .line 1319
    .local v5, "var6":F
    iget-object v6, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 1320
    .local v6, "var7":Ljava/util/ArrayList;
    const/4 v7, 0x0

    .line 1321
    .local v7, "var8":I
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 1322
    .local v8, "var14":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget v9, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 1323
    .local v9, "var9":F
    iget-object v10, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1324
    .local v10, "var10":I
    iget v11, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 1326
    .local v11, "var11":I
    iget-object v12, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    iget v12, v12, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .local v12, "var12":I
    :goto_0
    if-ge v11, v12, :cond_6

    .line 1327
    :goto_1
    iget v13, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-le v11, v13, :cond_0

    if-ge v7, v10, :cond_0

    .line 1328
    iget-object v6, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 1329
    add-int/lit8 v7, v7, 0x1

    .line 1330
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v8, v13

    check-cast v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    goto :goto_1

    .line 1333
    :cond_0
    iget v13, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    const/high16 v14, 0x4b800000    # 1.6777216E7f

    if-ne v11, v13, :cond_2

    .line 1334
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1335
    iget v13, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    sub-float/2addr v14, v13

    .end local v9    # "var9":F
    .local v14, "var9":F
    goto :goto_2

    .line 1337
    .end local v14    # "var9":F
    .restart local v9    # "var9":F
    :cond_1
    iget v13, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    iget v14, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    mul-float v14, v13, v4

    .line 1340
    .end local v9    # "var9":F
    .restart local v14    # "var9":F
    :goto_2
    iget v9, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    iget v13, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v13

    add-float/2addr v9, v5

    move v3, v9

    .end local v3    # "var4":F
    .local v9, "var4":F
    goto :goto_4

    .line 1342
    .end local v14    # "var9":F
    .restart local v3    # "var4":F
    .local v9, "var9":F
    :cond_2
    iget-object v13, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v13, v11}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    .line 1343
    .local v13, "var13":F
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1344
    sub-float/2addr v14, v9

    .end local v3    # "var4":F
    .local v14, "var4":F
    goto :goto_3

    .line 1346
    .end local v14    # "var4":F
    .restart local v3    # "var4":F
    :cond_3
    add-float v14, v9, v13

    mul-float/2addr v14, v4

    .line 1349
    .end local v3    # "var4":F
    .restart local v14    # "var4":F
    :goto_3
    add-float v3, v9, v13

    add-float/2addr v3, v5

    .line 1350
    .end local v13    # "var13":F
    .local v3, "var13":F
    move v9, v14

    .line 1351
    move v13, v3

    .line 1354
    .end local v9    # "var9":F
    .local v3, "var4":F
    .local v14, "var9":F
    :goto_4
    iget v9, v0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    int-to-float v9, v9

    add-float/2addr v9, v14

    int-to-float v13, v1

    cmpl-float v9, v9, v13

    if-lez v9, :cond_4

    .line 1355
    iget-object v9, v0, Landroidx/viewpager/widget/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v15, v0, Landroidx/viewpager/widget/SeslViewPager;->mTopPageBounds:I

    move/from16 v16, v4

    .end local v4    # "var5":F
    .local v16, "var5":F
    iget v4, v0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    int-to-float v4, v4

    add-float/2addr v4, v14

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move/from16 v17, v5

    .end local v5    # "var6":F
    .local v17, "var6":F
    iget v5, v0, Landroidx/viewpager/widget/SeslViewPager;->mBottomPageBounds:I

    invoke-virtual {v9, v13, v15, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1356
    iget-object v4, v0, Landroidx/viewpager/widget/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 1354
    .end local v16    # "var5":F
    .end local v17    # "var6":F
    .restart local v4    # "var5":F
    .restart local v5    # "var6":F
    :cond_4
    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v5, p1

    .line 1359
    .end local v4    # "var5":F
    .end local v5    # "var6":F
    .restart local v16    # "var5":F
    .restart local v17    # "var6":F
    :goto_5
    add-int v4, v1, v2

    int-to-float v4, v4

    cmpl-float v4, v14, v4

    if-lez v4, :cond_5

    .line 1360
    goto :goto_6

    .line 1363
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 1326
    move v9, v3

    move/from16 v4, v16

    move/from16 v5, v17

    .end local v14    # "var9":F
    .restart local v9    # "var9":F
    goto/16 :goto_0

    .end local v16    # "var5":F
    .end local v17    # "var6":F
    .restart local v4    # "var5":F
    .restart local v5    # "var6":F
    :cond_6
    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v5, p1

    .end local v4    # "var5":F
    .end local v5    # "var6":F
    .restart local v16    # "var5":F
    .restart local v17    # "var6":F
    goto :goto_6

    .line 1313
    .end local v1    # "var2":I
    .end local v2    # "var3":I
    .end local v3    # "var4":F
    .end local v6    # "var7":Ljava/util/ArrayList;
    .end local v7    # "var8":I
    .end local v8    # "var14":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v9    # "var9":F
    .end local v10    # "var10":I
    .end local v11    # "var11":I
    .end local v12    # "var12":I
    .end local v16    # "var5":F
    .end local v17    # "var6":F
    :cond_7
    move-object/from16 v5, p1

    .line 1367
    :goto_6
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1370
    iget-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsMouseWheelEventSupport:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1371
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1372
    .local v0, "var2":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 1373
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1, v3}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItem(IZ)V

    .line 1374
    return v3

    .line 1377
    :cond_0
    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 1378
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v1, v3}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItem(IZ)V

    .line 1379
    return v3

    .line 1383
    .end local v0    # "var2":F
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1387
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1388
    .local v0, "var2":I
    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v9, 0x1

    if-eq v0, v9, :cond_10

    .line 1389
    if-eqz v0, :cond_1

    .line 1390
    iget-boolean v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 1391
    return v9

    .line 1394
    :cond_0
    iget-boolean v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_1

    .line 1395
    return v8

    .line 1400
    :cond_1
    const/4 v1, 0x2

    if-eqz v0, :cond_a

    .line 1401
    if-eq v0, v1, :cond_2

    .line 1402
    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    .line 1403
    invoke-virtual/range {p0 .. p1}, Landroidx/viewpager/widget/SeslViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 1406
    :cond_2
    iget v0, v6, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    .line 1407
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 1408
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1409
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1410
    .local v10, "var3":F
    iget v2, v6, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    sub-float v11, v10, v2

    .line 1411
    .local v11, "var4":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 1412
    .local v12, "var5":F
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 1413
    .local v13, "var6":F
    iget v2, v6, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionY:F

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 1415
    .local v14, "var7":F
    const/4 v2, 0x0

    sub-float v3, v11, v2

    move v15, v3

    .local v15, "var8":F
    cmpl-float v3, v3, v2

    if-nez v3, :cond_3

    move v1, v8

    goto :goto_0

    :cond_3
    cmpg-float v2, v15, v2

    if-gez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v9

    :goto_0
    move/from16 v16, v1

    .line 1416
    .end local v0    # "var2":I
    .local v16, "var2":I
    if-eqz v16, :cond_5

    iget v0, v6, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    invoke-virtual {v6, v0, v11}, Landroidx/viewpager/widget/SeslViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v2, 0x0

    float-to-int v3, v11

    float-to-int v4, v10

    float-to-int v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/SeslViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1417
    iput v10, v6, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 1418
    iput v13, v6, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionY:F

    .line 1419
    iput-boolean v9, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsUnableToDrag:Z

    .line 1420
    return v8

    .line 1423
    :cond_5
    iget v0, v6, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    int-to-float v1, v0

    cmpl-float v1, v12, v1

    if-lez v1, :cond_7

    iget v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlopRatio:F

    mul-float/2addr v1, v12

    cmpl-float v1, v1, v14

    if-lez v1, :cond_7

    .line 1424
    iput-boolean v9, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    .line 1425
    invoke-virtual {v6, v9}, Landroidx/viewpager/widget/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1426
    invoke-virtual {v6, v9}, Landroidx/viewpager/widget/SeslViewPager;->setScrollState(I)V

    .line 1427
    if-lez v16, :cond_6

    .line 1428
    iget v0, v6, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    move v14, v0

    .end local v14    # "var7":F
    .local v0, "var7":F
    goto :goto_1

    .line 1430
    .end local v0    # "var7":F
    .restart local v14    # "var7":F
    :cond_6
    iget v0, v6, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    move v14, v0

    .line 1433
    :goto_1
    iput v14, v6, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 1434
    iput v13, v6, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionY:F

    .line 1435
    invoke-direct {v6, v9}, Landroidx/viewpager/widget/SeslViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 1436
    :cond_7
    int-to-float v0, v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_8

    .line 1437
    iput-boolean v9, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsUnableToDrag:Z

    .line 1440
    :cond_8
    :goto_2
    iget-boolean v0, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_9

    invoke-virtual {v6, v10}, Landroidx/viewpager/widget/SeslViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1441
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1443
    .end local v10    # "var3":F
    .end local v11    # "var4":F
    .end local v12    # "var5":F
    .end local v13    # "var6":F
    .end local v15    # "var8":F
    :cond_9
    move/from16 v0, v16

    goto :goto_4

    .line 1446
    .end local v14    # "var7":F
    .end local v16    # "var2":I
    .local v0, "var2":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1447
    .local v2, "var7":F
    iput v2, v6, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionX:F

    .line 1448
    iput v2, v6, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 1449
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1450
    iput v2, v6, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionY:F

    .line 1451
    iput v2, v6, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionY:F

    .line 1452
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    .line 1453
    iput-boolean v8, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsUnableToDrag:Z

    .line 1454
    iput-boolean v9, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsScrollStarted:Z

    .line 1455
    iget-boolean v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mUsePagingTouchSlopForStylus:Z

    if-eqz v3, :cond_c

    .line 1456
    const/16 v3, 0x4002

    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1457
    iget v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mPagingTouchSlop:I

    iput v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    goto :goto_3

    .line 1459
    :cond_b
    iget v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mScaledTouchSlop:I

    iput v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    .line 1463
    :cond_c
    :goto_3
    iget-object v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1464
    iget v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mScrollState:I

    if-ne v3, v1, :cond_d

    iget-object v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v6, Landroidx/viewpager/widget/SeslViewPager;->mCloseEnough:I

    if-le v1, v3, :cond_d

    .line 1465
    iget-object v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1466
    iput-boolean v8, v6, Landroidx/viewpager/widget/SeslViewPager;->mPopulatePending:Z

    .line 1467
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->populate()V

    .line 1468
    iput-boolean v9, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    .line 1469
    invoke-virtual {v6, v9}, Landroidx/viewpager/widget/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1470
    invoke-virtual {v6, v9}, Landroidx/viewpager/widget/SeslViewPager;->setScrollState(I)V

    goto :goto_4

    .line 1472
    :cond_d
    invoke-virtual {v6, v8}, Landroidx/viewpager/widget/SeslViewPager;->completeScroll(Z)V

    .line 1473
    iput-boolean v8, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    .line 1477
    .end local v2    # "var7":F
    :cond_e
    :goto_4
    iget-object v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_f

    .line 1478
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1481
    :cond_f
    iget-object v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1482
    iget-boolean v1, v6, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    return v1

    .line 1484
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->resetTouch()Z

    .line 1485
    return v8
.end method

.method public onLayout(ZIIII)V
    .locals 20
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 1491
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v1

    .line 1492
    .local v1, "var6":I
    sub-int v2, p4, p2

    .line 1493
    .local v2, "var7":I
    sub-int v3, p5, p3

    .line 1494
    .local v3, "var8":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingLeft()I

    move-result v4

    .line 1495
    .end local p3    # "var3":I
    .local v4, "var3":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingTop()I

    move-result v5

    .line 1496
    .end local p2    # "var2":I
    .local v5, "var2":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingRight()I

    move-result v6

    .line 1497
    .local v6, "var9":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingBottom()I

    move-result v7

    .line 1498
    .end local p5    # "var5":I
    .local v7, "var5":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v8

    .line 1499
    .local v8, "var10":I
    const/4 v9, 0x0

    .line 1504
    .local v9, "var11":I
    const/4 v10, 0x0

    move v11, v10

    move v10, v9

    move v9, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move/from16 v4, p4

    .end local p4    # "var4":I
    .local v4, "var4":I
    .local v5, "var3":I
    .local v6, "var2":I
    .local v7, "var9":I
    .local v9, "var5":I
    .local v10, "var11":I
    .local v11, "var12":I
    :goto_0
    const/16 v12, 0x8

    if-ge v11, v1, :cond_8

    .line 1505
    invoke-virtual {v0, v11}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1506
    .local v13, "var13":Landroid/view/View;
    move v14, v5

    .line 1507
    .local v14, "var14":I
    move v15, v7

    .line 1508
    .local v15, "var15":I
    move/from16 v16, v6

    .line 1509
    .local v16, "var16":I
    move/from16 v17, v9

    .line 1510
    .local v17, "var17":I
    move v4, v10

    .line 1511
    move/from16 p2, v4

    .end local v4    # "var4":I
    .local p2, "var4":I
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v12, :cond_7

    .line 1512
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 1513
    .local v4, "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    move v14, v5

    .line 1514
    move v15, v7

    .line 1515
    move/from16 v16, v6

    .line 1516
    move/from16 v17, v9

    .line 1517
    move v12, v10

    .line 1518
    .end local p2    # "var4":I
    .local v12, "var4":I
    move/from16 p2, v12

    .end local v12    # "var4":I
    .restart local p2    # "var4":I
    iget-boolean v12, v4, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v12, :cond_6

    .line 1519
    iget v12, v4, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->gravity:I

    .line 1520
    .end local v14    # "var14":I
    .local v12, "var14":I
    and-int/lit8 v14, v12, 0x7

    .line 1521
    .end local p2    # "var4":I
    .local v14, "var4":I
    move-object/from16 p3, v4

    .end local v4    # "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    .local p3, "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    and-int/lit8 v4, v12, 0x70

    .line 1522
    .end local v17    # "var17":I
    .local v4, "var17":I
    move/from16 p4, v12

    .end local v12    # "var14":I
    .local p4, "var14":I
    const/4 v12, 0x1

    if-eq v14, v12, :cond_2

    .line 1523
    const/4 v12, 0x3

    if-eq v14, v12, :cond_1

    .line 1524
    const/4 v12, 0x5

    if-eq v14, v12, :cond_0

    .line 1525
    move v12, v5

    .line 1526
    .end local v14    # "var4":I
    .local v12, "var4":I
    move v14, v5

    .end local p4    # "var14":I
    .local v14, "var14":I
    goto :goto_1

    .line 1528
    .end local v12    # "var4":I
    .local v14, "var4":I
    .restart local p4    # "var14":I
    :cond_0
    sub-int v12, v2, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v12, v12, v17

    .line 1529
    .end local v14    # "var4":I
    .restart local v12    # "var4":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v7, v14

    .line 1530
    move v14, v5

    .end local p4    # "var14":I
    .local v14, "var14":I
    goto :goto_1

    .line 1533
    .end local v12    # "var4":I
    .local v14, "var4":I
    .restart local p4    # "var14":I
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 1534
    .end local p4    # "var14":I
    .local v12, "var14":I
    move v14, v5

    .line 1535
    add-int/2addr v12, v5

    move/from16 v19, v14

    move v14, v12

    move/from16 v12, v19

    goto :goto_1

    .line 1538
    .end local v12    # "var14":I
    .restart local p4    # "var14":I
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v2, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1539
    .end local v14    # "var4":I
    .local v12, "var4":I
    move v14, v5

    .line 1542
    .end local p4    # "var14":I
    .local v14, "var14":I
    :goto_1
    move/from16 p2, v14

    .end local v14    # "var14":I
    .local p2, "var14":I
    const/16 v14, 0x10

    if-eq v4, v14, :cond_5

    .line 1543
    const/16 v14, 0x30

    if-eq v4, v14, :cond_4

    .line 1544
    const/16 v14, 0x50

    if-eq v4, v14, :cond_3

    .line 1545
    move v5, v6

    goto :goto_2

    .line 1547
    :cond_3
    sub-int v14, v3, v9

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v14, v14, v17

    .line 1548
    .end local v5    # "var3":I
    .local v14, "var3":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v9, v5

    move v5, v14

    goto :goto_2

    .line 1551
    .end local v14    # "var3":I
    .restart local v5    # "var3":I
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1552
    move v5, v6

    .line 1553
    add-int/2addr v6, v4

    goto :goto_2

    .line 1556
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v14, v3, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1559
    :goto_2
    add-int/2addr v12, v8

    .line 1560
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v12

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 p4, v4

    .end local v4    # "var17":I
    .local p4, "var17":I
    add-int v4, v5, v17

    invoke-virtual {v13, v12, v5, v14, v4}, Landroid/view/View;->layout(IIII)V

    .line 1561
    add-int/lit8 v4, v10, 0x1

    .line 1562
    .end local v12    # "var4":I
    .local v4, "var4":I
    move/from16 v17, v9

    .line 1563
    .end local p4    # "var17":I
    .restart local v17    # "var17":I
    move/from16 v16, v6

    .line 1564
    move v15, v7

    move/from16 v14, p2

    goto :goto_3

    .line 1518
    .end local p3    # "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    .local v4, "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    .local v14, "var14":I
    .local p2, "var4":I
    :cond_6
    move-object/from16 p3, v4

    .end local v4    # "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    .restart local p3    # "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    move/from16 v4, p2

    goto :goto_3

    .line 1511
    .end local p3    # "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    :cond_7
    move/from16 v4, p2

    .line 1568
    .end local p2    # "var4":I
    .local v4, "var4":I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 1569
    move v5, v14

    .line 1570
    move v7, v15

    .line 1571
    move/from16 v6, v16

    .line 1572
    move/from16 v9, v17

    .line 1504
    .end local v15    # "var15":I
    .end local v16    # "var16":I
    .end local v17    # "var17":I
    move v10, v4

    goto/16 :goto_0

    .line 1575
    .end local v11    # "var12":I
    .end local v13    # "var13":Landroid/view/View;
    .end local v14    # "var14":I
    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_e

    .line 1576
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1577
    .restart local v13    # "var13":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_d

    .line 1578
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 1579
    .local v14, "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    iget-boolean v15, v14, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_c

    .line 1580
    invoke-virtual {v0, v13}, Landroidx/viewpager/widget/SeslViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v15

    .line 1581
    .local v15, "var19":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-eqz v15, :cond_b

    .line 1582
    sub-int v16, v2, v5

    sub-int v12, v16, v7

    int-to-float v12, v12

    .line 1583
    .local v12, "var20":F
    iget v11, v15, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1584
    .local v11, "var14":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1585
    const/high16 v16, 0x1000000

    sub-int v16, v16, v7

    sub-int v16, v16, v11

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v11, v16

    .end local v11    # "var14":I
    .local v16, "var14":I
    goto :goto_5

    .line 1587
    .end local v16    # "var14":I
    .restart local v11    # "var14":I
    :cond_9
    add-int v16, v11, v5

    move/from16 v11, v16

    .line 1590
    :goto_5
    move/from16 v16, v1

    .end local v1    # "var6":I
    .local v16, "var6":I
    iget-boolean v1, v14, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v1, :cond_a

    .line 1591
    const/4 v1, 0x0

    iput-boolean v1, v14, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->needsMeasure:Z

    .line 1592
    iget v1, v14, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    move/from16 v17, v2

    .end local v2    # "var7":I
    .local v17, "var7":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v18, v3, v6

    move/from16 p4, v5

    .end local v5    # "var3":I
    .local p4, "var3":I
    sub-int v5, v18, v9

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v13, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 1590
    .end local v17    # "var7":I
    .end local p4    # "var3":I
    .restart local v2    # "var7":I
    .restart local v5    # "var3":I
    :cond_a
    move/from16 v17, v2

    move/from16 p4, v5

    .line 1595
    .end local v2    # "var7":I
    .end local v5    # "var3":I
    .restart local v17    # "var7":I
    .restart local p4    # "var3":I
    :goto_6
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v13, v11, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1581
    .end local v11    # "var14":I
    .end local v12    # "var20":F
    .end local v16    # "var6":I
    .end local v17    # "var7":I
    .end local p4    # "var3":I
    .restart local v1    # "var6":I
    .restart local v2    # "var7":I
    .restart local v5    # "var3":I
    :cond_b
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 p4, v5

    .end local v1    # "var6":I
    .end local v2    # "var7":I
    .end local v5    # "var3":I
    .restart local v16    # "var6":I
    .restart local v17    # "var7":I
    .restart local p4    # "var3":I
    goto :goto_7

    .line 1579
    .end local v15    # "var19":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v16    # "var6":I
    .end local v17    # "var7":I
    .end local p4    # "var3":I
    .restart local v1    # "var6":I
    .restart local v2    # "var7":I
    .restart local v5    # "var3":I
    :cond_c
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 p4, v5

    .end local v1    # "var6":I
    .end local v2    # "var7":I
    .end local v5    # "var3":I
    .restart local v16    # "var6":I
    .restart local v17    # "var7":I
    .restart local p4    # "var3":I
    goto :goto_7

    .line 1577
    .end local v14    # "var18":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    .end local v16    # "var6":I
    .end local v17    # "var7":I
    .end local p4    # "var3":I
    .restart local v1    # "var6":I
    .restart local v2    # "var7":I
    .restart local v5    # "var3":I
    :cond_d
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 p4, v5

    .line 1575
    .end local v1    # "var6":I
    .end local v2    # "var7":I
    .end local v5    # "var3":I
    .restart local v16    # "var6":I
    .restart local v17    # "var7":I
    .restart local p4    # "var3":I
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, p4

    move/from16 v1, v16

    move/from16 v2, v17

    const/16 v12, 0x8

    goto/16 :goto_4

    .line 1601
    .end local v13    # "var13":Landroid/view/View;
    .end local v16    # "var6":I
    .end local v17    # "var7":I
    .end local p4    # "var3":I
    .restart local v1    # "var6":I
    .restart local v2    # "var7":I
    .restart local v5    # "var3":I
    :cond_e
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 p4, v5

    .end local v1    # "var6":I
    .end local v2    # "var7":I
    .end local v5    # "var3":I
    .restart local v16    # "var6":I
    .restart local v17    # "var7":I
    .restart local p4    # "var3":I
    iput v6, v0, Landroidx/viewpager/widget/SeslViewPager;->mTopPageBounds:I

    .line 1602
    sub-int v1, v3, v9

    iput v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mBottomPageBounds:I

    .line 1603
    iput v10, v0, Landroidx/viewpager/widget/SeslViewPager;->mDecorChildCount:I

    .line 1604
    iget-boolean v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mIsChangedConfiguration:Z

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    goto :goto_9

    .line 1605
    :cond_10
    :goto_8
    iget v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/SeslViewPager;->scrollToItem(IZIZ)V

    .line 1606
    iput-boolean v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mIsChangedConfiguration:Z

    .line 1609
    :goto_9
    iput-boolean v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    .line 1610
    return-void
.end method

.method public onMeasure(II)V
    .locals 18
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1614
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1615
    .local v1, "var3":B
    const/4 v2, 0x0

    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v4

    move/from16 v5, p2

    invoke-static {v2, v5}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroidx/viewpager/widget/SeslViewPager;->setMeasuredDimension(II)V

    .line 1616
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1617
    .end local p1    # "var1":I
    .local v3, "var1":I
    div-int/lit8 v4, v3, 0xa

    iget v6, v0, Landroidx/viewpager/widget/SeslViewPager;->mDefaultGutterSize:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroidx/viewpager/widget/SeslViewPager;->mGutterSize:I

    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingLeft()I

    move-result v4

    .line 1619
    .local v4, "var4":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingRight()I

    move-result v6

    .line 1620
    .local v6, "var5":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getMeasuredHeight()I

    move-result v5

    .line 1621
    .end local p2    # "var2":I
    .local v5, "var2":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingTop()I

    move-result v7

    .line 1622
    .local v7, "var6":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingBottom()I

    move-result v8

    .line 1623
    .local v8, "var7":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v9

    .line 1624
    .local v9, "var8":I
    sub-int v10, v5, v7

    sub-int/2addr v10, v8

    .line 1625
    .end local v5    # "var2":I
    .local v10, "var2":I
    sub-int v5, v3, v4

    sub-int/2addr v5, v6

    .line 1626
    .end local v3    # "var1":I
    .local v5, "var1":I
    const/4 v3, 0x0

    .line 1629
    .end local v7    # "var6":I
    .local v3, "var6":I
    :goto_0
    const/4 v7, 0x1

    .line 1630
    .local v7, "var9":Z
    const/high16 v11, 0x40000000    # 2.0f

    .line 1633
    .local v11, "var10":I
    const/16 v12, 0x8

    if-lt v3, v9, :cond_3

    .line 1634
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1635
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1636
    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/viewpager/widget/SeslViewPager;->mInLayout:Z

    .line 1637
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->populate()V

    .line 1638
    iput-boolean v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mInLayout:Z

    .line 1639
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v2

    .line 1641
    .end local v6    # "var5":I
    .local v2, "var5":I
    move v6, v1

    .end local v10    # "var2":I
    .local v6, "var2":I
    :goto_1
    if-ge v6, v2, :cond_2

    .line 1642
    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1643
    .local v10, "var11":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_1

    .line 1644
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 1645
    .local v14, "var12":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    if-eqz v14, :cond_0

    iget-boolean v15, v14, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1646
    :cond_0
    int-to-float v15, v5

    iget v12, v14, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v15, v12

    float-to-int v12, v15

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v12, v4}, Landroid/view/View;->measure(II)V

    .line 1641
    .end local v14    # "var12":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0x8

    goto :goto_1

    .line 1651
    .end local v10    # "var11":Landroid/view/View;
    :cond_2
    return-void

    .line 1654
    .end local v2    # "var5":I
    .local v6, "var5":I
    .local v10, "var2":I
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1655
    .local v12, "var11":Landroid/view/View;
    move v6, v10

    .line 1656
    move v4, v5

    .line 1657
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_11

    .line 1658
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 1659
    .local v13, "var12":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    move v6, v10

    .line 1660
    move v4, v5

    .line 1661
    if-eqz v13, :cond_10

    .line 1662
    move v6, v10

    .line 1663
    move v4, v5

    .line 1664
    iget-boolean v14, v13, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_f

    .line 1665
    iget v6, v13, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->gravity:I

    .line 1666
    and-int/lit8 v4, v6, 0x7

    .line 1667
    and-int/lit8 v6, v6, 0x70

    .line 1669
    const/16 v14, 0x30

    if-eq v6, v14, :cond_4

    const/16 v14, 0x50

    if-eq v6, v14, :cond_4

    .line 1670
    const/4 v14, 0x0

    .local v14, "var13":Z
    goto :goto_2

    .line 1672
    .end local v14    # "var13":Z
    :cond_4
    const/4 v14, 0x1

    .line 1675
    .restart local v14    # "var13":Z
    :goto_2
    move v15, v7

    .line 1676
    .local v15, "var15":Z
    const/4 v2, 0x3

    if-eq v4, v2, :cond_6

    .line 1677
    const/4 v2, 0x5

    if-ne v4, v2, :cond_5

    .line 1678
    move v15, v7

    goto :goto_3

    .line 1680
    :cond_5
    const/4 v15, 0x0

    .line 1684
    :cond_6
    :goto_3
    const/high16 v2, -0x80000000

    .line 1685
    .end local v6    # "var5":I
    .restart local v2    # "var5":I
    if-eqz v14, :cond_7

    .line 1686
    const/high16 v4, -0x80000000

    .line 1687
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_4

    .line 1688
    :cond_7
    if-eqz v15, :cond_8

    .line 1689
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_4

    .line 1691
    :cond_8
    const/high16 v4, -0x80000000

    .line 1694
    :goto_4
    iget v6, v13, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->width:I

    .line 1696
    .local v6, "var16":I
    const/4 v0, -0x2

    if-eq v6, v0, :cond_a

    .line 1697
    const/4 v0, -0x1

    if-eq v6, v0, :cond_9

    .line 1698
    move v0, v6

    move v2, v0

    .end local v2    # "var5":I
    .local v0, "var5":I
    goto :goto_5

    .line 1700
    .end local v0    # "var5":I
    .restart local v2    # "var5":I
    :cond_9
    move v0, v5

    move v2, v0

    .line 1703
    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    .line 1704
    .end local v6    # "var16":I
    .local v0, "var16":I
    move v6, v2

    .local v6, "var14":I
    goto :goto_6

    .line 1706
    .end local v0    # "var16":I
    .local v6, "var16":I
    :cond_a
    move v0, v5

    .line 1707
    .local v0, "var14":I
    move v6, v2

    move/from16 v17, v6

    move v6, v0

    move/from16 v0, v17

    .line 1710
    .local v0, "var16":I
    .local v6, "var14":I
    :goto_6
    iget v2, v13, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->height:I

    .line 1711
    move/from16 v16, v1

    const/4 v1, -0x2

    .end local v1    # "var3":B
    .local v16, "var3":B
    if-eq v2, v1, :cond_c

    .line 1712
    const/4 v1, -0x1

    if-eq v2, v1, :cond_b

    .line 1713
    move v1, v2

    .end local v4    # "var4":I
    .local v1, "var4":I
    goto :goto_7

    .line 1715
    .end local v1    # "var4":I
    .restart local v4    # "var4":I
    :cond_b
    move v1, v10

    .end local v4    # "var4":I
    .restart local v1    # "var4":I
    goto :goto_7

    .line 1718
    .end local v1    # "var4":I
    .restart local v4    # "var4":I
    :cond_c
    move v11, v4

    .line 1719
    move v1, v10

    .line 1722
    .end local v4    # "var4":I
    .restart local v1    # "var4":I
    :goto_7
    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move/from16 p1, v0

    .end local v0    # "var16":I
    .local p1, "var16":I
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v12, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1723
    if-eqz v14, :cond_d

    .line 1724
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v10, v0

    .line 1725
    .end local v2    # "var5":I
    .local v0, "var5":I
    move v1, v5

    move v6, v0

    move v4, v1

    goto :goto_8

    .line 1727
    .end local v0    # "var5":I
    .restart local v2    # "var5":I
    :cond_d
    move v0, v10

    .line 1728
    .end local v2    # "var5":I
    .restart local v0    # "var5":I
    move v1, v5

    .line 1729
    if-eqz v15, :cond_e

    .line 1730
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v1, v5, v2

    .line 1731
    move v0, v10

    move v6, v0

    move v4, v1

    goto :goto_8

    .line 1729
    :cond_e
    move v6, v0

    move v4, v1

    goto :goto_8

    .line 1664
    .end local v0    # "var5":I
    .end local v14    # "var13":Z
    .end local v15    # "var15":Z
    .end local v16    # "var3":B
    .end local p1    # "var16":I
    .local v1, "var3":B
    .restart local v4    # "var4":I
    .local v6, "var5":I
    :cond_f
    move/from16 v16, v1

    .end local v1    # "var3":B
    .restart local v16    # "var3":B
    goto :goto_8

    .line 1661
    .end local v16    # "var3":B
    .restart local v1    # "var3":B
    :cond_10
    move/from16 v16, v1

    .end local v1    # "var3":B
    .restart local v16    # "var3":B
    goto :goto_8

    .line 1657
    .end local v13    # "var12":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    .end local v16    # "var3":B
    .restart local v1    # "var3":B
    :cond_11
    move/from16 v16, v1

    .line 1738
    .end local v1    # "var3":B
    .restart local v16    # "var3":B
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 1739
    move v10, v6

    .line 1740
    move v5, v4

    .line 1741
    .end local v7    # "var9":Z
    .end local v11    # "var10":I
    .end local v12    # "var11":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto/16 :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 14
    .param p1, "var1"    # I
    .param p2, "var2"    # F
    .param p3, "var3"    # I

    .line 1745
    move-object v0, p0

    iget v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mDecorChildCount:I

    .line 1746
    .local v1, "var4":I
    const/4 v2, 0x0

    .line 1748
    .local v2, "var5":B
    const/4 v3, 0x1

    if-lez v1, :cond_4

    .line 1749
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v4

    .line 1750
    .local v4, "var6":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingLeft()I

    move-result v1

    .line 1751
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingRight()I

    move-result v5

    .line 1752
    .local v5, "var7":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getWidth()I

    move-result v6

    .line 1753
    .local v6, "var8":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v7

    .line 1755
    .local v7, "var9":I
    const/4 v8, 0x0

    .local v8, "var10":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 1756
    invoke-virtual {p0, v8}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1757
    .local v9, "var11":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 1758
    .local v10, "var12":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    iget-boolean v11, v10, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v11, :cond_3

    .line 1759
    iget v11, v10, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x7

    .line 1760
    .local v11, "var13":I
    if-eq v11, v3, :cond_2

    .line 1761
    const/4 v12, 0x3

    if-eq v11, v12, :cond_1

    .line 1762
    const/4 v12, 0x5

    if-eq v11, v12, :cond_0

    .line 1763
    move v11, v1

    .line 1764
    goto :goto_1

    .line 1766
    :cond_0
    sub-int v12, v6, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v11, v12, v13

    .line 1767
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v5, v12

    goto :goto_1

    .line 1770
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v1

    .line 1771
    .local v12, "var14":I
    move v11, v1

    .line 1772
    move v1, v12

    .line 1773
    .end local v12    # "var14":I
    goto :goto_1

    .line 1775
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v6, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1778
    :goto_1
    add-int v12, v11, v4

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v12, v13

    .line 1779
    .end local v11    # "var13":I
    .local v12, "var13":I
    if-eqz v12, :cond_3

    .line 1780
    invoke-virtual {v9, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1755
    .end local v10    # "var12":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    .end local v12    # "var13":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1786
    .end local v4    # "var6":I
    .end local v5    # "var7":I
    .end local v6    # "var8":I
    .end local v7    # "var9":I
    .end local v8    # "var10":I
    .end local v9    # "var11":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p0 .. p3}, Landroidx/viewpager/widget/SeslViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1787
    iget-object v4, v0, Landroidx/viewpager/widget/SeslViewPager;->mPageTransformer:Landroidx/viewpager/widget/SeslViewPager$PageTransformer;

    if-eqz v4, :cond_6

    .line 1788
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v1

    .line 1789
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v4

    .line 1791
    .end local p3    # "var3":I
    .local v4, "var3":I
    move v5, v2

    move/from16 v6, p2

    .end local p1    # "var1":I
    .end local p2    # "var2":F
    .local v5, "var1":I
    .local v6, "var2":F
    :goto_2
    if-ge v5, v4, :cond_7

    .line 1792
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1793
    .local v7, "var11":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    iget-boolean v8, v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_5

    .line 1794
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v1

    int-to-float v8, v8

    invoke-direct {p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 1795
    iget-object v8, v0, Landroidx/viewpager/widget/SeslViewPager;->mPageTransformer:Landroidx/viewpager/widget/SeslViewPager$PageTransformer;

    invoke-interface {v8, v7, v6}, Landroidx/viewpager/widget/SeslViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1791
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1787
    .end local v4    # "var3":I
    .end local v5    # "var1":I
    .end local v6    # "var2":F
    .end local v7    # "var11":Landroid/view/View;
    .restart local p1    # "var1":I
    .restart local p2    # "var2":F
    .restart local p3    # "var3":I
    :cond_6
    move v5, p1

    move/from16 v6, p2

    move/from16 v4, p3

    .line 1800
    .end local p1    # "var1":I
    .end local p2    # "var2":F
    .end local p3    # "var3":I
    .restart local v4    # "var3":I
    .restart local v5    # "var1":I
    .restart local v6    # "var2":F
    :cond_7
    iput-boolean v3, v0, Landroidx/viewpager/widget/SeslViewPager;->mCalledSuper:Z

    .line 1801
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 1805
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v0

    .line 1806
    .local v0, "var3":I
    const/4 v1, -0x1

    .line 1808
    .local v1, "var4":I
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 1809
    move v1, v0

    .line 1810
    const/4 v0, 0x0

    .line 1811
    const/4 v2, 0x1

    .local v2, "var5":B
    goto :goto_0

    .line 1813
    .end local v2    # "var5":B
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1814
    const/4 v2, -0x1

    .line 1817
    .restart local v2    # "var5":B
    :goto_0
    if-eq v0, v1, :cond_2

    .line 1818
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1819
    .local v3, "var6":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1820
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/SeslViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v4

    .line 1821
    .local v4, "var7":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v5, v4, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1822
    const/4 v5, 0x1

    return v5

    .line 1817
    .end local v3    # "var6":Landroid/view/View;
    .end local v4    # "var7":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    .line 1827
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 1831
    instance-of v0, p1, Landroidx/viewpager/widget/SeslViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1832
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1834
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;

    .line 1835
    .local v0, "var3":Landroidx/viewpager/widget/SeslViewPager$SavedState;
    invoke-virtual {v0}, Landroidx/viewpager/widget/SeslViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1836
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1837
    .local v1, "var2":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v1, :cond_1

    .line 1838
    iget-object v2, v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1839
    iget v2, v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->position:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1841
    :cond_1
    iget v2, v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->position:I

    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredCurItem:I

    .line 1842
    iget-object v2, v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1843
    iget-object v2, v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1847
    .end local v0    # "var3":Landroidx/viewpager/widget/SeslViewPager$SavedState;
    .end local v1    # "var2":Landroidx/viewpager/widget/PagerAdapter;
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1850
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1851
    if-nez p1, :cond_0

    .line 1852
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftIncr:I

    goto :goto_0

    .line 1854
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftIncr:I

    .line 1857
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1860
    new-instance v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/SeslViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1861
    .local v0, "var1":Landroidx/viewpager/widget/SeslViewPager$SavedState;
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    iput v1, v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->position:I

    .line 1862
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1863
    .local v1, "var2":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v1, :cond_0

    .line 1864
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroidx/viewpager/widget/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1867
    :cond_0
    return-object v0
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1871
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1872
    .local v0, "var2":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1874
    if-nez v0, :cond_0

    .line 1875
    const/4 v1, 0x1

    .local v1, "var4":B
    goto :goto_0

    .line 1877
    .end local v1    # "var4":B
    :cond_0
    const/4 v1, 0x0

    .line 1880
    .restart local v1    # "var4":B
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 1881
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    .line 1882
    iget-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1883
    .local v2, "var3":Landroid/view/VelocityTracker;
    if-eqz v2, :cond_1

    .line 1884
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1888
    .end local v1    # "var4":B
    .end local v2    # "var3":Landroid/view/VelocityTracker;
    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1891
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1892
    if-eq p1, p3, :cond_0

    .line 1893
    iget p2, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    .line 1894
    invoke-virtual {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/SeslViewPager;->recomputeScrollPosition(IIII)V

    .line 1897
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1900
    iget-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1901
    return v1

    .line 1903
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1904
    .local v0, "var2":I
    const/4 v2, 0x0

    .line 1905
    .local v2, "var3":Z
    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1906
    return v3

    .line 1908
    :cond_1
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1909
    .local v4, "var4":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_e

    .line 1910
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2

    .line 1911
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1914
    :cond_2
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 1917
    if-eqz v0, :cond_c

    .line 1919
    if-eq v0, v1, :cond_9

    .line 1920
    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    .line 1921
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    .line 1922
    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    .line 1923
    const/4 v3, 0x6

    if-ne v0, v3, :cond_b

    .line 1924
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/SeslViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1925
    iget v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    goto/16 :goto_2

    .line 1928
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1929
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 1930
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    goto/16 :goto_2

    .line 1932
    :cond_4
    iget-boolean v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v5, :cond_b

    .line 1933
    iget v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {p0, v5, v1, v3, v3}, Landroidx/viewpager/widget/SeslViewPager;->scrollToItem(IZIZ)V

    .line 1934
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_2

    .line 1938
    :cond_5
    iget-boolean v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    if-nez v5, :cond_8

    .line 1939
    iget v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1940
    const/4 v5, -0x1

    if-ne v0, v5, :cond_6

    .line 1941
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->resetTouch()Z

    move-result v2

    .line 1942
    goto/16 :goto_2

    .line 1945
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1946
    .local v5, "var5":F
    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1947
    .local v6, "var6":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1948
    .local v7, "var7":F
    iget v8, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1949
    .local v8, "var8":F
    iget v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-lez v9, :cond_8

    cmpl-float v9, v6, v8

    if-lez v9, :cond_8

    .line 1950
    iput-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    .line 1951
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1952
    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionX:F

    .line 1953
    sub-float v9, v5, v6

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 1954
    iget v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    int-to-float v9, v9

    add-float/2addr v9, v6

    .end local v5    # "var5":F
    .local v9, "var5":F
    goto :goto_0

    .line 1956
    .end local v9    # "var5":F
    .restart local v5    # "var5":F
    :cond_7
    iget v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mTouchSlop:I

    int-to-float v9, v9

    sub-float v9, v6, v9

    .line 1959
    .end local v5    # "var5":F
    .restart local v9    # "var5":F
    :goto_0
    iput v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 1960
    iput v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionY:F

    .line 1961
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->setScrollState(I)V

    .line 1962
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 1963
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 1964
    .local v5, "var10":Landroid/view/ViewParent;
    if-eqz v5, :cond_8

    .line 1965
    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1970
    .end local v5    # "var10":Landroid/view/ViewParent;
    .end local v6    # "var6":F
    .end local v7    # "var7":F
    .end local v8    # "var8":F
    .end local v9    # "var5":F
    :cond_8
    iget-boolean v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v5, :cond_b

    .line 1971
    iget v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/SeslViewPager;->performDrag(F)Z

    move-result v5

    or-int/lit8 v2, v5, 0x0

    goto :goto_2

    .line 1975
    :cond_9
    iget-boolean v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_b

    .line 1976
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1977
    .local v3, "var11":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1978
    iget v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v0, v5

    .line 1979
    iput-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mPopulatePending:Z

    .line 1980
    invoke-direct {p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v5

    .line 1981
    .local v5, "var9":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->seslGetScrollStart()I

    move-result v6

    int-to-float v6, v6

    .line 1982
    .local v6, "var5":F
    int-to-float v7, v5

    .line 1983
    .restart local v7    # "var7":F
    div-float/2addr v6, v7

    .line 1984
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v8

    .line 1985
    .local v8, "var12":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget v9, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    .line 1986
    .end local v7    # "var7":F
    .local v9, "var7":F
    iget v5, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 1987
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1988
    iget v7, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v6

    iget v10, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v9

    div-float/2addr v7, v10

    .end local v6    # "var5":F
    .local v7, "var5":F
    goto :goto_1

    .line 1990
    .end local v7    # "var5":F
    .restart local v6    # "var5":F
    :cond_a
    iget v7, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    sub-float v7, v6, v7

    iget v10, v8, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v9

    div-float/2addr v7, v10

    .line 1993
    .end local v6    # "var5":F
    .restart local v7    # "var5":F
    :goto_1
    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget v10, p0, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionX:F

    sub-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {p0, v5, v7, v0, v6}, Landroidx/viewpager/widget/SeslViewPager;->determineTargetPage(IFII)I

    move-result v6

    invoke-virtual {p0, v6, v1, v1, v0}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItemInternal(IZZI)V

    .line 1994
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->resetTouch()Z

    move-result v2

    .line 1996
    .end local v3    # "var11":Landroid/view/VelocityTracker;
    .end local v5    # "var9":I
    .end local v7    # "var5":F
    .end local v8    # "var12":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v9    # "var7":F
    :cond_b
    :goto_2
    goto :goto_3

    .line 1997
    :cond_c
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1998
    iput-boolean v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mPopulatePending:Z

    .line 1999
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->populate()V

    .line 2000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 2001
    .local v5, "var5":F
    iput v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionX:F

    .line 2002
    iput v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 2003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 2004
    iput v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mInitialMotionY:F

    .line 2005
    iput v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionY:F

    .line 2006
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    .line 2009
    .end local v5    # "var5":F
    :goto_3
    if-eqz v2, :cond_d

    .line 2010
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2013
    :cond_d
    return v1

    .line 2015
    :cond_e
    return v3
.end method

.method public pageLeft()Z
    .locals 3

    .line 2022
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 2023
    .local v0, "var1":I
    if-lez v0, :cond_0

    .line 2024
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftIncr:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItem(IZ)V

    .line 2025
    return v2

    .line 2027
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public pageRight()Z
    .locals 4

    .line 2032
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2033
    .local v0, "var1":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 2034
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    iget v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftIncr:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v3}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItem(IZ)V

    .line 2035
    return v3

    .line 2037
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final pageScrolled(I)Z
    .locals 10
    .param p1, "var1"    # I

    .line 2042
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2043
    iget-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    .line 2044
    return v2

    .line 2046
    :cond_0
    iput-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mCalledSuper:Z

    .line 2047
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Landroidx/viewpager/widget/SeslViewPager;->onPageScrolled(IFI)V

    .line 2048
    iget-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_1

    .line 2049
    return v2

    .line 2051
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2055
    :cond_2
    move v0, p1

    .line 2056
    .local v0, "var2":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2057
    const/high16 v3, 0x1000000

    sub-int v0, v3, p1

    .line 2060
    :cond_3
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v3

    .line 2061
    .local v3, "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    invoke-direct {p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v4

    .line 2062
    .local v4, "var4":I
    iget v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    .line 2063
    .local v5, "var5":I
    int-to-float v6, v5

    .line 2064
    .local v6, "var6":F
    int-to-float v7, v4

    .line 2065
    .local v7, "var7":F
    div-float/2addr v6, v7

    .line 2066
    iget p1, v3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 2067
    int-to-float v8, v0

    div-float/2addr v8, v7

    iget v9, v3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v3, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    div-float/2addr v8, v9

    .line 2068
    .end local v7    # "var7":F
    .local v8, "var7":F
    add-int v7, v4, v5

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 2069
    iput-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mCalledSuper:Z

    .line 2070
    invoke-virtual {p0, p1, v8, v0}, Landroidx/viewpager/widget/SeslViewPager;->onPageScrolled(IFI)V

    .line 2071
    iget-boolean v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mCalledSuper:Z

    if-eqz v2, :cond_4

    .line 2072
    const/4 v1, 0x1

    return v1

    .line 2074
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final performDrag(F)Z
    .locals 17
    .param p1, "var1"    # F

    .line 2080
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v2

    .line 2081
    .local v2, "var2":Z
    const/4 v3, 0x0

    .line 2082
    .local v3, "var3":Z
    const/4 v4, 0x0

    .line 2083
    .local v4, "var4":Z
    const/4 v5, 0x0

    .line 2084
    .local v5, "var5":Z
    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 2085
    iput-boolean v6, v0, Landroidx/viewpager/widget/SeslViewPager;->mIsChangedConfiguration:Z

    .line 2090
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2091
    iget-object v7, v0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 2092
    .local v7, "var6":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    iget-object v8, v0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .local v8, "var7":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    goto :goto_0

    .line 2094
    .end local v7    # "var6":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    .end local v8    # "var7":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    :cond_1
    iget-object v7, v0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 2095
    .restart local v7    # "var6":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    iget-object v8, v0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 2098
    .restart local v8    # "var7":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    :goto_0
    iget v9, v0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 2099
    .local v9, "var8":F
    iput v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v9, v1

    add-float/2addr v10, v11

    .line 2101
    .end local p1    # "var1":F
    .local v10, "var1":F
    move v1, v10

    .line 2102
    .end local v9    # "var8":F
    .local v1, "var8":F
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v9

    const/high16 v11, 0x4b800000    # 1.6777216E7f

    if-eqz v9, :cond_2

    .line 2103
    sub-float v1, v11, v10

    .line 2106
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v9

    .line 2107
    .local v9, "var9":I
    iget-object v12, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2109
    .local v6, "var10":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget v12, v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-nez v12, :cond_3

    .line 2110
    const/4 v12, 0x1

    .local v12, "var11":Z
    goto :goto_1

    .line 2112
    .end local v12    # "var11":Z
    :cond_3
    const/4 v12, 0x0

    .line 2117
    .restart local v12    # "var11":Z
    :goto_1
    if-eqz v12, :cond_5

    .line 2118
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2119
    int-to-float v10, v9

    .line 2120
    iget v13, v0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    mul-float/2addr v13, v10

    add-float/2addr v10, v13

    .line 2121
    goto :goto_3

    .line 2124
    :cond_4
    int-to-float v10, v9

    .line 2125
    iget v13, v0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    .local v13, "var12":F
    goto :goto_2

    .line 2127
    .end local v13    # "var12":F
    :cond_5
    iget v10, v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 2128
    int-to-float v13, v9

    .line 2131
    .restart local v13    # "var12":F
    :goto_2
    mul-float/2addr v10, v13

    .line 2134
    .end local v13    # "var12":F
    :goto_3
    iget-object v13, v0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    .line 2135
    .local v13, "var15":Ljava/util/ArrayList;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v6, v14

    check-cast v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2137
    iget v14, v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget-object v15, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v15}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_6

    .line 2138
    const/4 v14, 0x1

    .local v14, "var13":Z
    goto :goto_4

    .line 2140
    .end local v14    # "var13":Z
    :cond_6
    const/4 v14, 0x0

    .line 2145
    .restart local v14    # "var13":Z
    :goto_4
    if-eqz v14, :cond_8

    .line 2146
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2147
    int-to-float v15, v9

    .line 2148
    .local v15, "var12":F
    iget v11, v0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    mul-float/2addr v11, v15

    add-float/2addr v15, v11

    .line 2149
    goto :goto_6

    .line 2152
    .end local v15    # "var12":F
    :cond_7
    int-to-float v11, v9

    .line 2153
    .local v11, "var14":F
    iget v15, v0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    .restart local v15    # "var12":F
    goto :goto_5

    .line 2155
    .end local v11    # "var14":F
    .end local v15    # "var12":F
    :cond_8
    iget v11, v6, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    .line 2156
    .restart local v11    # "var14":F
    int-to-float v15, v9

    .line 2159
    .restart local v15    # "var12":F
    :goto_5
    mul-float/2addr v15, v11

    .line 2162
    .end local v11    # "var14":F
    :goto_6
    cmpg-float v11, v1, v10

    if-gez v11, :cond_a

    .line 2163
    if-eqz v12, :cond_9

    .line 2164
    sub-float v11, v10, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move/from16 v16, v2

    .end local v2    # "var2":Z
    .local v16, "var2":Z
    int-to-float v2, v9

    div-float/2addr v11, v2

    invoke-virtual {v7, v11}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPull(F)V

    .line 2165
    const/4 v5, 0x1

    goto :goto_8

    .line 2163
    .end local v16    # "var2":Z
    .restart local v2    # "var2":Z
    :cond_9
    move/from16 v16, v2

    .end local v2    # "var2":Z
    .restart local v16    # "var2":Z
    goto :goto_8

    .line 2168
    .end local v16    # "var2":Z
    .restart local v2    # "var2":Z
    :cond_a
    move/from16 v16, v2

    .end local v2    # "var2":Z
    .restart local v16    # "var2":Z
    move v5, v4

    .line 2169
    move v10, v1

    .line 2170
    cmpl-float v2, v1, v15

    if-lez v2, :cond_c

    .line 2171
    move v2, v3

    .line 2172
    .end local v5    # "var5":Z
    .local v2, "var5":Z
    if-eqz v14, :cond_b

    .line 2173
    sub-float v5, v1, v15

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v11, v9

    div-float/2addr v5, v11

    invoke-virtual {v8, v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPull(F)V

    .line 2174
    const/4 v2, 0x1

    move v5, v2

    goto :goto_7

    .line 2172
    :cond_b
    move v5, v2

    .line 2177
    .end local v2    # "var5":Z
    .restart local v5    # "var5":Z
    :goto_7
    move v10, v15

    .line 2181
    :cond_c
    :goto_8
    move v1, v10

    .line 2182
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2183
    const/high16 v2, 0x4b800000    # 1.6777216E7f

    sub-float v1, v2, v10

    .line 2186
    :cond_d
    iget v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 2187
    .end local v10    # "var1":F
    .local v2, "var1":F
    float-to-int v10, v1

    .line 2188
    .local v10, "var16":I
    int-to-float v11, v10

    sub-float v11, v1, v11

    add-float/2addr v11, v2

    iput v11, v0, Landroidx/viewpager/widget/SeslViewPager;->mLastMotionX:F

    .line 2189
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollY()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroidx/viewpager/widget/SeslViewPager;->scrollTo(II)V

    .line 2190
    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/SeslViewPager;->pageScrolled(I)Z

    .line 2191
    return v5
.end method

.method public populate()V
    .locals 1

    .line 2195
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->populate(I)V

    .line 2196
    return-void
.end method

.method public populate(I)V
    .locals 21
    .param p1, "var1"    # I

    .line 2199
    move-object/from16 v1, p0

    move/from16 v0, p1

    iget v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 2202
    .local v2, "var2":I
    if-eq v2, v0, :cond_1

    .line 2204
    if-ge v2, v0, :cond_0

    .line 2205
    const/16 v3, 0x42

    .local v3, "var19":B
    goto :goto_0

    .line 2207
    .end local v3    # "var19":B
    :cond_0
    const/16 v3, 0x11

    .line 2210
    .restart local v3    # "var19":B
    :goto_0
    iget v4, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/SeslViewPager;->infoForPosition(I)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v4

    .line 2211
    .local v4, "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iput v0, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 2212
    nop

    .line 2213
    .local v3, "var4":B
    goto :goto_1

    .line 2214
    .end local v3    # "var4":B
    .end local v4    # "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_1
    const/4 v3, 0x2

    .line 2215
    .restart local v3    # "var4":B
    const/4 v4, 0x0

    .line 2218
    .restart local v4    # "var3":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :goto_1
    iget-object v5, v1, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v5, :cond_2

    .line 2219
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->sortChildDrawingOrder()V

    goto/16 :goto_17

    .line 2220
    :cond_2
    iget-boolean v5, v1, Landroidx/viewpager/widget/SeslViewPager;->mPopulatePending:Z

    if-eqz v5, :cond_3

    .line 2221
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->sortChildDrawingOrder()V

    goto/16 :goto_17

    .line 2222
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 2223
    iget-object v5, v1, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 2224
    iget v5, v1, Landroidx/viewpager/widget/SeslViewPager;->mOffscreenPageLimit:I

    .line 2225
    .end local p1    # "var1":I
    .local v5, "var1":I
    const/4 v0, 0x0

    iget v6, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2226
    .local v6, "var5":I
    iget-object v0, v1, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v7

    .line 2227
    .local v7, "var6":I
    add-int/lit8 v0, v7, -0x1

    iget v8, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    add-int/2addr v8, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2228
    .local v8, "var7":I
    iget v0, v1, Landroidx/viewpager/widget/SeslViewPager;->mExpectedAdapterCount:I

    if-ne v7, v0, :cond_24

    .line 2249
    const/4 v0, 0x0

    .line 2254
    .end local v5    # "var1":I
    .local v0, "var1":I
    :goto_2
    iget-object v5, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 2255
    iget-object v5, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2256
    .local v5, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget v9, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    .line 2257
    .local v9, "var9":I
    iget v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 2258
    if-ge v9, v2, :cond_4

    .line 2259
    add-int/lit8 v0, v0, 0x1

    .line 2260
    goto :goto_2

    .line 2263
    :cond_4
    if-ne v9, v2, :cond_5

    .line 2264
    goto :goto_3

    .line 2268
    .end local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v9    # "var9":I
    :cond_5
    const/4 v5, 0x0

    .line 2269
    .restart local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    nop

    .line 2272
    :goto_3
    move-object v9, v5

    .line 2273
    .local v9, "var10":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-nez v5, :cond_6

    .line 2274
    move-object v9, v5

    .line 2275
    if-lez v7, :cond_6

    .line 2276
    iget v10, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {v1, v10, v0}, Landroidx/viewpager/widget/SeslViewPager;->addNewItem(II)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v9

    .line 2280
    :cond_6
    if-eqz v9, :cond_1e

    .line 2281
    add-int/lit8 v2, v0, -0x1

    .line 2282
    if-ltz v2, :cond_7

    .line 2283
    iget-object v10, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    goto :goto_4

    .line 2285
    :cond_7
    const/4 v5, 0x0

    .line 2288
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v10

    .line 2291
    .local v10, "var11":I
    const/high16 v11, 0x40000000    # 2.0f

    if-gtz v10, :cond_8

    .line 2292
    const/4 v12, 0x0

    .local v12, "var12":F
    goto :goto_5

    .line 2294
    .end local v12    # "var12":F
    :cond_8
    iget v12, v9, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    .line 2295
    .local v12, "var13":F
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v10

    div-float/2addr v13, v14

    sub-float v14, v11, v12

    add-float/2addr v13, v14

    move v12, v13

    .line 2298
    .local v12, "var12":F
    :goto_5
    iget v13, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    add-int/lit8 v13, v13, -0x1

    .line 2303
    .local v13, "var14":I
    const/4 v14, 0x0

    .local v14, "var15":F
    :goto_6
    if-ltz v13, :cond_11

    .line 2306
    cmpl-float v15, v14, v12

    if-ltz v15, :cond_d

    if-ge v13, v6, :cond_d

    .line 2307
    if-nez v5, :cond_9

    .line 2308
    move-object/from16 v16, v5

    move/from16 v19, v6

    goto/16 :goto_a

    .line 2311
    :cond_9
    move v15, v14

    .line 2312
    .local v15, "var13":F
    move/from16 v16, v0

    .line 2313
    .local v16, "var16":I
    move-object/from16 v17, v5

    .line 2314
    .local v17, "var17":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move/from16 v18, v2

    .line 2315
    .local v18, "var9":I
    iget v11, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-eq v13, v11, :cond_a

    .line 2316
    move/from16 v19, v6

    goto/16 :goto_9

    .line 2319
    :cond_a
    move v15, v14

    .line 2320
    move/from16 v16, v0

    .line 2321
    move-object/from16 v17, v5

    .line 2322
    move/from16 v18, v2

    .line 2323
    iget-boolean v11, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->scrolling:Z

    if-eqz v11, :cond_b

    .line 2324
    move/from16 v19, v6

    goto/16 :goto_9

    .line 2327
    :cond_b
    iget-object v11, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2328
    iget-object v11, v1, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move/from16 v19, v6

    .end local v6    # "var5":I
    .local v19, "var5":I
    iget-object v6, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, v1, v13, v6}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2329
    add-int/lit8 v2, v2, -0x1

    .line 2330
    add-int/lit8 v0, v0, -0x1

    .line 2331
    move v6, v14

    .line 2332
    .end local v15    # "var13":F
    .local v6, "var13":F
    move v11, v0

    .line 2333
    .end local v18    # "var9":I
    .local v11, "var9":I
    move v15, v2

    .line 2334
    .end local v16    # "var16":I
    .local v15, "var16":I
    if-ltz v2, :cond_c

    .line 2335
    move/from16 v16, v0

    .end local v0    # "var1":I
    .local v16, "var1":I
    iget-object v0, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2336
    .end local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v0, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move v5, v14

    .line 2337
    .end local v6    # "var13":F
    .local v5, "var13":F
    move v6, v5

    move-object v5, v0

    move/from16 v0, v16

    goto :goto_8

    .line 2334
    .end local v16    # "var1":I
    .local v0, "var1":I
    .local v5, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v6    # "var13":F
    :cond_c
    move/from16 v16, v0

    .end local v0    # "var1":I
    .restart local v16    # "var1":I
    move-object/from16 v16, v5

    goto :goto_7

    .line 2306
    .end local v11    # "var9":I
    .end local v15    # "var16":I
    .end local v16    # "var1":I
    .end local v17    # "var17":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v19    # "var5":I
    .restart local v0    # "var1":I
    .local v6, "var5":I
    :cond_d
    move/from16 v19, v6

    .line 2339
    .end local v6    # "var5":I
    .restart local v19    # "var5":I
    if-eqz v5, :cond_f

    iget v6, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-ne v13, v6, :cond_f

    .line 2340
    iget v6, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v14, v6

    .line 2341
    add-int/lit8 v2, v2, -0x1

    .line 2342
    move v6, v14

    .line 2343
    .local v6, "var13":F
    move v11, v0

    .line 2344
    .restart local v11    # "var9":I
    move v15, v2

    .line 2345
    .restart local v15    # "var16":I
    if-ltz v2, :cond_e

    .line 2346
    move-object/from16 v16, v5

    .end local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v16, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget-object v5, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2347
    .end local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move v6, v14

    .line 2348
    goto :goto_8

    .line 2345
    :cond_e
    move-object/from16 v16, v5

    .end local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    goto :goto_7

    .line 2339
    .end local v6    # "var13":F
    .end local v11    # "var9":I
    .end local v15    # "var16":I
    .end local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_f
    move-object/from16 v16, v5

    .line 2351
    .end local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v13, v5}, Landroidx/viewpager/widget/SeslViewPager;->addNewItem(II)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v5

    iget v5, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v14, v5

    .line 2352
    add-int/lit8 v0, v0, 0x1

    .line 2353
    move v6, v14

    .line 2354
    .restart local v6    # "var13":F
    move v11, v0

    .line 2355
    .restart local v11    # "var9":I
    move v15, v2

    .line 2356
    .restart local v15    # "var16":I
    if-ltz v2, :cond_10

    .line 2357
    iget-object v5, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2358
    .end local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move v6, v14

    .line 2359
    goto :goto_8

    .line 2363
    .end local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_10
    :goto_7
    const/4 v5, 0x0

    .line 2364
    .end local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move v2, v15

    .line 2365
    move v0, v11

    .line 2368
    :goto_8
    move/from16 v18, v2

    .line 2369
    .end local v11    # "var9":I
    .restart local v18    # "var9":I
    move-object/from16 v17, v5

    .line 2370
    .restart local v17    # "var17":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move/from16 v16, v0

    move v15, v6

    .line 2373
    .end local v6    # "var13":F
    .local v15, "var13":F
    .local v16, "var16":I
    :goto_9
    add-int/lit8 v13, v13, -0x1

    .line 2374
    move v14, v15

    .line 2375
    move/from16 v0, v16

    .line 2376
    move-object/from16 v5, v17

    .line 2303
    move/from16 v2, v18

    move/from16 v6, v19

    const/high16 v11, 0x40000000    # 2.0f

    goto/16 :goto_6

    .end local v15    # "var13":F
    .end local v16    # "var16":I
    .end local v17    # "var17":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v18    # "var9":I
    .end local v19    # "var5":I
    .local v6, "var5":I
    :cond_11
    move-object/from16 v16, v5

    move/from16 v19, v6

    .line 2379
    .end local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v6    # "var5":I
    .local v16, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v19    # "var5":I
    :goto_a
    iget v5, v9, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    .line 2380
    .end local v14    # "var15":F
    .local v5, "var15":F
    add-int/lit8 v6, v0, 0x1

    .line 2381
    .local v6, "var9":I
    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v14, v5, v11

    if-gez v14, :cond_1d

    .line 2382
    iget-object v11, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_12

    .line 2383
    iget-object v11, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .end local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v11, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    goto :goto_b

    .line 2385
    .end local v11    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_12
    const/4 v11, 0x0

    .line 2388
    .end local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v11    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :goto_b
    if-gtz v10, :cond_13

    .line 2389
    const/4 v12, 0x0

    move v14, v12

    goto :goto_c

    .line 2391
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingRight()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v10

    div-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    add-float v12, v14, v15

    move v14, v12

    .line 2394
    .end local v12    # "var12":F
    .local v14, "var12":F
    :goto_c
    iget v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 2395
    move-object v12, v11

    .line 2398
    .local v12, "var17":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :goto_d
    add-int/lit8 v15, v2, 0x1

    .line 2399
    .local v15, "var16":I
    if-lt v15, v7, :cond_14

    .line 2400
    goto :goto_e

    .line 2404
    :cond_14
    cmpl-float v16, v5, v14

    if-ltz v16, :cond_19

    if-le v15, v8, :cond_19

    .line 2405
    if-nez v12, :cond_15

    .line 2406
    nop

    .line 2468
    .end local v12    # "var17":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v15    # "var16":I
    :goto_e
    move/from16 v17, v8

    move-object/from16 v16, v11

    move v12, v14

    goto/16 :goto_11

    .line 2409
    .restart local v12    # "var17":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local v15    # "var16":I
    :cond_15
    move/from16 v16, v5

    .line 2410
    .local v16, "var13":F
    move v2, v6

    .line 2411
    move-object v11, v12

    .line 2412
    move/from16 p1, v2

    .end local v2    # "var2":I
    .local p1, "var2":I
    iget v2, v12, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-eq v15, v2, :cond_16

    .line 2413
    move/from16 v2, p1

    move/from16 v17, v8

    goto/16 :goto_10

    .line 2416
    :cond_16
    move/from16 v16, v5

    .line 2417
    move v2, v6

    .line 2418
    .end local p1    # "var2":I
    .restart local v2    # "var2":I
    move-object v11, v12

    .line 2419
    move/from16 p1, v2

    .end local v2    # "var2":I
    .restart local p1    # "var2":I
    iget-boolean v2, v12, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->scrolling:Z

    if-eqz v2, :cond_17

    .line 2420
    move/from16 v2, p1

    move/from16 v17, v8

    goto/16 :goto_10

    .line 2423
    :cond_17
    iget-object v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2424
    iget-object v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move/from16 v17, v8

    .end local v8    # "var7":I
    .local v17, "var7":I
    iget-object v8, v12, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, v1, v15, v8}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2425
    move v2, v5

    .line 2426
    .end local v16    # "var13":F
    .local v2, "var13":F
    move v8, v6

    .line 2427
    .end local p1    # "var2":I
    .local v8, "var2":I
    move/from16 p1, v2

    .end local v2    # "var13":F
    .local p1, "var13":F
    iget-object v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_18

    .line 2428
    iget-object v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2429
    .end local v11    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v2, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move/from16 v16, v5

    .line 2430
    .end local p1    # "var13":F
    .restart local v16    # "var13":F
    move v8, v6

    .line 2431
    move-object v11, v2

    move v2, v8

    goto/16 :goto_10

    .line 2427
    .end local v2    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v16    # "var13":F
    .restart local v11    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local p1    # "var13":F
    :cond_18
    move/from16 v16, p1

    move v2, v8

    goto/16 :goto_f

    .line 2404
    .end local v17    # "var7":I
    .end local p1    # "var13":F
    .local v2, "var2":I
    .local v8, "var7":I
    :cond_19
    move/from16 v17, v8

    .line 2433
    .end local v8    # "var7":I
    .restart local v17    # "var7":I
    if-eqz v12, :cond_1b

    iget v8, v12, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    if-ne v15, v8, :cond_1b

    .line 2434
    iget v8, v12, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v8

    .line 2435
    add-int/lit8 v6, v6, 0x1

    .line 2436
    move v8, v5

    .line 2437
    .local v8, "var13":F
    move v2, v6

    .line 2438
    move/from16 p1, v2

    .end local v2    # "var2":I
    .local p1, "var2":I
    iget-object v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_1a

    .line 2439
    iget-object v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2440
    .end local v11    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v2, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move/from16 v16, v5

    .line 2441
    .end local v8    # "var13":F
    .restart local v16    # "var13":F
    move v8, v6

    .line 2442
    .end local p1    # "var2":I
    .local v8, "var2":I
    move-object v11, v2

    move v2, v8

    goto :goto_10

    .line 2438
    .end local v2    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v16    # "var13":F
    .local v8, "var13":F
    .restart local v11    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local p1    # "var2":I
    :cond_1a
    move/from16 v2, p1

    move/from16 v16, v8

    goto :goto_f

    .line 2445
    .end local v8    # "var13":F
    .end local p1    # "var2":I
    .local v2, "var2":I
    :cond_1b
    invoke-virtual {v1, v15, v6}, Landroidx/viewpager/widget/SeslViewPager;->addNewItem(II)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v11

    .line 2446
    add-int/lit8 v6, v6, 0x1

    .line 2447
    iget v8, v11, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v8

    .line 2448
    move v8, v5

    .line 2449
    .restart local v8    # "var13":F
    move v2, v6

    .line 2450
    move/from16 p1, v2

    .end local v2    # "var2":I
    .restart local p1    # "var2":I
    iget-object v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_1c

    .line 2451
    iget-object v2, v1, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2452
    .end local v11    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v2, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    move v11, v6

    .line 2453
    .end local p1    # "var2":I
    .local v11, "var2":I
    move/from16 v16, v5

    .line 2454
    .end local v8    # "var13":F
    .restart local v16    # "var13":F
    move/from16 v20, v11

    move-object v11, v2

    move/from16 v2, v20

    goto :goto_10

    .line 2450
    .end local v2    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v16    # "var13":F
    .restart local v8    # "var13":F
    .local v11, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .restart local p1    # "var2":I
    :cond_1c
    move/from16 v2, p1

    move/from16 v16, v8

    .line 2458
    .end local v8    # "var13":F
    .end local p1    # "var2":I
    .local v2, "var2":I
    .restart local v16    # "var13":F
    :goto_f
    const/4 v8, 0x0

    move-object v11, v8

    .line 2461
    :goto_10
    move/from16 v5, v16

    .line 2462
    move v6, v2

    .line 2463
    move-object v12, v11

    .line 2464
    move v2, v15

    move/from16 v8, v17

    goto/16 :goto_d

    .line 2381
    .end local v11    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v14    # "var12":F
    .end local v15    # "var16":I
    .end local v17    # "var7":I
    .local v8, "var7":I
    .local v12, "var12":F
    .local v16, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    :cond_1d
    move/from16 v17, v8

    .line 2468
    .end local v8    # "var7":I
    .restart local v17    # "var7":I
    :goto_11
    invoke-virtual {v1, v9, v0, v4}, Landroidx/viewpager/widget/SeslViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/SeslViewPager$ItemInfo;ILandroidx/viewpager/widget/SeslViewPager$ItemInfo;)V

    .line 2469
    iget-object v8, v1, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v11, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    iget-object v14, v9, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v1, v11, v14}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v5, v16

    goto :goto_12

    .line 2280
    .end local v10    # "var11":I
    .end local v12    # "var12":F
    .end local v13    # "var14":I
    .end local v16    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v17    # "var7":I
    .end local v19    # "var5":I
    .local v5, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .local v6, "var5":I
    .restart local v8    # "var7":I
    :cond_1e
    move/from16 v19, v6

    move/from16 v17, v8

    .line 2472
    .end local v6    # "var5":I
    .end local v8    # "var7":I
    .restart local v17    # "var7":I
    .restart local v19    # "var5":I
    :goto_12
    iget-object v6, v1, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 2473
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v2

    .line 2475
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_20

    .line 2476
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2477
    .local v6, "var20":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    .line 2478
    .local v8, "var22":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    iput v0, v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->childIndex:I

    .line 2479
    iget-boolean v10, v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_1f

    iget v10, v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->widthFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1f

    .line 2480
    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/SeslViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v4

    .line 2481
    if-eqz v4, :cond_1f

    .line 2482
    iget v10, v4, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    iput v10, v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->widthFactor:F

    .line 2483
    iget v10, v4, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iput v10, v8, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->position:I

    .line 2475
    .end local v6    # "var20":Landroid/view/View;
    .end local v8    # "var22":Landroidx/viewpager/widget/SeslViewPager$LayoutParams;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2488
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->sortChildDrawingOrder()V

    .line 2489
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 2490
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->findFocus()Landroid/view/View;

    move-result-object v6

    .line 2491
    .local v6, "var23":Landroid/view/View;
    if-eqz v6, :cond_21

    .line 2492
    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/SeslViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v5

    goto :goto_14

    .line 2494
    :cond_21
    const/4 v5, 0x0

    .line 2497
    :goto_14
    if-eqz v5, :cond_22

    iget v8, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget v10, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-eq v8, v10, :cond_25

    .line 2498
    :cond_22
    const/4 v0, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_25

    .line 2499
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2500
    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/SeslViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v4

    .line 2501
    if-eqz v4, :cond_23

    iget v8, v4, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget v10, v1, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-ne v8, v10, :cond_23

    invoke-virtual {v6, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 2502
    goto :goto_17

    .line 2498
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2231
    .end local v0    # "var1":I
    .end local v9    # "var10":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v17    # "var7":I
    .end local v19    # "var5":I
    .local v5, "var1":I
    .local v6, "var5":I
    .local v8, "var7":I
    :cond_24
    move/from16 v19, v6

    move/from16 v17, v8

    .end local v6    # "var5":I
    .end local v8    # "var7":I
    .restart local v17    # "var7":I
    .restart local v19    # "var5":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2234
    .local v0, "var24":Ljava/lang/String;
    goto :goto_16

    .line 2232
    .end local v0    # "var24":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2233
    .local v0, "var18":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 2236
    .local v0, "var24":Ljava/lang/String;
    :goto_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2237
    .local v6, "var21":Ljava/lang/StringBuilder;
    const-string v8, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    iget v8, v1, Landroidx/viewpager/widget/SeslViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2239
    const-string v8, ", found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2241
    const-string v8, " Pager id: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    const-string v8, " Pager class: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    const-class v8, Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2245
    const-string v8, " Problematic adapter: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    iget-object v8, v1, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2247
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2510
    .end local v5    # "var1":I
    .end local v6    # "var21":Ljava/lang/StringBuilder;
    .end local v7    # "var6":I
    .end local v17    # "var7":I
    .end local v19    # "var5":I
    .local v0, "var1":I
    :cond_25
    :goto_17
    return-void
.end method

.method public final recomputeScrollPosition(IIII)V
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 2513
    if-lez p2, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2514
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2515
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 2517
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingLeft()I

    move-result v0

    .line 2518
    .local v0, "var5":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingRight()I

    move-result v1

    .line 2519
    .local v1, "var6":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingLeft()I

    move-result v2

    .line 2520
    .local v2, "var7":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingRight()I

    move-result v3

    .line 2521
    .local v3, "var8":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-int v5, p2, v2

    sub-int/2addr v5, v3

    add-int/2addr v5, p4

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-int v5, p1, v0

    sub-int/2addr v5, v1

    add-int/2addr v5, p3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroidx/viewpager/widget/SeslViewPager;->scrollTo(II)V

    .line 2522
    .end local v0    # "var5":I
    .end local v1    # "var6":I
    .end local v2    # "var7":I
    .end local v3    # "var8":I
    goto :goto_1

    .line 2524
    :cond_1
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->infoForPosition(I)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v0

    .line 2526
    .local v0, "var9":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-eqz v0, :cond_2

    .line 2527
    iget v1, v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    iget v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .local v1, "var10":F
    goto :goto_0

    .line 2529
    .end local v1    # "var10":F
    :cond_2
    const/4 v1, 0x0

    .line 2532
    .restart local v1    # "var10":F
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    .line 2533
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v2

    if-eq p1, v2, :cond_3

    .line 2534
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->completeScroll(Z)V

    .line 2535
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroidx/viewpager/widget/SeslViewPager;->scrollTo(II)V

    .line 2539
    .end local v0    # "var9":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    .end local v1    # "var10":F
    :cond_3
    :goto_1
    return-void
.end method

.method public final removeNonDecorViews()V
    .locals 3

    .line 2543
    const/4 v0, 0x0

    .local v0, "var1":I
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2544
    move v1, v0

    .line 2545
    .local v1, "var2":I
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;

    iget-boolean v2, v2, Landroidx/viewpager/widget/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v2, :cond_0

    .line 2546
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->removeViewAt(I)V

    .line 2547
    add-int/lit8 v1, v0, -0x1

    .line 2543
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 2551
    .end local v0    # "var1":I
    .end local v1    # "var2":I
    :cond_1
    return-void
.end method

.method public removeOnAdapterChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;

    .line 2554
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 2555
    .local v0, "var2":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 2556
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2559
    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 2562
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 2563
    .local v0, "var2":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 2564
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2567
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 2570
    iget-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 2571
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/SeslViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 2573
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2576
    :goto_0
    return-void
.end method

.method public final requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 2579
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2580
    .local v0, "var2":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2581
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2584
    :cond_0
    return-void
.end method

.method public final resetTouch()Z
    .locals 1

    .line 2587
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mActivePointerId:I

    .line 2588
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->endDrag()V

    .line 2589
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2590
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 2592
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mLeftEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mRightEdge:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2593
    const/4 v0, 0x0

    .local v0, "var1":Z
    goto :goto_0

    .line 2595
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x1

    .line 2598
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public final scrollToItem(IZIZ)V
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # Z
    .param p3, "var3"    # I
    .param p4, "var4"    # Z

    .line 2602
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/SeslViewPager;->infoForPosition(I)Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    move-result-object v0

    .line 2604
    .local v0, "var5":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    if-eqz v0, :cond_1

    .line 2605
    invoke-direct {p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v1

    int-to-float v1, v1

    .line 2606
    .local v1, "var6":F
    iget v2, v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->offset:F

    iget v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstOffset:F

    iget v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mLastOffset:F

    invoke-static {v2, v3, v4}, Landroidx/viewpager/widget/SeslViewPager;->constrain(FFF)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 2607
    .local v2, "var7":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2608
    const/high16 v3, 0x1000000

    iget v4, v0, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v2

    .line 2610
    .end local v1    # "var6":F
    :cond_0
    goto :goto_0

    .line 2611
    .end local v2    # "var7":I
    :cond_1
    const/4 v2, 0x0

    .line 2614
    .restart local v2    # "var7":I
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2615
    invoke-virtual {p0, v2, v1, p3}, Landroidx/viewpager/widget/SeslViewPager;->smoothScrollTo(III)V

    .line 2616
    if-eqz p4, :cond_4

    .line 2617
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/SeslViewPager;->dispatchOnPageSelected(I)V

    goto :goto_1

    .line 2620
    :cond_2
    if-eqz p4, :cond_3

    .line 2621
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/SeslViewPager;->dispatchOnPageSelected(I)V

    .line 2624
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->completeScroll(Z)V

    .line 2625
    invoke-virtual {p0, v2, v1}, Landroidx/viewpager/widget/SeslViewPager;->scrollTo(II)V

    .line 2626
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->pageScrolled(I)Z

    .line 2629
    :cond_4
    :goto_1
    return-void
.end method

.method public final seslGetScrollStart()I
    .locals 2

    .line 2632
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->seslIsLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000000

    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final seslIsLayoutRtl()Z
    .locals 3

    .line 2636
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getLayoutDirection()I

    move-result v0

    .line 2637
    .local v0, "var1":I
    const/4 v1, 0x1

    .line 2638
    .local v1, "var2":Z
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2639
    const/4 v1, 0x0

    .line 2642
    :cond_0
    return v1
.end method

.method public seslSetConfigurationChanged(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 2646
    iput-boolean p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsChangedConfiguration:Z

    .line 2647
    return-void
.end method

.method public seslSetSupportedMouseWheelEvent(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 2650
    iput-boolean p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mIsMouseWheelEventSupport:Z

    .line 2651
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 9
    .param p1, "var1"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 2654
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2655
    .local v0, "var2":Landroidx/viewpager/widget/PagerAdapter;
    const/4 v1, 0x0

    .line 2657
    .local v1, "var3":B
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2658
    move-object v4, v2

    check-cast v4, Landroid/database/DataSetObserver;

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 2659
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 2661
    const/4 v4, 0x0

    .local v4, "var4":I
    :goto_0
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2662
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    .line 2663
    .local v5, "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    iget-object v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v7, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->position:I

    iget-object v8, v5, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2661
    .end local v5    # "var8":Landroidx/viewpager/widget/SeslViewPager$ItemInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2666
    :cond_0
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 2667
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2668
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->removeNonDecorViews()V

    .line 2669
    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 2670
    invoke-virtual {p0, v3, v3}, Landroidx/viewpager/widget/SeslViewPager;->scrollTo(II)V

    .line 2673
    .end local v4    # "var4":I
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2674
    iput-object p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2675
    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mExpectedAdapterCount:I

    .line 2676
    if-eqz p1, :cond_5

    .line 2677
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mObserver:Landroidx/viewpager/widget/SeslViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 2678
    new-instance v4, Landroidx/viewpager/widget/SeslViewPager$PagerObserver;

    invoke-direct {v4, p0}, Landroidx/viewpager/widget/SeslViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/SeslViewPager;)V

    iput-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mObserver:Landroidx/viewpager/widget/SeslViewPager$PagerObserver;

    .line 2681
    :cond_2
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mObserver:Landroidx/viewpager/widget/SeslViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 2682
    iput-boolean v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mPopulatePending:Z

    .line 2683
    iget-boolean v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    .line 2684
    .local v4, "var5":Z
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    .line 2685
    iget-object v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    iput v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mExpectedAdapterCount:I

    .line 2686
    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredCurItem:I

    if-ltz v6, :cond_3

    .line 2687
    iget-object v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v7, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v8, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v6, v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 2688
    iget v6, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v6, v3, v5}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItemInternal(IZZ)V

    .line 2689
    const/4 v3, -0x1

    iput v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredCurItem:I

    .line 2690
    iput-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 2691
    iput-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 2692
    :cond_3
    if-nez v4, :cond_4

    .line 2693
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->populate()V

    goto :goto_1

    .line 2695
    :cond_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->requestLayout()V

    .line 2699
    .end local v4    # "var5":Z
    :cond_5
    :goto_1
    iget-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 2700
    .local v2, "var6":Ljava/util/List;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2701
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2703
    .local v3, "var7":I
    move v4, v1

    .local v4, "var4":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 2704
    iget-object v5, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;

    invoke-interface {v5, p0, v0, p1}, Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroidx/viewpager/widget/SeslViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2703
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2708
    .end local v3    # "var7":I
    .end local v4    # "var4":I
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 2711
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mPopulatePending:Z

    .line 2712
    iget-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItemInternal(IZZ)V

    .line 2713
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 2716
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mPopulatePending:Z

    .line 2717
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItemInternal(IZZ)V

    .line 2718
    return-void
.end method

.method public setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 2721
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItemInternal(IZZI)V

    .line 2722
    return-void
.end method

.method public setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z
    .param p4, "var4"    # I

    .line 2725
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2726
    .local v0, "var5":Landroidx/viewpager/widget/PagerAdapter;
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 2727
    if-nez p3, :cond_0

    iget v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2728
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3

    .line 2730
    :cond_0
    const/4 p3, 0x1

    .line 2732
    const/4 v1, 0x1

    if-gez p1, :cond_1

    .line 2733
    const/4 v2, 0x0

    .local v2, "var6":I
    goto :goto_0

    .line 2735
    .end local v2    # "var6":I
    :cond_1
    move v2, p1

    .line 2736
    .restart local v2    # "var6":I
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 2737
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 2741
    :cond_2
    :goto_0
    iget v3, p0, Landroidx/viewpager/widget/SeslViewPager;->mOffscreenPageLimit:I

    .line 2742
    .local v3, "var7":I
    iget p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 2743
    add-int v4, p1, v3

    if-gt v2, v4, :cond_3

    sub-int v4, p1, v3

    if-ge v2, v4, :cond_4

    .line 2744
    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 2745
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;

    iput-boolean v1, v4, Landroidx/viewpager/widget/SeslViewPager$ItemInfo;->scrolling:Z

    .line 2744
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2749
    :cond_4
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    if-ne v1, v2, :cond_5

    .line 2750
    const/4 p3, 0x0

    .line 2753
    :cond_5
    iget-boolean v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_7

    .line 2754
    iput v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    .line 2755
    if-eqz p3, :cond_6

    .line 2756
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->dispatchOnPageSelected(I)V

    .line 2759
    :cond_6
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->requestLayout()V

    goto :goto_2

    .line 2761
    :cond_7
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->populate(I)V

    .line 2762
    invoke-virtual {p0, v2, p2, p4, p3}, Landroidx/viewpager/widget/SeslViewPager;->scrollToItem(IZIZ)V

    .line 2765
    .end local v2    # "var6":I
    .end local v3    # "var7":I
    :goto_2
    goto :goto_3

    .line 2767
    :cond_8
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 2769
    :goto_3
    return-void
.end method

.method public setDragInGutterEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 2772
    iput-boolean p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mDragInGutterEnabled:Z

    .line 2773
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 2776
    move v0, p1

    .line 2777
    .local v0, "var2":I
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 2778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2779
    .local v2, "var3":Ljava/lang/StringBuilder;
    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2781
    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2783
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ViewPager"

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    const/4 v0, 0x1

    .line 2787
    .end local v2    # "var3":Ljava/lang/StringBuilder;
    :cond_0
    iget v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mOffscreenPageLimit:I

    if-eq v0, v1, :cond_1

    .line 2788
    iput v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mOffscreenPageLimit:I

    .line 2789
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->populate()V

    .line 2792
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2796
    iput-object p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;

    .line 2797
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 2800
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    .line 2801
    .local v0, "var2":I
    iput p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    .line 2802
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getWidth()I

    move-result v1

    .line 2803
    .local v1, "var3":I
    invoke-virtual {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/SeslViewPager;->recomputeScrollPosition(IIII)V

    .line 2804
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->requestLayout()V

    .line 2805
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 2808
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2809
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 2812
    iput-object p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 2813
    if-eqz p1, :cond_0

    .line 2814
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->refreshDrawableState()V

    .line 2818
    :cond_0
    if-nez p1, :cond_1

    .line 2819
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 2821
    .end local v0    # "var2":Z
    :cond_1
    const/4 v0, 0x0

    .line 2824
    .restart local v0    # "var2":Z
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->setWillNotDraw(Z)V

    .line 2825
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->invalidate()V

    .line 2826
    return-void
.end method

.method public setScrollState(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 2829
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mScrollState:I

    if-eq v0, p1, :cond_2

    .line 2830
    iput p1, p0, Landroidx/viewpager/widget/SeslViewPager;->mScrollState:I

    .line 2831
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mPageTransformer:Landroidx/viewpager/widget/SeslViewPager$PageTransformer;

    if-eqz v0, :cond_1

    .line 2833
    if-eqz p1, :cond_0

    .line 2834
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 2836
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 2839
    .restart local v0    # "var2":Z
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/SeslViewPager;->enableLayers(Z)V

    .line 2842
    .end local v0    # "var2":Z
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/SeslViewPager;->dispatchOnScrollStateChanged(I)V

    .line 2844
    :cond_2
    return-void
.end method

.method public smoothScrollTo(III)V
    .locals 19
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 2847
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2848
    invoke-direct {v0, v2}, Landroidx/viewpager/widget/SeslViewPager;->setScrollingCacheEnabled(Z)V

    move/from16 v18, p1

    move/from16 v13, p2

    goto/16 :goto_4

    .line 2850
    :cond_0
    iget-object v1, v0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2852
    .local v1, "var4":Landroid/widget/Scroller;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2853
    const/4 v3, 0x1

    .local v3, "var5":Z
    goto :goto_0

    .line 2855
    .end local v3    # "var5":Z
    :cond_1
    const/4 v3, 0x0

    .line 2859
    .restart local v3    # "var5":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 2860
    iget-boolean v4, v0, Landroidx/viewpager/widget/SeslViewPager;->mIsScrollStarted:Z

    if-eqz v4, :cond_2

    .line 2861
    iget-object v4, v0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .local v4, "var12":I
    goto :goto_1

    .line 2863
    .end local v4    # "var12":I
    :cond_2
    iget-object v4, v0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getStartX()I

    move-result v4

    .line 2866
    .restart local v4    # "var12":I
    :goto_1
    iget-object v5, v0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2867
    invoke-direct {v0, v2}, Landroidx/viewpager/widget/SeslViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 2869
    .end local v4    # "var12":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollX()I

    move-result v4

    .line 2872
    .restart local v4    # "var12":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getScrollY()I

    move-result v11

    .line 2873
    .local v11, "var6":I
    sub-int v12, p1, v4

    .line 2874
    .local v12, "var7":I
    sub-int v13, p2, v11

    .line 2875
    .end local p2    # "var2":I
    .local v13, "var2":I
    if-nez v12, :cond_4

    if-nez v13, :cond_4

    .line 2876
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/SeslViewPager;->completeScroll(Z)V

    .line 2877
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->populate()V

    .line 2878
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/SeslViewPager;->setScrollState(I)V

    move/from16 v18, p1

    goto :goto_4

    .line 2880
    :cond_4
    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroidx/viewpager/widget/SeslViewPager;->setScrollingCacheEnabled(Z)V

    .line 2881
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/SeslViewPager;->setScrollState(I)V

    .line 2882
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/SeslViewPager;->getClientWidth()I

    move-result v14

    .line 2883
    .local v14, "var8":I
    div-int/lit8 v5, v14, 0x2

    .line 2884
    .end local p1    # "var1":I
    .local v5, "var1":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    .line 2885
    .local v6, "var9":F
    int-to-float v15, v14

    .line 2886
    .local v15, "var10":F
    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v8, v6, v7

    div-float/2addr v8, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 2887
    .local v8, "var11":F
    int-to-float v6, v5

    .line 2888
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/SeslViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v16

    .line 2889
    .end local v8    # "var11":F
    .local v16, "var11":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2890
    if-lez v5, :cond_5

    .line 2891
    mul-float v7, v16, v6

    add-float/2addr v7, v6

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    move/from16 v17, v6

    .end local v5    # "var1":I
    .local v7, "var1":I
    goto :goto_3

    .line 2893
    .end local v7    # "var1":I
    .restart local v5    # "var1":I
    :cond_5
    iget-object v8, v0, Landroidx/viewpager/widget/SeslViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v9, v0, Landroidx/viewpager/widget/SeslViewPager;->mCurItem:I

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    .line 2894
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v9, v15, v6

    iget v10, v0, Landroidx/viewpager/widget/SeslViewPager;->mPageMargin:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float/2addr v8, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v8, v7

    float-to-int v7, v8

    move/from16 v17, v6

    .line 2897
    .end local v5    # "var1":I
    .end local v6    # "var9":F
    .restart local v7    # "var1":I
    .local v17, "var9":F
    :goto_3
    const/16 v5, 0x258

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 2898
    .end local v7    # "var1":I
    .local v18, "var1":I
    iput-boolean v2, v0, Landroidx/viewpager/widget/SeslViewPager;->mIsScrollStarted:Z

    .line 2899
    iget-object v5, v0, Landroidx/viewpager/widget/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    move v6, v4

    move v7, v11

    move v8, v12

    move v9, v13

    move/from16 v10, v18

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2900
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2903
    .end local v1    # "var4":Landroid/widget/Scroller;
    .end local v3    # "var5":Z
    .end local v4    # "var12":I
    .end local v11    # "var6":I
    .end local v12    # "var7":I
    .end local v14    # "var8":I
    .end local v15    # "var10":F
    .end local v16    # "var11":F
    .end local v17    # "var9":F
    :goto_4
    return-void
.end method

.method public final sortChildDrawingOrder()V
    .locals 5

    .line 2906
    iget v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 2907
    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 2908
    .local v0, "var1":Ljava/util/ArrayList;
    if-nez v0, :cond_0

    .line 2909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/viewpager/widget/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 2911
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2914
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v1

    .line 2916
    .local v1, "var2":I
    const/4 v2, 0x0

    .local v2, "var3":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2917
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2918
    .local v3, "var4":Landroid/view/View;
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2916
    .end local v3    # "var4":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2921
    .end local v2    # "var3":I
    :cond_1
    iget-object v2, p0, Landroidx/viewpager/widget/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v3, Landroidx/viewpager/widget/SeslViewPager;->sPositionComparator:Landroidx/viewpager/widget/SeslViewPager$ViewPositionComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2924
    .end local v0    # "var1":Ljava/util/ArrayList;
    .end local v1    # "var2":I
    :cond_2
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 2928
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 2929
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 2931
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 2934
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method
