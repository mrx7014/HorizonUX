.class public Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SeslSwipeRefreshLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;,
        Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_DARK:I = -0xdadadb

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final DEFAULT_SLINGSHOT_DISTANCE:I = -0x1

.field private static final DRAG_RATE:F = 0.5f

.field private static final END_SCALE_DOWN_DURATION:I = 0x12c

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String; = "SwipeRefreshLayout"

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.82f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field mActionDown:Z

.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field mCustomSlingshotDistance:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 120
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 126
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    .line 127
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 128
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 129
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 131
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScale:Z

    .line 132
    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    .line 133
    new-instance v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 156
    new-instance v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 172
    new-instance v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$3;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTouchSlop:I

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 179
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 180
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 182
    .local v1, "var3":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->createProgressView()V

    .line 184
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 185
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 186
    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    .line 187
    new-instance v3, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 188
    new-instance v3, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 189
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 190
    iget v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    neg-int v3, v3

    .line 191
    .local v3, "var4":I
    iput v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 192
    iput v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 193
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->moveToStart(F)V

    .line 194
    sget-object v4, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 195
    .local v4, "var5":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setEnabled(Z)V

    .line 196
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/animation/Animation$AnimationListener;

    .line 200
    iput p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mFrom:I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    if-eqz p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/animation/Animation$AnimationListener;

    .line 213
    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 216
    :cond_0
    iput p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mFrom:I

    .line 217
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    if-eqz p2, :cond_1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 228
    :goto_0
    return-void
.end method

.method private createProgressView()V
    .locals 3

    .line 232
    new-instance v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    .line 233
    new-instance v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    .line 242
    const/4 v0, 0x0

    .local v0, "var1":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 243
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, "var2":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    iput-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 246
    goto :goto_1

    .line 242
    .end local v1    # "var2":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "var1":I
    :cond_1
    :goto_1
    return-void
.end method

.method private finishSpinner(F)V
    .locals 1
    .param p1, "var1"    # F

    .line 254
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_0

    .line 257
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 258
    const/4 v0, 0x0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 261
    :goto_0
    return-void
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/animation/Animation;

    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 268
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 271
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method private moveSpinner(F)V
    .locals 10
    .param p1, "var1"    # F

    .line 276
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    .line 277
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 278
    .local v0, "var2":F
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 279
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 280
    .local v2, "var3":F
    iget v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    .line 281
    .local v3, "var4":F
    iget v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCustomSlingshotDistance:I

    .line 282
    .local v4, "var5":I
    if-gtz v4, :cond_1

    .line 283
    iget-boolean v5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v5, :cond_0

    .line 284
    iget v5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int v4, v5, v6

    goto :goto_0

    .line 286
    :cond_0
    iget v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 290
    :cond_1
    :goto_0
    int-to-float v5, v4

    .line 291
    .local v5, "var6":F
    const/4 v6, 0x0

    sub-float v7, v2, v3

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 292
    iget v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 293
    iget-object v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v6}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    iget-object v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 297
    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-nez v6, :cond_3

    .line 298
    iget-object v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v6, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setScaleX(F)V

    .line 299
    iget-object v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v6, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setScaleY(F)V

    .line 302
    :cond_3
    iget-boolean v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-eqz v6, :cond_4

    .line 303
    iget v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v6, p1, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setAnimationProgress(F)V

    .line 306
    :cond_4
    iget v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v6}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_5

    iget-object v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v6}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    .line 310
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 v7, -0x41800000    # -0.25f

    const v8, 0x3f51eb85    # 0.82f

    mul-float v9, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v9, 0x3e800000    # 0.25f

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 311
    iget-object v6, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowScale(F)V

    .line 312
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 313
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 v6, 0x3fe00000    # 1.75f

    mul-float/2addr v6, v0

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setProgressRotation(F)V

    .line 314
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v1, v4, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 315
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 319
    .local v0, "var2":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 321
    if-nez v0, :cond_0

    .line 322
    const/4 v1, 0x1

    .local v1, "var3":B
    goto :goto_0

    .line 324
    .end local v1    # "var3":B
    :cond_0
    const/4 v1, 0x0

    .line 327
    .restart local v1    # "var3":B
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 330
    .end local v1    # "var3":B
    :cond_1
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 333
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 335
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 1
    .param p1, "var1"    # Z
    .param p2, "var2"    # Z

    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    .line 339
    iput-boolean p2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNotify:Z

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 341
    iput-boolean p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 342
    if-eqz p1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startRotateAnimation()V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 349
    :cond_1
    :goto_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 352
    new-instance v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$4;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;II)V

    .line 359
    .local v0, "var3":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const/4 v2, 0x0

    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 361
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 362
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    return-object v0
.end method

