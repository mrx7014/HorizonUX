.class Lcom/samsung/android/ui/recyclerview/widget/FastScroller;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;,
        Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;,
        Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimationState;,
        Lcom/samsung/android/ui/recyclerview/widget/FastScroller$DragState;,
        Lcom/samsung/android/ui/recyclerview/widget/FastScroller$State;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field private mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

.field private mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field private final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I

.field private final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I

.field private final mVerticalThumbWidth:I

.field private final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 55
    new-array v0, v2, [I

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "verticalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "verticalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "horizontalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p5, "horizontalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "defaultWidth"    # I
    .param p7, "scrollbarMinimumRange"    # I
    .param p8, "margin"    # I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 73
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 77
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    .line 78
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mDragState:I

    .line 79
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalRange:[I

    .line 80
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    .line 81
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 82
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 83
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$1;-><init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$2;-><init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mOnScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    .line 97
    iput-object p2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 98
    iput-object p3, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object p4, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 100
    iput-object p5, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 102
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    .line 103
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 104
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 105
    iput p7, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 106
    iput p8, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mMargin:I

    .line 107
    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 108
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 110
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;Lcom/samsung/android/ui/recyclerview/widget/FastScroller$1;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;Lcom/samsung/android/ui/recyclerview/widget/FastScroller$1;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->attachToRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 114
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;
    .param p1, "x1"    # I

    .line 32
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mAnimationState:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->requestRedraw()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private cancelHide()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeOnItemTouchListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mOnScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeOnScrollListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;)V

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->cancelHide()V

    .line 140
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 268
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 270
    .local v0, "viewHeight":I
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int v2, v0, v1

    .line 271
    .local v2, "top":I
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 272
    .local v3, "left":I
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    int-to-float v1, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    int-to-float v1, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 278
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    neg-int v1, v3

    int-to-float v1, v1

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 244
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 246
    .local v0, "viewWidth":I
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int v2, v0, v1

    .line 247
    .local v2, "left":I
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 248
    .local v3, "top":I
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v1, v1

    int-to-float v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 255
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 257
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 259
    :cond_0
    int-to-float v1, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    int-to-float v1, v3

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 263
    neg-int v1, v2

    int-to-float v1, v1

    neg-int v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    :goto_0
    return-void
.end method

.method private getHorizontalRange()[I
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 458
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 459
    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalRange:[I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 452
    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 453
    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 9
    .param p1, "x"    # F

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v7

    .line 397
    .local v7, "scrollbarRange":[I
    const/4 v8, 0x0

    aget v0, v7, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 398
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 399
    return-void

    .line 402
    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    .line 403
    .local v0, "scrollingBy":I
    if-eqz v0, :cond_1

    .line 404
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v0, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollBy(II)V

    .line 407
    :cond_1
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 408
    return-void
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private requestRedraw()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 144
    return-void
.end method

.method private resetHideDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->cancelHide()V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 6
    .param p1, "oldDragPos"    # F
    .param p2, "newDragPos"    # F
    .param p3, "scrollbarRange"    # [I
    .param p4, "scrollRange"    # I
    .param p5, "scrollOffset"    # I
    .param p6, "viewLength"    # I

    .line 411
    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget v2, p3, v1

    sub-int/2addr v0, v2

    .line 412
    .local v0, "scrollbarLength":I
    if-nez v0, :cond_0

    .line 413
    return v1

    .line 415
    :cond_0
    sub-float v2, p2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 416
    .local v2, "percentage":F
    sub-int v3, p4, p6

    .line 417
    .local v3, "totalPossibleOffset":I
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 418
    .local v4, "scrollingBy":I
    add-int v5, p5, v4

    .line 419
    .local v5, "absoluteOffset":I
    if-ge v5, v3, :cond_1

    if-ltz v5, :cond_1

    .line 420
    return v4

    .line 422
    :cond_1
    return v1
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 147
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->cancelHide()V

    .line 152
    :cond_0
    if-nez p1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->requestRedraw()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->show()V

    .line 158
    :goto_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 160
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    goto :goto_1

    .line 161
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 162
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    .line 164
    :cond_3
    :goto_1
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    .line 165
    return-void
.end method

.method private setupCallbacks()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addOnItemTouchListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnItemTouchListener;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mOnScrollListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->addOnScrollListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;)V

    .line 133
    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 9
    .param p1, "y"    # F

    .line 383
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->getVerticalRange()[I

    move-result-object v7

    .line 384
    .local v7, "scrollbarRange":[I
    const/4 v8, 0x0

    aget v0, v7, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 385
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 386
    return-void

    .line 388
    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    .line 389
    .local v0, "scrollingBy":I
    if-eqz v0, :cond_1

    .line 390
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollBy(II)V

    .line 392
    :cond_1
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 393
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-ne v0, p1, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->destroyCallbacks()V

    .line 123
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 124
    if-eqz p1, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->setupCallbacks()V

    .line 127
    :cond_2
    return-void
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->hide(I)V

    .line 200
    return-void
.end method

.method hide(I)V
    .locals 4
    .param p1, "duration"    # I

    .line 203
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 207
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 208
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDragging()Z
    .locals 2

    .line 172
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isHidden()Z
    .locals 1

    .line 180
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 431
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :goto_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method isVisible()Z
    .locals 2

    .line 176
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 226
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_2

    .line 234
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 237
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v0, :cond_2

    .line 238
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    .line 241
    :cond_2
    return-void

    .line 227
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 228
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->setState(I)V

    .line 230
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 318
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_4

    .line 319
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    .line 320
    .local v0, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 321
    .local v3, "insideHorizontalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_0

    if-eqz v3, :cond_3

    .line 323
    :cond_0
    if-eqz v3, :cond_1

    .line 324
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mDragState:I

    .line 325
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    .line 326
    :cond_1
    if-eqz v0, :cond_2

    .line 327
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mDragState:I

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 331
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->setState(I)V

    .line 332
    const/4 v1, 0x1

    .local v1, "handled":Z
    goto :goto_1

    .line 334
    .end local v1    # "handled":Z
    :cond_3
    const/4 v1, 0x0

    .line 336
    .end local v0    # "insideVerticalThumb":Z
    .end local v3    # "insideHorizontalThumb":Z
    .restart local v1    # "handled":Z
    :goto_1
    goto :goto_2

    .end local v1    # "handled":Z
    :cond_4
    if-ne v0, v2, :cond_5

    .line 337
    const/4 v1, 0x1

    .restart local v1    # "handled":Z
    goto :goto_2

    .line 339
    .end local v1    # "handled":Z
    :cond_5
    const/4 v1, 0x0

    .line 341
    .restart local v1    # "handled":Z
    :goto_2
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 380
    return-void
.end method

.method public onTouchEvent(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "recyclerView"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .line 346
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    if-nez v0, :cond_0

    .line 347
    return-void

    .line 350
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_5

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    .line 352
    .local v0, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 353
    .local v3, "insideHorizontalThumb":Z
    if-nez v0, :cond_1

    if-eqz v3, :cond_4

    .line 354
    :cond_1
    if-eqz v3, :cond_2

    .line 355
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mDragState:I

    .line 356
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    .line 357
    :cond_2
    if-eqz v0, :cond_3

    .line 358
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mDragState:I

    .line 359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 361
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->setState(I)V

    .line 363
    .end local v0    # "insideVerticalThumb":Z
    .end local v3    # "insideHorizontalThumb":Z
    :cond_4
    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_6

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 365
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 366
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->setState(I)V

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mDragState:I

    goto :goto_1

    .line 368
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_8

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->show()V

    .line 370
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mDragState:I

    if-ne v0, v1, :cond_7

    .line 371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->horizontalScrollTo(F)V

    .line 373
    :cond_7
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mDragState:I

    if-ne v0, v2, :cond_8

    .line 374
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->verticalScrollTo(F)V

    .line 377
    :cond_8
    :goto_1
    return-void
.end method

.method public show()V
    .locals 5

    .line 185
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mAnimationState:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 187
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 189
    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 190
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 196
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method updateScrollPosition(II)V
    .locals 9
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 283
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 284
    .local v0, "verticalContentLength":I
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 285
    .local v1, "verticalVisibleLength":I
    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 287
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 288
    .local v2, "horizontalContentLength":I
    iget v5, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 289
    .local v5, "horizontalVisibleLength":I
    sub-int v6, v2, v5

    if-lez v6, :cond_1

    iget v6, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v7, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v6, v7, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 291
    iget-boolean v7, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    .line 292
    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    if-eqz v4, :cond_2

    .line 293
    invoke-direct {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->setState(I)V

    .line 295
    :cond_2
    return-void

    .line 298
    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v7, :cond_4

    .line 299
    int-to-float v6, p2

    int-to-float v7, v1

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    .line 300
    .local v6, "middleScreenPos":F
    int-to-float v7, v1

    mul-float/2addr v7, v6

    int-to-float v8, v0

    div-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 301
    mul-int v7, v1, v1

    div-int/2addr v7, v0

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 304
    .end local v6    # "middleScreenPos":F
    :cond_4
    iget-boolean v6, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v6, :cond_5

    .line 305
    int-to-float v6, p1

    int-to-float v7, v5

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    .line 306
    .restart local v6    # "middleScreenPos":F
    int-to-float v3, v5

    mul-float/2addr v3, v6

    int-to-float v7, v2

    div-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 307
    mul-int v3, v5, v5

    div-int/2addr v3, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 310
    .end local v6    # "middleScreenPos":F
    :cond_5
    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->mState:I

    if-eqz v3, :cond_6

    if-ne v3, v4, :cond_7

    .line 311
    :cond_6
    invoke-direct {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->setState(I)V

    .line 313
    :cond_7
    return-void
.end method
