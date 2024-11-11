.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
.super Ljava/lang/Object;
.source "SeslRecyclerViewFastScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x0

.field private static final DURATION_FADE_IN:I = 0xa7

.field private static final DURATION_FADE_OUT:I = 0xa7

.field private static final DURATION_RESIZE:I = 0x64

.field public static final EFFECT_STATE_CLOSE:I = 0x0

.field public static final EFFECT_STATE_OPEN:I = 0x1

.field private static final FADE_TIMEOUT:J = 0x9c4L

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x1

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslFastScroller"

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalBottomPadding:I

.field private mAdditionalTouchArea:F

.field private mAlwaysShow:Z

.field private mColorPrimary:I

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEffectState:I

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mImmersiveBottomPadding:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private mListAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOldThumbPosition:F

.field private mOrientation:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollY:F

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMarginEnd:I

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mTrackPadding:I

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    .line 134
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    .line 144
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$2;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    .line 154
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$3;

    const-string v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    .line 164
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$4;

    const-string v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V
    .locals 7
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "styleResId"    # I

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 73
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 74
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 76
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 78
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 90
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 94
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 101
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    .line 107
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 108
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    .line 115
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 174
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$5;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;)V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 180
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$6;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;)V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    .line 192
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getScrollBarStyle()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 195
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 196
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    .line 197
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 198
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 200
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 202
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 204
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setStyle(I)V

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    .line 207
    .local v6, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 208
    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 209
    invoke-virtual {v6, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 210
    invoke-virtual {v6, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 211
    invoke-virtual {v6, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 212
    invoke-virtual {v6, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070210

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 214
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070211

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 215
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07020f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 216
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070214

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    .line 217
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070212

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    .line 218
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    .line 219
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 220
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {v5, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 222
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    .line 223
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getVerticalScrollbarPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    .line 49
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .line 1234
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1238
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v2, v2, [I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .line 1230
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 463
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 464
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 465
    return-void
.end method

.method private beginDrag()V
    .locals 2

    .line 1039
    const-string v0, "SeslFastScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 1042
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1045
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->cancelFling()V

    .line 1046
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1047
    return-void
.end method

.method private cancelFling()V
    .locals 8

    .line 1025
    sget-wide v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1026
    .local v0, "cancelFling":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1027
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1028
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .line 1031
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 1032
    return-void
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 1253
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 1254
    return p1

    .line 1256
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

    .line 1245
    if-ge p0, p1, :cond_0

    .line 1246
    return p1

    .line 1248
    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 429
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 430
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 431
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 433
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 434
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 435
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 436
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 437
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 17
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 949
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 950
    .local v4, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v4, :cond_0

    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-nez v5, :cond_1

    .line 951
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 954
    :cond_1
    const/4 v5, 0x0

    if-eqz v2, :cond_10

    if-nez v3, :cond_2

    goto/16 :goto_8

    .line 958
    :cond_2
    if-eqz v4, :cond_e

    iget-object v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v6, :cond_e

    array-length v6, v6

    if-lez v6, :cond_e

    iget-boolean v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    if-eqz v6, :cond_e

    .line 959
    iget v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    sub-int/2addr v1, v6

    .line 960
    .end local p1    # "firstVisibleItem":I
    .local v1, "firstVisibleItem":I
    if-gez v1, :cond_3

    .line 961
    return v5

    .line 964
    :cond_3
    sub-int/2addr v3, v6

    .line 965
    .end local p3    # "totalItemCount":I
    .local v3, "totalItemCount":I
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 966
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 969
    :cond_4
    iget-object v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .local v6, "incrementalPos":F
    goto :goto_1

    .line 967
    .end local v6    # "incrementalPos":F
    :cond_5
    :goto_0
    const/4 v6, 0x0

    .line 972
    .restart local v6    # "incrementalPos":F
    :goto_1
    invoke-interface {v4, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v7

    .line 973
    .local v7, "section":I
    invoke-interface {v4, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 974
    .local v8, "sectionPos":I
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    array-length v9, v9

    .line 975
    .local v9, "sectionCount":I
    add-int/lit8 v10, v9, -0x1

    if-ge v7, v10, :cond_7

    .line 976
    add-int/lit8 v10, v7, 0x1

    if-ge v10, v9, :cond_6

    .line 977
    add-int/lit8 v10, v7, 0x1

    invoke-interface {v4, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .local v10, "nextSectionPos":I
    goto :goto_2

    .line 979
    .end local v10    # "nextSectionPos":I
    :cond_6
    add-int/lit8 v10, v3, -0x1

    .line 981
    .restart local v10    # "nextSectionPos":I
    :goto_2
    sub-int v11, v10, v8

    .local v11, "positionsInSection":I
    goto :goto_3

    .line 983
    .end local v10    # "nextSectionPos":I
    .end local v11    # "positionsInSection":I
    :cond_7
    sub-int v11, v3, v8

    .line 985
    .restart local v11    # "positionsInSection":I
    :goto_3
    if-nez v11, :cond_8

    .line 986
    const/4 v10, 0x0

    .local v10, "posWithinSection":F
    goto :goto_4

    .line 988
    .end local v10    # "posWithinSection":F
    :cond_8
    int-to-float v10, v1

    add-float/2addr v10, v6

    int-to-float v12, v8

    sub-float/2addr v10, v12

    int-to-float v12, v11

    div-float/2addr v10, v12

    .line 991
    .restart local v10    # "posWithinSection":F
    :goto_4
    int-to-float v12, v7

    add-float/2addr v12, v10

    int-to-float v13, v9

    div-float/2addr v12, v13

    .line 992
    .local v12, "result":F
    if-lez v1, :cond_d

    add-int v13, v1, v2

    if-eq v13, v3, :cond_9

    move/from16 p1, v1

    goto :goto_7

    .line 996
    :cond_9
    iget-object v13, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    add-int/lit8 v14, v2, -0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 997
    .local v13, "lastChild":Landroid/view/View;
    iget-object v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v14

    .line 998
    .local v14, "bottomPadding":I
    iget-object v15, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v15}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getClipToPadding()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 999
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 1000
    .local v15, "maxSize":I
    move/from16 p1, v1

    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v1, v1, v16

    .local v1, "currentVisibleSize":I
    goto :goto_5

    .line 1002
    .end local v15    # "maxSize":I
    .end local p1    # "firstVisibleItem":I
    .local v1, "firstVisibleItem":I
    :cond_a
    move/from16 p1, v1

    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v15, v1, v14

    .line 1003
    .restart local v15    # "maxSize":I
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v1, v1, v16

    .line 1005
    .local v1, "currentVisibleSize":I
    :goto_5
    if-lez v1, :cond_c

    if-gtz v15, :cond_b

    move/from16 p3, v1

    goto :goto_6

    .line 1009
    :cond_b
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    int-to-float v0, v1

    move/from16 p3, v1

    .end local v1    # "currentVisibleSize":I
    .local p3, "currentVisibleSize":I
    int-to-float v1, v15

    div-float/2addr v0, v1

    mul-float v16, v16, v0

    add-float v16, v12, v16

    return v16

    .line 1005
    .end local p3    # "currentVisibleSize":I
    .restart local v1    # "currentVisibleSize":I
    :cond_c
    move/from16 p3, v1

    .line 1006
    .end local v1    # "currentVisibleSize":I
    .restart local p3    # "currentVisibleSize":I
    :goto_6
    return v12

    .line 992
    .end local v13    # "lastChild":Landroid/view/View;
    .end local v14    # "bottomPadding":I
    .end local v15    # "maxSize":I
    .end local p1    # "firstVisibleItem":I
    .end local p3    # "currentVisibleSize":I
    .local v1, "firstVisibleItem":I
    :cond_d
    move/from16 p1, v1

    .line 993
    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    :goto_7
    return v12

    .line 1010
    .end local v3    # "totalItemCount":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "incrementalPos":F
    .end local v7    # "section":I
    .end local v8    # "sectionPos":I
    .end local v9    # "sectionCount":I
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .local p3, "totalItemCount":I
    :cond_e
    if-eq v2, v3, :cond_f

    .line 1011
    int-to-float v0, v1

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v0, v5

    return v0

    .line 1020
    :cond_f
    return v5

    .line 955
    :cond_10
    :goto_8
    return v5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    .line 939
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 940
    return v1

    .line 942
    :cond_0
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float v2, p1, v2

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 762
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v1

    .line 763
    .local v1, "adapter":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    .line 764
    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 765
    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 766
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 768
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 769
    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 771
    :goto_0
    return-void
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1216
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1217
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 1218
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1219
    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1220
    .local v4, "anim":Landroid/animation/Animator;
    if-nez v1, :cond_0

    .line 1221
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    .line 1223
    :cond_0
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1218
    .end local v4    # "anim":Landroid/animation/Animator;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1226
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1194
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPointInsideX(F)Z
    .locals 4
    .param p1, "x"    # F

    .line 1198
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1200
    return v2

    .line 1202
    :cond_0
    return v1

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    add-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1204
    return v1

    .line 1206
    :cond_2
    return v2
.end method

.method private isPointInsideY(F)Z
    .locals 2
    .param p1, "y"    # F

    .line 1211
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 1212
    .local v0, "offset":F
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private layoutThumb()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 588
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 589
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 590
    return-void
.end method

.method private layoutTrack()V
    .locals 10

    .line 595
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 596
    .local v0, "track":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 597
    .local v1, "thumb":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 599
    .local v2, "container":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 600
    .local v3, "widthMeasureSpec":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 601
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 603
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 604
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    add-int/2addr v5, v6

    .line 605
    .local v5, "top":I
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v6, v7

    .local v6, "bottom":I
    goto :goto_0

    .line 607
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 608
    .local v5, "thumbHalfHeight":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    add-int/2addr v6, v7

    .line 609
    .local v6, "top":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    iget v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v7, v8

    move v5, v6

    move v6, v7

    .line 611
    .local v5, "top":I
    .local v6, "bottom":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 612
    .local v7, "trackWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 613
    .local v8, "left":I
    add-int v9, v8, v7

    invoke-virtual {v0, v8, v5, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 614
    return-void
.end method

.method public static makeSafeMeasureSpec(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .line 1261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1262
    .local v0, "useZeroUnspecifiedMeasureSpec":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1265
    :cond_1
    return v1

    .line 1263
    :cond_2
    :goto_1
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 534
    move-object/from16 v0, p2

    if-nez v0, :cond_0

    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "marginLeft":I
    const/4 v2, 0x0

    .line 537
    .local v2, "marginTop":I
    const/4 v3, 0x0

    .local v3, "marginRight":I
    goto :goto_0

    .line 539
    .end local v1    # "marginLeft":I
    .end local v2    # "marginTop":I
    .end local v3    # "marginRight":I
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 540
    .restart local v1    # "marginLeft":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 541
    .restart local v2    # "marginTop":I
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 544
    .restart local v3    # "marginRight":I
    :goto_0
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 545
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 546
    .local v6, "containerWidth":I
    move-object/from16 v7, p1

    .line 547
    .local v7, "view":Landroid/view/View;
    sub-int v8, v6, v1

    sub-int/2addr v8, v3

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v10, -0x80000000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 548
    .local v8, "widthMeasureSpec":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static {v10, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->makeSafeMeasureSpec(II)I

    move-result v9

    .line 549
    .local v9, "heightMeasureSpec":I
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 551
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 552
    .local v10, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 553
    .local v11, "width":I
    div-int/lit8 v12, v10, 0xa

    add-int/2addr v12, v2

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    .line 554
    .local v12, "top":I
    sub-int v13, v6, v11

    div-int/lit8 v13, v13, 0x2

    iget v14, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    .line 555
    .local v13, "left":I
    move-object/from16 v14, p3

    .line 556
    .local v14, "rect":Landroid/graphics/Rect;
    add-int v15, v13, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v0, v12, v16

    invoke-virtual {v14, v13, v12, v15, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 557
    return-void
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 468
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 469
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 470
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 471
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 472
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 473
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 474
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 478
    :goto_0
    return-void
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 488
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v1, :cond_1

    .line 489
    if-nez p2, :cond_0

    .line 490
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 491
    .local v1, "marginRight":I
    const/4 v2, 0x0

    .local v2, "marginLeft":I
    goto :goto_0

    .line 493
    .end local v1    # "marginRight":I
    .end local v2    # "marginLeft":I
    :cond_0
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 494
    .restart local v1    # "marginRight":I
    const/4 v2, 0x0

    .restart local v2    # "marginLeft":I
    goto :goto_0

    .line 496
    .end local v1    # "marginRight":I
    .end local v2    # "marginLeft":I
    :cond_1
    if-nez p2, :cond_2

    .line 497
    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 498
    .restart local v2    # "marginLeft":I
    const/4 v1, 0x0

    .restart local v1    # "marginRight":I
    goto :goto_0

    .line 500
    .end local v1    # "marginRight":I
    .end local v2    # "marginLeft":I
    :cond_2
    iget v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 501
    .restart local v2    # "marginLeft":I
    const/4 v1, 0x0

    .line 504
    .restart local v1    # "marginRight":I
    :goto_0
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 505
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 506
    .local v4, "containerWidth":I
    if-nez p2, :cond_3

    .line 507
    move v5, v4

    .local v5, "maxWidth":I
    goto :goto_1

    .line 508
    .end local v5    # "maxWidth":I
    :cond_3
    iget-boolean v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v5, :cond_4

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    .restart local v5    # "maxWidth":I
    goto :goto_1

    .line 511
    .end local v5    # "maxWidth":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int v5, v4, v5

    .line 514
    .restart local v5    # "maxWidth":I
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 515
    .local v6, "adjMaxHeight":I
    sub-int v8, v5, v2

    sub-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 516
    .local v8, "adjMaxWidth":I
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 517
    .local v9, "widthMeasureSpec":I
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static {v10, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->makeSafeMeasureSpec(II)I

    move-result v10

    .line 518
    .local v10, "heightMeasureSpec":I
    move-object/from16 v11, p1

    invoke-virtual {v11, v9, v10}, Landroid/view/View;->measure(II)V

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 521
    .local v12, "width":I
    iget-boolean v13, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v13, :cond_6

    .line 522
    if-nez p2, :cond_5

    iget v13, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v13

    :goto_2
    sub-int/2addr v13, v1

    .line 523
    .local v13, "right":I
    sub-int v14, v13, v12

    .local v14, "left":I
    goto :goto_4

    .line 525
    .end local v13    # "right":I
    .end local v14    # "left":I
    :cond_6
    if-nez p2, :cond_7

    iget v13, v3, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v13

    :goto_3
    add-int v14, v13, v2

    .line 526
    .restart local v14    # "left":I
    add-int v13, v14, v12

    .line 528
    .restart local v13    # "right":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v7, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 529
    return-void
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->stop()V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    goto :goto_0

    .line 353
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    .line 355
    :cond_2
    if-eqz p1, :cond_3

    .line 356
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 359
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 360
    return-void
.end method

.method private postAutoHide()V
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 709
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 2

    .line 659
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 660
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 661
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 662
    return-void
.end method

.method private scrollTo(F)V
    .locals 19
    .param p1, "position"    # F

    .line 780
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 781
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v3

    .line 782
    .local v3, "count":I
    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 783
    .local v4, "sections":[Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 784
    const/4 v5, 0x0

    .local v5, "sectionCount":I
    goto :goto_0

    .line 786
    .end local v5    # "sectionCount":I
    :cond_0
    array-length v5, v4

    .line 788
    .restart local v5    # "sectionCount":I
    :goto_0
    if-eqz v4, :cond_b

    if-gtz v5, :cond_1

    move-object/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_6

    .line 792
    :cond_1
    int-to-float v6, v5

    mul-float/2addr v6, v1

    float-to-int v6, v6

    add-int/lit8 v7, v5, -0x1

    invoke-static {v6, v2, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->constrain(III)I

    move-result v6

    .line 793
    .local v6, "exactSection":I
    move v7, v6

    .line 794
    .local v7, "targetSection":I
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v8, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 795
    .local v8, "targetIndex":I
    move v9, v7

    .line 796
    .local v9, "sectionIndex":I
    move v10, v3

    .line 797
    .local v10, "nextIndex":I
    move v11, v8

    .line 798
    .local v11, "prevIndex":I
    move v12, v7

    .line 799
    .local v12, "prevSection":I
    add-int/lit8 v13, v7, 0x1

    .line 800
    .local v13, "nextSection":I
    add-int/lit8 v14, v5, -0x1

    if-ge v7, v14, :cond_2

    .line 801
    iget-object v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v15, v7, 0x1

    invoke-interface {v14, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 803
    :cond_2
    if-ne v10, v8, :cond_6

    .line 805
    :cond_3
    if-gtz v7, :cond_4

    .line 806
    goto :goto_1

    .line 808
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 809
    iget-object v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v14, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 810
    if-ne v11, v8, :cond_5

    .line 811
    if-nez v7, :cond_3

    .line 812
    const/4 v9, 0x0

    .line 813
    goto :goto_1

    .line 816
    :cond_5
    move v12, v7

    .line 817
    move v9, v7

    .line 818
    nop

    .line 822
    :cond_6
    :goto_1
    add-int/lit8 v14, v13, 0x1

    .line 823
    .local v14, "nextNextSection":I
    :goto_2
    if-ge v14, v5, :cond_7

    iget-object v15, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v15, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    if-ne v15, v10, :cond_7

    .line 824
    add-int/lit8 v14, v14, 0x1

    .line 825
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 827
    :cond_7
    int-to-float v15, v12

    int-to-float v2, v5

    div-float/2addr v15, v2

    .line 828
    .local v15, "prevPosition":F
    int-to-float v2, v13

    move-object/from16 v16, v4

    .end local v4    # "sections":[Ljava/lang/Object;
    .local v16, "sections":[Ljava/lang/Object;
    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 829
    .local v2, "nextPosition":F
    if-nez v3, :cond_8

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v17, v5

    goto :goto_3

    :cond_8
    const/high16 v4, 0x3e000000    # 0.125f

    move/from16 v17, v5

    .end local v5    # "sectionCount":I
    .local v17, "sectionCount":I
    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 830
    .local v4, "snapThreshold":F
    :goto_3
    if-ne v12, v6, :cond_a

    sub-float v5, v1, v15

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_9

    goto :goto_4

    .line 833
    :cond_9
    move v5, v11

    .end local v8    # "targetIndex":I
    .local v5, "targetIndex":I
    goto :goto_5

    .line 831
    .end local v5    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    :cond_a
    :goto_4
    sub-int v5, v10, v11

    int-to-float v5, v5

    sub-float v18, v1, v15

    mul-float v5, v5, v18

    sub-float v18, v2, v15

    div-float v5, v5, v18

    float-to-int v5, v5

    add-int/2addr v5, v11

    .line 835
    .end local v8    # "targetIndex":I
    .restart local v5    # "targetIndex":I
    :goto_5
    add-int/lit8 v8, v3, -0x1

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "nextPosition":F
    .local v18, "nextPosition":F
    invoke-static {v5, v2, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->constrain(III)I

    move-result v5

    goto :goto_7

    .line 788
    .end local v6    # "exactSection":I
    .end local v7    # "targetSection":I
    .end local v9    # "sectionIndex":I
    .end local v10    # "nextIndex":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevSection":I
    .end local v13    # "nextSection":I
    .end local v14    # "nextNextSection":I
    .end local v15    # "prevPosition":F
    .end local v16    # "sections":[Ljava/lang/Object;
    .end local v17    # "sectionCount":I
    .end local v18    # "nextPosition":F
    .local v4, "sections":[Ljava/lang/Object;
    .local v5, "sectionCount":I
    :cond_b
    move-object/from16 v16, v4

    move/from16 v17, v5

    .line 789
    .end local v4    # "sections":[Ljava/lang/Object;
    .end local v5    # "sectionCount":I
    .restart local v16    # "sections":[Ljava/lang/Object;
    .restart local v17    # "sectionCount":I
    :goto_6
    int-to-float v4, v3

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v2, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->constrain(III)I

    move-result v5

    .line 790
    .local v5, "targetIndex":I
    const/4 v9, -0x1

    .line 838
    .restart local v9    # "sectionIndex":I
    :goto_7
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    instance-of v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    if-eqz v2, :cond_c

    .line 839
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    iget v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    add-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 844
    :cond_c
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    iget-object v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v6

    invoke-virtual {v0, v2, v4, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 845
    iput v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 846
    invoke-direct {v0, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    move-result v2

    .line 847
    .local v2, "hasPreview":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", position = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SeslFastScroller"

    invoke-static {v6, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-boolean v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    if-nez v4, :cond_d

    if-eqz v2, :cond_d

    .line 849
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToDragging()V

    goto :goto_8

    .line 850
    :cond_d
    if-eqz v4, :cond_e

    if-nez v2, :cond_e

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    .line 853
    :cond_e
    :goto_8
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 637
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 638
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 639
    const/4 p1, 0x1

    .line 641
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq p1, v0, :cond_1

    .line 642
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 650
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    goto :goto_0

    .line 647
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    .line 648
    goto :goto_0

    .line 644
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToHidden()V

    .line 645
    nop

    .line 653
    :goto_0
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 654
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    .line 656
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 8
    .param p1, "position"    # F

    .line 920
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 921
    .local v0, "container":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 922
    .local v1, "top":I
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 923
    .local v2, "bottom":I
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 924
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 925
    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 926
    const/4 p1, 0x0

    .line 928
    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    add-float/2addr v3, v4

    .line 929
    .local v3, "thumbMiddle":F
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 930
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 931
    .local v4, "previewImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 932
    .local v5, "previewHalfHeight":F
    int-to-float v6, v1

    add-float/2addr v6, v5

    int-to-float v7, v2

    sub-float/2addr v7, v5

    invoke-static {v3, v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->constrain(FFF)F

    move-result v6

    sub-float/2addr v6, v5

    .line 933
    .local v6, "previewTop":F
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 934
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 935
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 936
    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 1036
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 20
    .param p1, "sectionIndex"    # I

    .line 856
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    .line 857
    .local v2, "sections":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 858
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 859
    aget-object v4, v2, v1

    .line 860
    .local v4, "section":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 861
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 865
    .end local v4    # "section":Ljava/lang/Object;
    :cond_0
    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 866
    .local v4, "bounds":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 869
    .local v5, "preview":Landroid/view/View;
    iget-boolean v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    .line 870
    iget-object v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 871
    .local v6, "showing":Landroid/widget/TextView;
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .local v7, "target":Landroid/widget/TextView;
    goto :goto_0

    .line 873
    .end local v6    # "showing":Landroid/widget/TextView;
    .end local v7    # "target":Landroid/widget/TextView;
    :cond_1
    iget-object v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 874
    .restart local v6    # "showing":Landroid/widget/TextView;
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 876
    .restart local v7    # "target":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    invoke-direct {v0, v7, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 878
    invoke-direct {v0, v7, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 879
    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 880
    const-string v8, ""

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 881
    :cond_2
    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-ne v8, v10, :cond_3

    .line 882
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v9

    return v8

    .line 885
    :cond_3
    :goto_1
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_4

    .line 886
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 888
    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v10

    sget-wide v11, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 889
    .local v10, "showTarget":Landroid/animation/Animator;
    const/4 v13, 0x0

    invoke-static {v6, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 890
    .local v11, "hideShowing":Landroid/animation/Animator;
    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 891
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 892
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 893
    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 894
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 895
    invoke-static {v5, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v12

    .line 896
    .local v12, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v14, 0x64

    invoke-virtual {v12, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 897
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 898
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 899
    .local v9, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 901
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    sub-int v13, v16, v17

    .line 902
    .local v13, "previewWidth":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    .line 903
    .local v14, "targetWidth":I
    if-le v14, v13, :cond_5

    .line 904
    int-to-float v15, v13

    int-to-float v8, v14

    div-float/2addr v15, v8

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setScaleX(F)V

    .line 905
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v19, v2

    const-wide/16 v1, 0x64

    .end local v2    # "sections":[Ljava/lang/Object;
    .local v19, "sections":[Ljava/lang/Object;
    invoke-virtual {v15, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 907
    .end local v19    # "sections":[Ljava/lang/Object;
    .restart local v2    # "sections":[Ljava/lang/Object;
    :cond_5
    move-object/from16 v19, v2

    .end local v2    # "sections":[Ljava/lang/Object;
    .restart local v19    # "sections":[Ljava/lang/Object;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 909
    :goto_2
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 910
    .local v1, "showingWidth":I
    if-le v1, v14, :cond_6

    .line 911
    int-to-float v2, v14

    int-to-float v8, v1

    div-float/2addr v2, v8

    invoke-static {v6, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v2

    move-object v8, v4

    move-object v15, v5

    const-wide/16 v4, 0x64

    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "preview":Landroid/view/View;
    .local v8, "bounds":Landroid/graphics/Rect;
    .local v15, "preview":Landroid/view/View;
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    .line 910
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .end local v15    # "preview":Landroid/view/View;
    .restart local v4    # "bounds":Landroid/graphics/Rect;
    .restart local v5    # "preview":Landroid/view/View;
    :cond_6
    move-object v8, v4

    move-object v15, v5

    .line 913
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "preview":Landroid/view/View;
    .restart local v8    # "bounds":Landroid/graphics/Rect;
    .restart local v15    # "preview":Landroid/view/View;
    :goto_3
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    move/from16 v16, v1

    .end local v1    # "showingWidth":I
    .local v16, "showingWidth":I
    const v1, 0x3e99999a    # 0.3f

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .end local v6    # "showing":Landroid/widget/TextView;
    .end local v7    # "target":Landroid/widget/TextView;
    .local v17, "showing":Landroid/widget/TextView;
    .local v18, "target":Landroid/widget/TextView;
    invoke-direct {v4, v5, v6, v1, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 914
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 916
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    return v1
.end method

.method private transitionToDragging()V
    .locals 8

    .line 695
    const-string v0, "SeslFastScroller"

    const-string v1, "transitionToDragging()"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 699
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v5, 0xa7

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 700
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 701
    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 702
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v3, v5, v6, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 703
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 704
    iput-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 705
    return-void
.end method

.method private transitionToHidden()V
    .locals 8

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionToHidden() mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslFastScroller"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "duration":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 668
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 669
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 670
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 671
    const/16 v0, 0xa7

    .line 673
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 674
    .local v2, "fadeOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 675
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v1

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 676
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v4, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 677
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 678
    return-void
.end method

.method private transitionToVisible()V
    .locals 10

    .line 681
    const-string v0, "SeslFastScroller"

    const-string v1, "transitionToVisible()"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 685
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0xa7

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 686
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v5

    iget-object v9, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-static {v2, v9, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 687
    .local v2, "fadeOut":Landroid/animation/Animator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 688
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 689
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v5, v6, v9, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    iput-boolean v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 691
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 692
    return-void
.end method

.method private updateAppearance()V
    .locals 6

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "width":I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 231
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0400d9

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 232
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 234
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 240
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 244
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 245
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 249
    :cond_2
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mWidth:I

    .line 250
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 251
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 253
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    if-eqz v2, :cond_3

    .line 254
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 255
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_4

    .line 259
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 260
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 262
    :cond_4
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    .line 263
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 264
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 266
    :cond_5
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 267
    .local v2, "textMinSize":I
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 268
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 269
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 270
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 271
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 272
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 274
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOrientation:I

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    .line 276
    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    .line 560
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 561
    .local v0, "list":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v1}, Lcom/mesalabs/cerberus/utils/ViewUtils;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 562
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 564
    .local v1, "container":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 565
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 566
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 567
    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 569
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 570
    .local v2, "scrollbarStyle":I
    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    .line 571
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 572
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 573
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 574
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 575
    if-ne v2, v3, :cond_2

    .line 576
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getWidth()I

    move-result v3

    .line 577
    .local v3, "width":I
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 578
    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 580
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 584
    .end local v3    # "width":I
    :cond_2
    :goto_0
    return-void
.end method

.method private updateLongList(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 421
    const/4 v0, 0x1

    if-lez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 422
    .local v1, "longList":Z
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-eq v2, v1, :cond_2

    .line 423
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    .line 424
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    .line 426
    :cond_2
    return-void
.end method

.method private updateOffsetAndRange()V
    .locals 6

    .line 619
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 620
    .local v0, "trackImage":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 621
    .local v1, "thumbImage":Landroid/view/View;
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 622
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 623
    .local v2, "halfThumbHeight":F
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 624
    .local v3, "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 625
    .end local v2    # "halfThumbHeight":F
    .local v4, "max":F
    goto :goto_0

    .line 626
    .end local v3    # "min":F
    .end local v4    # "max":F
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    .line 627
    .restart local v3    # "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    .line 629
    .restart local v4    # "max":F
    :goto_0
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    .line 630
    sub-float v2, v4, v3

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    .line 631
    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 632
    iput v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    .line 634
    :cond_1
    return-void
.end method


# virtual methods
.method public canScrollList(I)Z
    .locals 8
    .param p1, "direction"    # I

    .line 713
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v0

    .line 714
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 715
    return v1

    .line 718
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    .line 719
    .local v2, "firstPosition":I
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 721
    .local v3, "listPadding":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-lez p1, :cond_3

    .line 722
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 723
    .local v5, "lastBottom":I
    add-int v6, v2, v0

    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    goto :goto_0

    .line 726
    :cond_1
    return v1

    .line 724
    :cond_2
    :goto_0
    return v4

    .line 729
    .end local v5    # "lastBottom":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v5, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 730
    .local v5, "firstTop":I
    if-gtz v2, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_4

    goto :goto_1

    .line 734
    :cond_4
    return v1

    .line 731
    :cond_5
    :goto_1
    return v4
.end method

.method getEffectState()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    return v0
.end method

.method getScrollY()F
    .locals 1

    .line 402
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1089
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1091
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1092
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1093
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 1096
    .end local v0    # "actionMasked":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1050
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1051
    return v1

    .line 1053
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v2, "SeslFastScroller"

    packed-switch v0, :pswitch_data_0

    .line 1084
    return v1

    .line 1070
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1071
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    .line 1072
    return v1

    .line 1073
    :cond_1
    iget-wide v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    sget-wide v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_0

    .line 1076
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1077
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1078
    .local v0, "pos":F
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1079
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 1080
    const-string v1, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1074
    .end local v0    # "pos":F
    :cond_3
    :goto_0
    return v1

    .line 1067
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    .line 1068
    return v1

    .line 1055
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1057
    return v1

    .line 1059
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1060
    const/4 v0, 0x1

    return v0

    .line 1062
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    .line 1063
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->startPendingDrag()V

    .line 1064
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 410
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_2

    .line 411
    :cond_0
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    .line 412
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    .line 413
    sub-int v0, p2, p1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 414
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 416
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    .line 418
    :cond_2
    return-void
.end method

.method public onScroll(III)V
    .locals 5
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 738
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 740
    return-void

    .line 742
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v1, v2, :cond_3

    .line 743
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    .line 744
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 745
    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    goto :goto_0

    .line 747
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 750
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 751
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mFirstVisibleItem:I

    if-eq v1, p1, :cond_4

    .line 752
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mFirstVisibleItem:I

    .line 753
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v1, v2, :cond_4

    .line 754
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 755
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 758
    :cond_4
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 775
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 407
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1109
    .local v1, "container":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 1110
    .local v2, "top":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1111
    .local v3, "bottom":I
    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1112
    .local v4, "trackImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    .line 1113
    .local v5, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    .line 1114
    .local v6, "max":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 1117
    return v8

    .line 1120
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x2

    const-string v11, "SeslFastScroller"

    const/4 v12, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    .line 1181
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    .line 1182
    iget v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v7, v10, :cond_1

    .line 1183
    invoke-direct {v0, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1185
    :cond_1
    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1186
    iput v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto/16 :goto_2

    .line 1148
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-wide v13, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    sget-wide v15, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    cmp-long v7, v13, v15

    const-string v9, ", max="

    const-string v13, ", min="

    if-ltz v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    sub-float/2addr v7, v14

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    int-to-float v14, v14

    cmpl-float v7, v7, v14

    if-lez v7, :cond_4

    .line 1150
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1151
    iget v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v14, v2

    cmpl-float v14, v7, v14

    if-lez v14, :cond_4

    int-to-float v14, v3

    cmpg-float v7, v7, v14

    if-gez v7, :cond_4

    .line 1152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v14, v2

    add-float/2addr v14, v5

    cmpg-float v14, v7, v14

    if-gez v14, :cond_2

    .line 1154
    int-to-float v7, v2

    add-float/2addr v7, v5

    iput v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_0

    .line 1155
    :cond_2
    cmpl-float v7, v7, v6

    if-lez v7, :cond_3

    .line 1156
    iput v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1158
    :cond_3
    :goto_0
    iput v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1161
    :cond_4
    iget v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v7, v10, :cond_b

    .line 1162
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v7

    .line 1163
    .local v7, "pos":F
    iput v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1164
    invoke-direct {v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 1165
    iget-boolean v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_5

    .line 1166
    invoke-direct {v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 1168
    :cond_5
    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v10, v2

    cmpl-float v10, v8, v10

    if-lez v10, :cond_8

    int-to-float v10, v3

    cmpg-float v8, v8, v10

    if-gez v8, :cond_8

    .line 1169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v9, v2

    add-float/2addr v9, v5

    cmpg-float v9, v8, v9

    if-gez v9, :cond_6

    .line 1171
    int-to-float v8, v2

    add-float/2addr v8, v5

    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_1

    .line 1172
    :cond_6
    cmpl-float v8, v8, v6

    if-lez v8, :cond_7

    .line 1173
    iput v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1175
    :cond_7
    :goto_1
    iput v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1177
    :cond_8
    return v12

    .line 1122
    .end local v7    # "pos":F
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-direct {v0, v7, v13}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1123
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1124
    iput v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    return v12

    .line 1129
    :cond_9
    :pswitch_3
    iget-wide v13, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    sget-wide v15, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    cmp-long v7, v13, v15

    if-ltz v7, :cond_a

    .line 1130
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1131
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v7

    .line 1132
    .restart local v7    # "pos":F
    iput v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1133
    invoke-direct {v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 1134
    invoke-direct {v0, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 1135
    iput v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    .end local v7    # "pos":F
    :cond_a
    iget v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v7, v10, :cond_b

    .line 1139
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1140
    invoke-direct {v0, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1141
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 1142
    iput v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1143
    iput v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1144
    return v12

    .line 1190
    :cond_b
    :goto_2
    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 323
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 339
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    .line 342
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled() enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslFastScroller"

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 328
    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public setImmersiveBottomPadding(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 374
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    .line 376
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 363
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 364
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 367
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .line 379
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move p1, v1

    .line 382
    :cond_1
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_3

    .line 383
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    .line 384
    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 385
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    .line 386
    .local v1, "iArr":[I
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    .line 391
    .end local v1    # "iArr":[I
    :cond_3
    return-void
.end method

.method public setStyle(I)V
    .locals 7
    .param p1, "resId"    # I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->SeslRecyclerViewFastScroller:[I

    const/4 v2, 0x0

    const v3, 0x10103f7

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 281
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_e

    .line 282
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 283
    .local v3, "index":I
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 284
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    goto/16 :goto_1

    .line 285
    :cond_0
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 286
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto/16 :goto_1

    .line 287
    :cond_1
    const/4 v4, 0x7

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2

    .line 288
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v6

    goto/16 :goto_1

    .line 289
    :cond_2
    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 290
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 291
    :cond_3
    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    .line 292
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 293
    :cond_4
    if-nez v3, :cond_5

    .line 294
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    goto :goto_1

    .line 295
    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 296
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 297
    :cond_6
    if-ne v3, v6, :cond_7

    .line 298
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    goto :goto_1

    .line 299
    :cond_7
    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 300
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 301
    :cond_8
    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    .line 302
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 303
    :cond_9
    const/16 v4, 0xb

    if-ne v3, v4, :cond_a

    .line 304
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 305
    :cond_a
    const/16 v4, 0xa

    if-ne v3, v4, :cond_b

    .line 306
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 307
    :cond_b
    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 308
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    goto :goto_1

    .line 309
    :cond_c
    const/16 v4, 0xc

    if-ne v3, v4, :cond_d

    .line 310
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    .line 281
    .end local v3    # "index":I
    :cond_d
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 313
    .end local v2    # "i":I
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateAppearance()V

    .line 315
    return-void
.end method

.method public stop()V
    .locals 1

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 371
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .line 441
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    .line 442
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 445
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateContainerRect()V

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->layoutThumb()V

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->layoutTrack()V

    .line 448
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 450
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 451
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 452
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 453
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 454
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 455
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 456
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 457
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 458
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 459
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 460
    return-void
.end method