.method private startDragging(F)V
    .locals 4
    .param p1, "var1"    # F

    .line 367
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mInitialDownY:F

    .line 368
    .local v0, "var2":F
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTouchSlop:I

    .line 369
    .local v1, "var3":I
    sub-float v2, p1, v0

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_0

    .line 370
    int-to-float v2, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    .line 371
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 372
    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v3, 0x4c

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 375
    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 379
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 383
    return-void
.end method

.method private startRotateAnimation()V
    .locals 2

    .line 386
    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    .line 389
    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNotify:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    .line 391
    .local v0, "var1":Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;
    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 396
    .end local v0    # "var1":Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->reset()V

    .line 401
    :goto_0
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/animation/Animation$AnimationListener;

    .line 404
    iput p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mFrom:I

    .line 405
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    .line 406
    new-instance v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$5;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 414
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 415
    if-eqz p2, :cond_0

    .line 416
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/animation/Animation$AnimationListener;

    .line 425
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 427
    new-instance v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$6;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 432
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 433
    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    .line 443
    .local v0, "var1":Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;
    if-eqz v0, :cond_0

    .line 444
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;Landroid/view/View;)Z

    move-result v1

    return v1

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 447
    .local v1, "var2":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ListView;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    invoke-static {v2, v3}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F
    .param p3, "var3"    # Z

    .line 452
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 456
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

    .line 460
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # [I
    .param p4, "var4"    # [I
    .param p5, "var5"    # I

    .line 465
    if-nez p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x1

    .local v0, "var6":Z
    goto :goto_0

    .line 468
    .end local v0    # "var6":Z
    :cond_0
    const/4 v0, 0x0

    .line 471
    .restart local v0    # "var6":Z
    :goto_0
    return v0
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 8
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # [I
    .param p6, "var6"    # I
    .param p7, "var7"    # [I

    .line 475
    if-nez p6, :cond_0

    .line 476
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 479
    :cond_0
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # [I

    .line 482
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

    .line 487
    if-nez p6, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x1

    .local v0, "var7":Z
    goto :goto_0

    .line 490
    .end local v0    # "var7":Z
    :cond_0
    const/4 v0, 0x0

    .line 493
    .restart local v0    # "var7":Z
    :goto_0
    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 497
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    .line 498
    .local v0, "var3":I
    if-gez v0, :cond_0

    .line 499
    return p2

    .line 500
    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_1

    .line 501
    return v0

    .line 503
    :cond_1
    move p1, p2

    .line 504
    if-lt p2, v0, :cond_2

    .line 505
    add-int/lit8 p1, p2, 0x1

    .line 508
    :cond_2
    return p1
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .line 517
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    .line 521
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    .line 525
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 534
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->hasNestedScrollingParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 537
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 540
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method moveToStart(F)V
    .locals 3
    .param p1, "var1"    # F

    .line 552
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mFrom:I

    .line 553
    .local v0, "var2":I
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 554
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 557
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 558
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->reset()V

    .line 559
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 562
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 564
    .local v0, "var2":I
    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 565
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    .line 568
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "SwipeRefreshLayout"

    if-eqz v1, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    :cond_1
    const-string v1, "onInterceptTouchEvent() refresh cancelled by list scrolling or touch release, mActionDown = false"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-nez v1, :cond_b

    .line 574
    if-eqz v0, :cond_9

    .line 575
    const/4 v1, -0x1

    if-eq v0, v4, :cond_8

    .line 576
    if-ne v0, v3, :cond_6

    .line 577
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 578
    if-ne v0, v1, :cond_3

    .line 579
    const-string v1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return v2

    .line 583
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 584
    if-gez v0, :cond_4

    .line 585
    return v2

    .line 588
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 589
    .local v1, "var3":F
    iget-boolean v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-nez v3, :cond_5

    .line 590
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 591
    return v2

    .line 594
    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startDragging(F)V

    .line 595
    iget-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    return v2

    .line 598
    .end local v1    # "var3":F
    :cond_6
    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    .line 599
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 600
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 603
    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    return v1

    .line 607
    :cond_8
    const-string v3, "onInterceptTouchEvent() ACTION_UP_CANCEL!"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 609
    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 610
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    goto :goto_0

    .line 612
    :cond_9
    const-string v1, "onInterceptTouchEvent() ACTION_DOWN!"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iput-boolean v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    .line 614
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 615
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 616
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 617
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 618
    if-gez v0, :cond_a

    .line 619
    return v2

    .line 622
    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mInitialDownY:F

    .line 625
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    return v1

    .line 627
    :cond_b
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 632
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getMeasuredWidth()I

    move-result p3

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getMeasuredHeight()I

    move-result p5

    .line 634
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 640
    .local v0, "var6":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result p2

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result p4

    .line 643
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result v2

    sub-int v2, p5, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p4

    invoke-virtual {v0, p2, p4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 644
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result p4

    .line 645
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result p2

    .line 646
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    .line 647
    .local v1, "var7":Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;
    div-int/lit8 p3, p3, 0x2

    .line 648
    div-int/lit8 p4, p4, 0x2

    .line 649
    iget p5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 650
    sub-int v2, p3, p4

    add-int v3, p3, p4

    add-int v4, p2, p5

    invoke-virtual {v1, v2, p5, v3, v4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->layout(IIII)V

    .line 653
    .end local v0    # "var6":Landroid/view/View;
    .end local v1    # "var7":Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 657
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 658
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 663
    .local v0, "var3":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 664
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 665
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->measure(II)V

    .line 666
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    .line 668
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 669
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    if-ne v1, v2, :cond_1

    .line 670
    iput p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    .line 671
    goto :goto_1

    .line 668
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 676
    :cond_2
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # F
    .param p3, "var3"    # F
    .param p4, "var4"    # Z

    .line 679
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # F
    .param p3, "var3"    # F

    .line 683
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # [I

    .line 688
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_1

    .line 689
    iget v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 690
    .local v2, "var5":F
    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-eqz v3, :cond_1

    .line 691
    int-to-float v3, p3

    .line 692
    .local v3, "var6":F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    .line 693
    float-to-int v4, v2

    aput v4, p4, v1

    .line 694
    iput v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    goto :goto_0

    .line 696
    :cond_0
    sub-float v4, v2, v3

    iput v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 697
    aput p3, p4, v1

    .line 700
    :goto_0
    iget v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    .line 704
    .end local v2    # "var5":F
    .end local v3    # "var6":F
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v2, :cond_2

    if-lez p3, :cond_2

    iget v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_2

    aget v0, p4, v1

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 709
    .local v0, "var7":[I
    const/4 v2, 0x0

    aget v3, p4, v2

    sub-int v3, p2, v3

    aget v4, p4, v1

    sub-int v4, p3, v4

    const/4 v5, 0x0

    check-cast v5, [I

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 710
    aget v3, p4, v2

    aget v4, v0, v2

    add-int/2addr v3, v4

    aput v3, p4, v2

    .line 711
    aget v2, p4, v1

    aget v3, v0, v1

    add-int/2addr v2, v3

    aput v2, p4, v1

    .line 714
    :cond_3
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # [I
    .param p5, "var5"    # I

    .line 717
    if-nez p5, :cond_0

    .line 718
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 721
    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 725
    iget-object v7, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 726
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I

    .line 729
    iget-object v7, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 730
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 11
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # [I

    .line 733
    move-object v8, p0

    if-nez p6, :cond_1

    .line 734
    const/4 v9, 0x1

    aget v10, p7, v9

    .line 735
    .local v10, "var8":I
    iget-object v5, v8, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->dispatchNestedScroll(IIII[II[I)V

    .line 736
    aget v0, p7, v9

    sub-int/2addr v0, v10

    sub-int v0, p5, v0

    .line 737
    .end local p3    # "var3":I
    .local v0, "var3":I
    if-nez v0, :cond_0

    .line 738
    iget-object v1, v8, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    aget v1, v1, v9

    add-int v1, p5, v1

    .end local p2    # "var2":I
    .local v1, "var2":I
    goto :goto_0

    .line 740
    .end local v1    # "var2":I
    .restart local p2    # "var2":I
    :cond_0
    move v1, v0

    .line 743
    .end local p2    # "var2":I
    .restart local v1    # "var2":I
    :goto_0
    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v8, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-eqz v2, :cond_2

    .line 744
    iget v2, v8, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v8, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 745
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    .line 746
    aget v2, p7, v9

    add-int/2addr v2, v0

    aput v2, p7, v9

    goto :goto_1

    .line 733
    .end local v0    # "var3":I
    .end local v1    # "var2":I
    .end local v10    # "var8":I
    .restart local p2    # "var2":I
    .restart local p3    # "var3":I
    :cond_1
    move v1, p2

    move v0, p3

    .line 750
    .end local p2    # "var2":I
    .end local p3    # "var3":I
    .restart local v0    # "var3":I
    .restart local v1    # "var2":I
    :cond_2
    :goto_1
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 754
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 755
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startNestedScroll(I)Z

    .line 756
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 758
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    .line 762
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 765
    if-nez p4, :cond_0

    .line 766
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 769
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 773
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x1

    .local v0, "var4":Z
    goto :goto_0

    .line 776
    .end local v0    # "var4":Z
    :cond_0
    const/4 v0, 0x0

    .line 779
    .restart local v0    # "var4":Z
    :goto_0
    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 783
    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 787
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 789
    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    .line 790
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 791
    .local v0, "var2":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 792
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->finishSpinner(F)V

    .line 793
    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->stopNestedScroll()V

    .line 797
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 800
    if-nez p2, :cond_0

    .line 801
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 804
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 808
    .local v0, "var2":I
    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 809
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-nez v1, :cond_d

    .line 813
    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 815
    const/high16 v3, 0x3f000000    # 0.5f

    const-string v4, "SwipeRefreshLayout"

    if-ne v0, v1, :cond_3

    .line 816
    const-string v1, "onTouchEvent() ACTION_UP!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 818
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    .line 819
    if-gez v0, :cond_1

    .line 820
    const-string v1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return v2

    .line 824
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_2

    .line 825
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 826
    .local v1, "var4":F
    iget v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    .line 827
    .local v4, "var3":F
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 828
    sub-float v5, v1, v4

    mul-float/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->finishSpinner(F)V

    .line 831
    .end local v1    # "var4":F
    .end local v4    # "var3":F
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 832
    return v2

    .line 835
    :cond_3
    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    .line 836
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 837
    const-string v1, "onTouchEvent() ACTION_CANCEL XXXXXXX"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    .line 839
    return v2

    .line 842
    :cond_4
    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    .line 843
    const/4 v2, 0x6

    if-ne v0, v2, :cond_b

    .line 844
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 847
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 848
    if-gez v0, :cond_6

    .line 849
    const-string v1, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return v2

    .line 853
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    .line 856
    :cond_7
    iget v5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 857
    if-gez v0, :cond_8

    .line 858
    const-string v1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return v2

    .line 862
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 863
    .restart local v4    # "var3":F
    iget-boolean v5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-nez v5, :cond_9

    .line 864
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 865
    return v2

    .line 868
    :cond_9
    invoke-direct {p0, v4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startDragging(F)V

    .line 869
    iget-boolean v5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_b

    .line 870
    iget v5, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v4, v5

    mul-float/2addr v5, v3

    .line 871
    .end local v4    # "var3":F
    .local v5, "var3":F
    const/4 v3, 0x0

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_a

    .line 872
    return v2

    .line 875
    :cond_a
    invoke-direct {p0, v5}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    .line 878
    .end local v5    # "var3":F
    :cond_b
    :goto_0
    goto :goto_1

    .line 879
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 880
    iput-boolean v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 883
    :goto_1
    return v1

    .line 885
    :cond_d
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 890
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 892
    .local v0, "var2":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 893
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 897
    .end local v0    # "var2":Landroid/view/View;
    :cond_2
    return-void
.end method

.method reset()V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 902
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    .line 903
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 904
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 905
    iget-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0

    .line 908
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 911
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 912
    return-void
.end method

.method setAnimationProgress(F)V
    .locals 1
    .param p1, "var1"    # F

    .line 915
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setScaleX(F)V

    .line 916
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setScaleY(F)V

    .line 917
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1, "var1"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 921
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 922
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "var1"    # [I

    .line 925
    invoke-direct {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 926
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 927
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "var1"    # [I

    .line 930
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 931
    .local v0, "var2":Landroid/content/Context;
    array-length v1, p1

    new-array v1, v1, [I

    .line 933
    .local v1, "var3":[I
    const/4 v2, 0x0

    .local v2, "var4":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 934
    aget v3, p1, v2

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 937
    .end local v2    # "var4":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 938
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 941
    int-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    .line 942
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 945
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 946
    if-nez p1, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->reset()V

    .line 950
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 953
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 954
    return-void
.end method

.method public setOnChildScrollUpCallback(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    .line 957
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    .line 958
    return-void
.end method

.method public setOnRefreshListener(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    .line 961
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    .line 962
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "var1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 967
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 970
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 971
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 974
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 975
    return-void
.end method

.method public setProgressBackgroundLightTheme(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 978
    if-eqz p1, :cond_0

    .line 979
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const v1, -0xdadadb

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 984
    :goto_0
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1
    .param p1, "var1"    # Z
    .param p2, "var2"    # I

    .line 987
    iput p2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 988
    iput-boolean p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScale:Z

    .line 989
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->invalidate()V

    .line 990
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 1
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 993
    iput-boolean p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScale:Z

    .line 994
    iput p2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 995
    iput p3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    .line 997
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->reset()V

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 999
    return-void
.end method

.method public setRefreshOnce(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    new-instance v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$7;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setOnAnimationEndCallback(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;)V

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    check-cast v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setOnAnimationEndCallback(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;)V

    .line 1013
    :goto_0
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3
    .param p1, "var1"    # Z

    .line 1016
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    .line 1017
    iput-boolean p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 1019
    iget-boolean v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_0

    .line 1020
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr v1, v2

    .local v1, "var2":I
    goto :goto_0

    .line 1022
    .end local v1    # "var2":I
    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 1025
    .restart local v1    # "var2":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1026
    iput-boolean v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNotify:Z

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1028
    .end local v1    # "var2":I
    goto :goto_1

    .line 1029
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 1032
    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 1035
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1037
    .local v0, "var2":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 1038
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_0

    .line 1040
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    .line 1043
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    .line 1045
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1047
    .end local v0    # "var2":Landroid/util/DisplayMetrics;
    :cond_2
    return-void
.end method

.method public setSlingshotDistance(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 1050
    iput p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCustomSlingshotDistance:I

    .line 1051
    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->bringToFront()V

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1057
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1065
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startNestedScroll(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    const/4 v0, 0x1

    .local v0, "var3":Z
    goto :goto_0

    .line 1068
    .end local v0    # "var3":Z
    :cond_0
    const/4 v0, 0x0

    .line 1071
    .restart local v0    # "var3":Z
    :goto_0
    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/animation/Animation$AnimationListener;

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    .line 1076
    new-instance v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$8;-><init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 1083
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->SINE_IN_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1087
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1088
    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 1092
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 1095
    if-nez p1, :cond_0

    .line 1096
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->stopNestedScroll()V

    .line 1099
    :cond_0
    return-void
.end method
