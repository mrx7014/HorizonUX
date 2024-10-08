.class public Lcom/samsung/android/ui/widget/SeslNestedScrollView;
.super Landroid/widget/FrameLayout;
.source "SeslNestedScrollView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslNestedScrollView$AccessibilityDelegate;,
        Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;,
        Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_DELEGATE:Lcom/samsung/android/ui/widget/SeslNestedScrollView$AccessibilityDelegate;

.field public static final SCROLLVIEW_STYLEABLE:[I


# instance fields
.field public mActivePointerId:I

.field public final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field public mChildToScrollTo:Landroid/view/View;

.field public mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

.field public mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

.field public mFillViewport:Z

.field public mIsBeingDragged:Z

.field public mIsLaidOut:Z

.field public mIsLayoutDirty:Z

.field public mLastMotionY:I

.field public mLastScroll:J

.field public mLastScrollerY:I

.field public mMaximumVelocity:I

.field public mMinimumVelocity:I

.field public mNestedYOffset:I

.field public mOnScrollChangeListener:Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;

.field public final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field public mSavedState:Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;

.field public final mScrollConsumed:[I

.field public final mScrollOffset:[I

.field public mScroller:Landroid/widget/OverScroller;

.field public mSmoothScrollingEnabled:Z

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/samsung/android/ui/widget/SeslNestedScrollView$AccessibilityDelegate;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 89
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsLaidOut:Z

    .line 101
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    .line 104
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 105
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    .line 106
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->initScrollView()V

    .line 108
    sget-object v2, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 109
    .local v2, "var4":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setFillViewport(Z)V

    .line 110
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    new-instance v1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 112
    new-instance v1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 113
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 114
    sget-object v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/samsung/android/ui/widget/SeslNestedScrollView$AccessibilityDelegate;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 115
    return-void
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "var0"    # I
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 118
    if-ge p1, p2, :cond_1

    if-ltz p0, :cond_1

    .line 119
    add-int v0, p1, p0

    if-le v0, p2, :cond_0

    sub-int v0, p2, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .line 126
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 128
    .local v0, "var1":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    .local v1, "var2":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    goto :goto_0

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    .end local v0    # "var1":Landroid/util/TypedValue;
    .end local v1    # "var2":Landroid/content/Context;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "var0"    # Landroid/view/View;
    .param p1, "var1"    # Landroid/view/View;

    .line 140
    const/4 v0, 0x1

    .line 141
    .local v0, "var2":Z
    if-ne p0, p1, :cond_0

    .line 142
    const/4 v1, 0x1

    return v1

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 145
    .local v1, "var3":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    :cond_1
    const/4 v0, 0x0

    .line 149
    :cond_2
    return v0
.end method


# virtual methods
.method public final abortAnimatedScroll()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    .line 157
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 161
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 165
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 169
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 173
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 181
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "var1"    # I

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "var2":Landroid/view/View;
    move-object v1, v0

    .line 195
    .local v1, "var3":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 199
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getMaxScrollAmount()I

    move-result v2

    .line 202
    .local v2, "var4":I
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 204
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 205
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    .line 206
    .local v3, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastScrollerY:I

    .line 207
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->doScrollY(I)V

    .line 208
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_1

    .line 210
    .end local v3    # "var5":I
    :cond_1
    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    .restart local v3    # "var5":I
    goto :goto_0

    .line 213
    .end local v3    # "var5":I
    :cond_2
    move v3, v2

    .line 214
    .restart local v3    # "var5":I
    if-ne p1, v5, :cond_3

    .line 215
    move v3, v2

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 217
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 218
    .local v6, "var6":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    .local v7, "var7":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 224
    .end local v6    # "var6":Landroid/view/View;
    .end local v7    # "var7":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 225
    return v4

    .line 228
    :cond_4
    if-eq p1, v5, :cond_5

    .line 229
    neg-int v3, v3

    .line 232
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->doScrollY(I)V

    .line 235
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getDescendantFocusability()I

    move-result p1

    .line 237
    const/high16 v4, 0x20000

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->requestFocus()Z

    .line 239
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    .line 242
    :cond_6
    const/4 v4, 0x1

    return v4
.end method

.method public final canScroll()Z
    .locals 8

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    .line 247
    .local v0, "var1":I
    const/4 v1, 0x0

    .line 248
    .local v1, "var2":Z
    move v2, v1

    .line 249
    .local v2, "var3":Z
    if-lez v0, :cond_0

    .line 250
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 251
    .local v3, "var4":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 252
    .local v4, "var5":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v1

    .line 253
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_0

    .line 254
    const/4 v2, 0x1

    .line 258
    .end local v3    # "var4":Landroid/view/View;
    .end local v4    # "var5":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return v2
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .line 262
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 266
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 270
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 18

    .line 275
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 276
    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 277
    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    .line 278
    .local v6, "var1":I
    iget v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastScrollerY:I

    sub-int v7, v6, v0

    .line 279
    .local v7, "var2":I
    iput v6, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastScrollerY:I

    .line 280
    iget-object v11, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    .line 281
    .local v11, "var3":[I
    const/4 v12, 0x0

    .line 282
    .local v12, "var4":Z
    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v11, v13

    .line 283
    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v4, v0

    check-cast v4, [I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v7

    move-object v3, v11

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 284
    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v13

    sub-int v15, v7, v0

    .line 285
    .end local v6    # "var1":I
    .local v15, "var1":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v16

    .line 286
    .local v16, "var5":I
    move v0, v15

    .line 287
    .end local v7    # "var2":I
    .local v0, "var2":I
    if-eqz v15, :cond_0

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v17

    .line 289
    .end local v0    # "var2":I
    .local v17, "var2":I
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v2, v15

    move/from16 v4, v17

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    sub-int v8, v0, v17

    .line 291
    .end local v17    # "var2":I
    .local v8, "var2":I
    sub-int/2addr v15, v8

    .line 292
    iget-object v11, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    .line 293
    aput v14, v11, v13

    .line 294
    const/4 v3, 0x0

    iget-object v5, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v2, v8

    move v4, v15

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 295
    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v13

    sub-int v0, v15, v0

    .line 298
    .end local v8    # "var2":I
    .restart local v0    # "var2":I
    :cond_0
    if-eqz v0, :cond_5

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v1

    .line 302
    .local v1, "var6":I
    if-eqz v1, :cond_2

    .line 303
    move v2, v12

    .line 304
    .local v2, "var7":Z
    if-eq v1, v13, :cond_1

    .line 305
    goto :goto_0

    .line 308
    :cond_1
    move v2, v12

    .line 309
    if-gtz v16, :cond_2

    .line 310
    goto :goto_0

    .line 314
    .end local v2    # "var7":Z
    :cond_2
    const/4 v2, 0x1

    .line 317
    .end local v1    # "var6":I
    .restart local v2    # "var7":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->ensureGlows()V

    .line 319
    if-gez v0, :cond_3

    .line 320
    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    iget-object v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 323
    :cond_3
    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 324
    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    iget-object v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onAbsorb(I)V

    .line 328
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->abortAnimatedScroll()V

    .line 331
    .end local v2    # "var7":Z
    :cond_5
    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    .line 332
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 336
    .end local v0    # "var2":I
    .end local v11    # "var3":[I
    .end local v12    # "var4":Z
    .end local v15    # "var1":I
    .end local v16    # "var5":I
    :cond_6
    return-void
.end method

.method public computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 12
    .param p1, "var1"    # Landroid/graphics/Rect;

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    .line 340
    .local v0, "var2":I
    const/4 v1, 0x0

    .line 341
    .local v1, "var3":B
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 342
    return v2

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    .line 345
    .local v3, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    .line 346
    add-int v4, v0, v3

    .line 347
    .local v4, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 348
    .local v5, "var6":I
    move v6, v0

    .line 349
    .local v6, "var7":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1

    .line 350
    add-int v6, v0, v5

    .line 353
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 354
    .local v7, "var8":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 355
    .local v8, "var9":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_2

    .line 356
    sub-int v5, v4, v5

    goto :goto_0

    .line 358
    :cond_2
    move v5, v4

    .line 361
    :goto_0
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    if-le v9, v5, :cond_4

    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-le v9, v6, :cond_4

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 363
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    .end local v0    # "var2":I
    .local v2, "var2":I
    goto :goto_1

    .line 365
    .end local v2    # "var2":I
    .restart local v0    # "var2":I
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    .line 368
    .end local v0    # "var2":I
    .restart local v2    # "var2":I
    :goto_1
    add-int/lit8 v0, v2, 0x0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v4

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v2    # "var2":I
    .restart local v0    # "var2":I
    goto :goto_3

    .line 370
    :cond_4
    move v0, v1

    .line 371
    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-ge v9, v6, :cond_6

    .line 372
    move v0, v1

    .line 373
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v5, :cond_6

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v3, :cond_5

    .line 375
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v5, v9

    sub-int/2addr v2, v9

    .end local v0    # "var2":I
    .restart local v2    # "var2":I
    goto :goto_2

    .line 377
    .end local v2    # "var2":I
    .restart local v0    # "var2":I
    :cond_5
    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int v9, v6, v9

    sub-int/2addr v2, v9

    .line 380
    .end local v0    # "var2":I
    .restart local v2    # "var2":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 385
    .end local v2    # "var2":I
    .restart local v0    # "var2":I
    :cond_6
    :goto_3
    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .line 390
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 394
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 7

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    .line 399
    .local v0, "var1":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 400
    .local v1, "var2":I
    if-nez v0, :cond_0

    .line 401
    return v1

    .line 403
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    .local v3, "var3":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    .local v4, "var4":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 406
    .end local v0    # "var1":I
    .local v5, "var1":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    .line 407
    .local v0, "var5":I
    sub-int v6, v5, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 408
    .local v2, "var6":I
    if-gez v0, :cond_1

    .line 409
    sub-int v1, v5, v0

    goto :goto_0

    .line 411
    :cond_1
    move v1, v5

    .line 412
    if-le v0, v2, :cond_2

    .line 413
    sub-int v6, v0, v2

    add-int v1, v5, v6

    .line 417
    :cond_2
    :goto_0
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .line 423
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 426
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 429
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F
    .param p3, "var3"    # Z

    .line 433
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 437
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # [I
    .param p4, "var4"    # [I

    .line 442
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

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

    .line 446
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

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

    .line 450
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 451
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # [I

    .line 454
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

    .line 458
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

.method public final doScrollY(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 462
    if-eqz p1, :cond_1

    .line 463
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollBy(II)V

    .line 470
    :cond_1
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 473
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 474
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-eqz v0, :cond_7

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    .line 476
    .local v0, "var2":I
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    .line 477
    .local v1, "var3":Z
    const/4 v2, 0x0

    .line 485
    .local v2, "var4":B
    const/4 v3, 0x0

    const/16 v4, 0x15

    if-nez v1, :cond_3

    .line 486
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 487
    .local v5, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getWidth()I

    move-result v6

    .line 488
    .local v6, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v7

    .line 489
    .local v7, "var7":I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 490
    .local v8, "var8":I
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getClipToPadding()Z

    move-result v9

    if-nez v9, :cond_0

    .line 491
    const/4 v9, 0x0

    .local v9, "var9":I
    goto :goto_0

    .line 493
    .end local v9    # "var9":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v6, v9

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v3

    .line 497
    .restart local v9    # "var9":I
    :goto_0
    move v10, v7

    .line 498
    .local v10, "var10":I
    move v11, v8

    .line 499
    .local v11, "var11":I
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v4, :cond_1

    .line 500
    move v10, v7

    .line 501
    move v11, v8

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getClipToPadding()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    sub-int v10, v7, v12

    .line 504
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v12

    add-int v11, v8, v12

    .line 508
    :cond_1
    int-to-float v12, v9

    int-to-float v13, v11

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 509
    iget-object v12, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v12, v6, v10}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 510
    iget-object v12, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v12, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 511
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 514
    :cond_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 517
    .end local v5    # "var5":I
    .end local v6    # "var6":I
    .end local v7    # "var7":I
    .end local v8    # "var8":I
    .end local v9    # "var9":I
    .end local v10    # "var10":I
    .end local v11    # "var11":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    .line 519
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 520
    .restart local v5    # "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getWidth()I

    move-result v6

    .line 521
    .local v6, "var11":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v7

    .line 522
    .local v7, "var8":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v7

    .line 523
    .local v8, "var7":I
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v4, :cond_4

    .line 524
    move v9, v2

    .line 525
    .restart local v9    # "var9":I
    move v10, v6

    .line 526
    .local v10, "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getClipToPadding()Z

    move-result v11

    if-nez v11, :cond_4

    .line 527
    goto :goto_1

    .line 531
    .end local v9    # "var9":I
    .end local v10    # "var6":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v10, v6, v9

    .line 532
    .restart local v10    # "var6":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v3

    .line 535
    .restart local v9    # "var9":I
    :goto_1
    move v3, v8

    .line 536
    .local v3, "var10":I
    move v6, v7

    .line 537
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v4, :cond_5

    .line 538
    move v3, v8

    .line 539
    move v6, v7

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getClipToPadding()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v4, v11

    sub-int v6, v7, v4

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v3, v8, v4

    .line 546
    :cond_5
    sub-int v4, v9, v10

    int-to-float v4, v4

    int-to-float v11, v3

    invoke-virtual {p1, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 547
    const/high16 v4, 0x43340000    # 180.0f

    int-to-float v11, v10

    const/4 v12, 0x0

    invoke-virtual {p1, v4, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 548
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v4, v10, v6}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 549
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 550
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 553
    :cond_6
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 557
    .end local v0    # "var2":I
    .end local v1    # "var3":Z
    .end local v2    # "var4":B
    .end local v3    # "var10":I
    .end local v5    # "var5":I
    .end local v6    # "var11":I
    .end local v7    # "var8":I
    .end local v8    # "var7":I
    .end local v9    # "var9":I
    .end local v10    # "var6":I
    :cond_7
    return-void
.end method

.method public final endDrag()V
    .locals 2

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    .line 563
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 565
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 567
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 570
    :cond_0
    return-void
.end method

.method public final ensureGlows()V
    .locals 2

    .line 573
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    if-nez v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 576
    .local v0, "var1":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-direct {v1, v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 577
    new-instance v1, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-direct {v1, v0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 578
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 579
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 580
    .end local v0    # "var1":Landroid/content/Context;
    goto :goto_0

    .line 582
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 583
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 586
    :cond_1
    :goto_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .line 589
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->canScroll()Z

    move-result v0

    .line 591
    .local v0, "var2":Z
    const/4 v1, 0x0

    .line 592
    .local v1, "var3":Z
    const/4 v2, 0x0

    .line 593
    .local v2, "var4":Z
    const/16 v3, 0x82

    .line 594
    .local v3, "var5":S
    const/16 v4, 0x82

    if-nez v0, :cond_2

    .line 595
    move v0, v2

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 597
    move v0, v2

    .line 598
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    .line 600
    .local v5, "var6":Landroid/view/View;
    move-object v6, v5

    .line 601
    .local v6, "var8":Landroid/view/View;
    if-ne v5, p0, :cond_0

    .line 602
    const/4 v6, 0x0

    .line 605
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v6, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 606
    move v0, v2

    .line 607
    if-eqz v6, :cond_1

    .line 608
    move v0, v2

    .line 609
    if-eq v6, p0, :cond_1

    .line 610
    move v0, v2

    .line 611
    invoke-virtual {v6, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 612
    const/4 v0, 0x1

    .line 619
    .end local v5    # "var6":Landroid/view/View;
    .end local v6    # "var8":Landroid/view/View;
    :cond_1
    return v0

    .line 621
    :cond_2
    move v0, v1

    .line 622
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    .line 623
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 624
    .local v5, "var7":I
    const/16 v6, 0x13

    if-eq v5, v6, :cond_7

    .line 625
    const/16 v6, 0x14

    if-eq v5, v6, :cond_5

    .line 626
    const/16 v4, 0x3e

    if-eq v5, v4, :cond_3

    .line 627
    move v0, v1

    goto :goto_0

    .line 629
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 630
    const/16 v3, 0x21

    .line 633
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->pageScroll(I)Z

    .line 634
    move v0, v1

    goto :goto_0

    .line 636
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-nez v6, :cond_6

    .line 637
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 639
    :cond_6
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_0

    .line 641
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    const/16 v6, 0x21

    if-nez v4, :cond_8

    .line 642
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 644
    :cond_8
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->fullScroll(I)Z

    move-result v0

    .line 648
    .end local v5    # "var7":I
    :cond_9
    :goto_0
    return v0
.end method

.method public final findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 653
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 654
    .local v0, "var4":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 655
    .local v1, "var5":I
    const/4 v2, 0x0

    .line 656
    .local v2, "var6":B
    const/4 v3, 0x0

    .line 659
    .local v3, "var7":Landroid/view/View;
    move v4, v2

    .local v4, "var8":I
    :goto_0
    if-ge v4, v1, :cond_a

    .line 660
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 661
    .local v5, "var9":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 662
    .local v6, "var10":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 663
    .local v7, "var11":I
    move-object v8, v3

    .line 664
    .local v8, "var12":Landroid/view/View;
    move v9, v2

    .line 665
    .local v9, "var13":B
    if-ge p2, v7, :cond_9

    .line 666
    move-object v8, v3

    .line 667
    move v9, v2

    .line 668
    if-ge v6, p3, :cond_9

    .line 670
    if-ge p2, v6, :cond_0

    if-ge v7, p3, :cond_0

    .line 671
    const/4 v10, 0x1

    .local v10, "var14":B
    goto :goto_1

    .line 673
    .end local v10    # "var14":B
    :cond_0
    const/4 v10, 0x0

    .line 676
    .restart local v10    # "var14":B
    :goto_1
    if-nez v3, :cond_1

    .line 677
    move-object v8, v5

    .line 678
    move v9, v10

    goto :goto_3

    .line 682
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v6, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v7, v11, :cond_4

    .line 683
    :cond_3
    const/4 v11, 0x1

    .local v11, "var15":Z
    goto :goto_2

    .line 685
    .end local v11    # "var15":Z
    :cond_4
    const/4 v11, 0x0

    .line 688
    .restart local v11    # "var15":Z
    :goto_2
    if-eqz v2, :cond_6

    .line 689
    move-object v8, v3

    .line 690
    move v9, v2

    .line 691
    if-nez v10, :cond_5

    .line 692
    goto :goto_3

    .line 695
    :cond_5
    move-object v8, v3

    .line 696
    move v9, v2

    .line 697
    if-nez v11, :cond_8

    .line 698
    goto :goto_3

    .line 701
    :cond_6
    if-eqz v10, :cond_7

    .line 702
    move-object v8, v5

    .line 703
    const/4 v9, 0x1

    .line 704
    goto :goto_3

    .line 707
    :cond_7
    move-object v8, v3

    .line 708
    move v9, v2

    .line 709
    if-nez v11, :cond_8

    .line 710
    goto :goto_3

    .line 714
    :cond_8
    move-object v8, v5

    .line 715
    move v9, v2

    .line 721
    .end local v10    # "var14":B
    .end local v11    # "var15":Z
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 722
    move-object v3, v8

    .line 659
    .end local v5    # "var9":Landroid/view/View;
    .end local v6    # "var10":I
    .end local v7    # "var11":I
    .end local v8    # "var12":Landroid/view/View;
    move v2, v9

    goto :goto_0

    .line 725
    .end local v4    # "var8":I
    .end local v9    # "var13":B
    :cond_a
    return-object v3
.end method

.method public fling(I)V
    .locals 12
    .param p1, "var1"    # I

    .line 729
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 730
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 731
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->runAnimatedScroll(Z)V

    .line 734
    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 9
    .param p1, "var1"    # I

    .line 738
    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    .line 739
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 741
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 744
    .restart local v0    # "var2":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v1

    .line 745
    .local v1, "var3":I
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 746
    .local v2, "var4":Landroid/graphics/Rect;
    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 747
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 748
    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v3

    .line 750
    .local v3, "var6":I
    if-lez v3, :cond_1

    .line 751
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 752
    .local v4, "var5":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 753
    .local v5, "var7":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 754
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 755
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 759
    .end local v3    # "var6":I
    .end local v4    # "var5":Landroid/view/View;
    .end local v5    # "var7":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 760
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollAndFocus(III)Z

    move-result v3

    return v3
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 7

    .line 764
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 765
    const/4 v0, 0x0

    return v0

    .line 767
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 768
    .local v0, "var1":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 769
    .local v1, "var2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 770
    .local v2, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    .line 771
    .local v3, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    .line 772
    .local v4, "var5":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, v3, v4

    sub-int/2addr v5, v6

    .line 773
    .end local v3    # "var4":I
    .local v5, "var4":I
    if-ge v5, v2, :cond_1

    int-to-float v3, v5

    int-to-float v6, v2

    div-float/2addr v3, v6

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    return v3
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 778
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getScrollRange()I
    .locals 8

    .line 786
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    .line 787
    .local v0, "var1":I
    const/4 v1, 0x0

    .line 788
    .local v1, "var2":I
    if-lez v0, :cond_0

    .line 789
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 790
    .local v3, "var3":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 791
    .local v4, "var4":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 794
    .end local v3    # "var3":Landroid/view/View;
    .end local v4    # "var4":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return v1
.end method

.method public getTopFadingEdgeStrength()F
    .locals 4

    .line 798
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    return v0

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 802
    .local v0, "var1":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    .line 803
    .local v1, "var2":I
    if-ge v1, v0, :cond_1

    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    return v2
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 813
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public final inChild(II)Z
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 817
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    .line 818
    .local v0, "var3":I
    const/4 v1, 0x0

    .line 819
    .local v1, "var4":Z
    move v2, v1

    .line 820
    .local v2, "var5":Z
    if-lez v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    .line 822
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 823
    .local v3, "var6":Landroid/view/View;
    move v2, v1

    .line 824
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt p2, v4, :cond_0

    .line 825
    move v2, v1

    .line 826
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v0

    if-ge p2, v4, :cond_0

    .line 827
    move v2, v1

    .line 828
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 829
    move v2, v1

    .line 830
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 831
    const/4 v2, 0x1

    .line 838
    .end local v3    # "var6":Landroid/view/View;
    :cond_0
    return v2
.end method

.method public final initOrResetVelocityTracker()V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 843
    .local v0, "var1":Landroid/view/VelocityTracker;
    if-nez v0, :cond_0

    .line 844
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 849
    :goto_0
    return-void
.end method

.method public final initScrollView()V
    .locals 2

    .line 853
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 854
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setFocusable(Z)V

    .line 855
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    .line 856
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setWillNotDraw(Z)V

    .line 857
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 858
    .local v0, "var1":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTouchSlop:I

    .line 859
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mMinimumVelocity:I

    .line 860
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mMaximumVelocity:I

    .line 861
    return-void
.end method

.method public final initVelocityTrackerIfNotExists()V
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 865
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 868
    :cond_0
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public final isOffScreen(Landroid/view/View;)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .line 875
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v0

    .line 876
    .local v0, "var2":I
    const/4 v1, 0x0

    .line 877
    .local v1, "var3":Z
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    const/4 v1, 0x1

    .line 881
    :cond_0
    return v1
.end method

.method public final isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 885
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 886
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 888
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    .line 889
    const/4 v0, 0x1

    .local v0, "var4":Z
    goto :goto_0

    .line 891
    .end local v0    # "var4":Z
    :cond_0
    const/4 v0, 0x0

    .line 894
    .restart local v0    # "var4":Z
    :goto_0
    return v0
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 898
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 903
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 905
    .local v1, "childWidthMeasureSpec":I
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 907
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 908
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 913
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 914
    .local v0, "var6":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 915
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 918
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsLaidOut:Z

    .line 920
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    .line 925
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 926
    .local v0, "var2":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 927
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 928
    .local v1, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v2

    .line 929
    .local v2, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    .line 930
    .local v3, "var5":I
    sub-int v4, v3, v1

    .line 931
    .local v4, "var6":I
    if-gez v4, :cond_0

    .line 932
    const/4 v1, 0x0

    goto :goto_0

    .line 934
    :cond_0
    move v1, v4

    .line 935
    if-le v4, v2, :cond_1

    .line 936
    move v1, v2

    .line 940
    :cond_1
    :goto_0
    if-eq v1, v3, :cond_3

    .line 941
    const/4 v11, 0x1

    invoke-virtual {p0, v1, v11}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    .line 942
    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v9, v5

    check-cast v9, [I

    const/4 v10, 0x1

    move-object v5, p0

    move v7, v1

    move-object v8, v9

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 943
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v5

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 946
    :cond_2
    return v11

    .line 951
    .end local v0    # "var2":F
    .end local v1    # "var3":I
    .end local v2    # "var4":I
    .end local v3    # "var5":I
    .end local v4    # "var6":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 957
    .local v0, "var2":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 958
    return v2

    .line 960
    :cond_0
    and-int/lit16 v0, v0, 0xff

    .line 961
    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 962
    const/4 v4, -0x1

    if-eq v0, v2, :cond_7

    .line 963
    if-ne v0, v1, :cond_5

    .line 964
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 965
    if-eq v0, v4, :cond_4

    .line 966
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 967
    .local v5, "var3":I
    if-ne v5, v4, :cond_1

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    .local v1, "var4":Ljava/lang/StringBuilder;
    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 971
    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NestedScrollView"

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    .end local v1    # "var4":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 974
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v0, v4

    .line 975
    iget v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTouchSlop:I

    if-le v4, v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getNestedScrollAxes()I

    move-result v4

    and-int/2addr v1, v4

    if-nez v1, :cond_3

    .line 976
    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 977
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 978
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 979
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 980
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mNestedYOffset:I

    .line 981
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 982
    .local v1, "var5":Landroid/view/ViewParent;
    if-eqz v1, :cond_2

    .line 983
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 986
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    return v2

    .line 990
    .end local v1    # "var5":Landroid/view/ViewParent;
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    return v1

    .line 993
    .end local v5    # "var3":I
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    return v1

    .line 996
    :cond_5
    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 997
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 998
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1001
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    return v1

    .line 1005
    :cond_7
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 1006
    iput v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 1007
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    .line 1008
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1009
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1012
    :cond_8
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    goto :goto_1

    .line 1014
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v0, v4

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->inChild(II)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1016
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 1017
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 1019
    :cond_a
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 1020
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 1021
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->initOrResetVelocityTracker()V

    .line 1022
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1023
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1024
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 1025
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    .line 1029
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 1034
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1035
    const/4 p2, 0x0

    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    .line 1037
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1038
    .local v1, "var6":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-static {v1, p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1042
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1043
    iget-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsLaidOut:Z

    if-nez v3, :cond_3

    .line 1044
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;

    if-eqz v3, :cond_1

    .line 1045
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;

    iget v4, v4, Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollTo(II)V

    .line 1046
    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;

    .line 1049
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1050
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1051
    .local v0, "var7":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1052
    .local v2, "var10":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int p2, v3, v4

    .line 1055
    .end local v0    # "var7":Landroid/view/View;
    .end local v2    # "var10":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v0

    .line 1056
    .local v0, "var8":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v2

    .line 1057
    .local v2, "var9":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result p4

    .line 1058
    sub-int v3, p5, p3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-static {p4, v3, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->clamp(III)I

    move-result p2

    .line 1059
    if-eq p2, p4, :cond_3

    .line 1060
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollTo(II)V

    .line 1064
    .end local v0    # "var8":I
    .end local v2    # "var9":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollTo(II)V

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsLaidOut:Z

    .line 1066
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1070
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1071
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mFillViewport:Z

    if-eqz v0, :cond_0

    .line 1072
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1075
    .local v0, "var3":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1076
    .local v1, "var4":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1077
    .local v2, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int p2, v3, v4

    .line 1078
    if-ge v2, p2, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v3, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1085
    .end local v0    # "var3":Landroid/view/View;
    .end local v1    # "var4":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "var5":I
    :cond_0
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # F
    .param p3, "var3"    # F
    .param p4, "var4"    # Z

    .line 1088
    if-nez p4, :cond_0

    .line 1089
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1090
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->fling(I)V

    .line 1091
    return v1

    .line 1093
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # F
    .param p3, "var3"    # F

    .line 1098
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # [I

    .line 1103
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 1104
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # [I
    .param p5, "var5"    # I

    .line 1107
    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, [I

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 1108
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 1111
    const/4 v0, 0x0

    check-cast v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, p5, v1, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onNestedScrollInternal(II[I)V

    .line 1112
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I

    .line 1115
    const/4 v0, 0x0

    check-cast v0, [I

    invoke-virtual {p0, p5, p6, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onNestedScrollInternal(II[I)V

    .line 1116
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # [I

    .line 1119
    invoke-virtual {p0, p5, p6, p7}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onNestedScrollInternal(II[I)V

    .line 1120
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 1124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1125
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1129
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1130
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    .line 1131
    return-void
.end method

.method public final onNestedScrollInternal(II[I)V
    .locals 10
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # [I

    .line 1134
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    .line 1135
    .local v0, "var4":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollBy(II)V

    .line 1136
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1137
    .end local v0    # "var4":I
    .local v1, "var4":I
    if-eqz p3, :cond_0

    .line 1138
    const/4 v0, 0x1

    aget v2, p3, v0

    add-int/2addr v2, v1

    aput v2, p3, v0

    .line 1141
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v3, 0x0

    const/4 v5, 0x0

    sub-int v6, p1, v1

    const/4 v0, 0x0

    move-object v7, v0

    check-cast v7, [I

    move v4, v1

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 1142
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Z
    .param p4, "var4"    # Z

    .line 1145
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1146
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/graphics/Rect;

    .line 1150
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1151
    const/16 v0, 0x82

    .local v0, "var3":I
    goto :goto_0

    .line 1153
    .end local v0    # "var3":I
    :cond_0
    move v0, p1

    .line 1154
    .restart local v0    # "var3":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1155
    const/16 v0, 0x21

    .line 1160
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1161
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .local v1, "var4":Landroid/view/View;
    goto :goto_1

    .line 1163
    .end local v1    # "var4":Landroid/view/View;
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, v0}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 1166
    .restart local v1    # "var4":Landroid/view/View;
    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1167
    return v2

    .line 1169
    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v0, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    :goto_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 1174
    instance-of v0, p1, Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;

    if-nez v0, :cond_0

    .line 1175
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1177
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;

    .line 1178
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1179
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;

    .line 1180
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->requestLayout()V

    .line 1182
    .end local v0    # "var2":Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1185
    new-instance v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1186
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView$SavedState;->scrollPosition:I

    .line 1187
    return-object v0
.end method

.method public onScrollChanged(IIII)V
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 1192
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mOnScrollChangeListener:Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;

    .line 1193
    .local v6, "var5":Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;
    if-eqz v6, :cond_0

    .line 1194
    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;->onScrollChange(Lcom/samsung/android/ui/widget/SeslNestedScrollView;IIII)V

    .line 1197
    :cond_0
    return-void
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1201
    .local v0, "var2":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1203
    if-nez v0, :cond_0

    .line 1204
    const/4 v1, 0x1

    .local v1, "var4":B
    goto :goto_0

    .line 1206
    .end local v1    # "var4":B
    :cond_0
    const/4 v1, 0x0

    .line 1209
    .restart local v1    # "var4":B
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 1210
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 1211
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1212
    .local v2, "var3":Landroid/view/VelocityTracker;
    if-eqz v2, :cond_1

    .line 1213
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1217
    .end local v1    # "var4":B
    .end local v2    # "var3":Landroid/view/VelocityTracker;
    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1221
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1222
    .local v0, "var5":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1224
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1225
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->doScrollY(I)V

    .line 1228
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I

    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1237
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 1238
    const/4 v0, 0x1

    .local v0, "var5":Z
    goto :goto_0

    .line 1240
    .end local v0    # "var5":Z
    :cond_0
    const/4 v0, 0x0

    .line 1243
    .restart local v0    # "var5":Z
    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 1248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1249
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 1252
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1253
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    .line 1254
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 1258
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 1259
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1260
    .local v12, "var2":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1261
    .local v0, "var3":I
    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 1262
    iput v13, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mNestedYOffset:I

    .line 1265
    :cond_0
    iget v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1268
    const/4 v1, 0x2

    const/4 v15, 0x1

    if-eqz v0, :cond_18

    .line 1269
    const/4 v2, -0x1

    if-eq v0, v15, :cond_15

    .line 1270
    if-eq v0, v1, :cond_4

    .line 1271
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1272
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1273
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1c

    .line 1274
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1275
    iget v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    goto/16 :goto_7

    .line 1278
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1279
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 1280
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    goto/16 :goto_7

    .line 1283
    :cond_2
    iget-boolean v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1284
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1287
    :cond_3
    iput v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->endDrag()V

    goto/16 :goto_7

    .line 1291
    :cond_4
    iget v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1292
    .local v9, "var4":I
    if-ne v9, v2, :cond_5

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    .local v1, "var12":Ljava/lang/StringBuilder;
    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    iget v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1296
    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NestedScrollView"

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    .end local v1    # "var12":Ljava/lang/StringBuilder;
    goto/16 :goto_5

    .line 1299
    :cond_5
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v6, v1

    .line 1300
    .local v6, "var5":I
    iget v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    sub-int v7, v1, v6

    .line 1301
    .end local v0    # "var3":I
    .local v7, "var3":I
    move v8, v7

    .line 1302
    .local v8, "var6":I
    const/4 v1, 0x0

    iget-object v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1303
    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v15

    sub-int v8, v7, v0

    .line 1304
    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    invoke-virtual {v12, v14, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1305
    iget v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mNestedYOffset:I

    .line 1308
    :cond_6
    move v0, v8

    .line 1309
    .end local v7    # "var3":I
    .restart local v0    # "var3":I
    iget-boolean v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_a

    .line 1310
    move v0, v8

    .line 1311
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTouchSlop:I

    if-le v1, v2, :cond_9

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1313
    .local v1, "var7":Landroid/view/ViewParent;
    if-eqz v1, :cond_7

    .line 1314
    invoke-interface {v1, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1317
    :cond_7
    iput-boolean v15, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 1318
    if-lez v8, :cond_8

    .line 1319
    iget v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTouchSlop:I

    sub-int v0, v8, v2

    move/from16 v16, v0

    goto :goto_0

    .line 1321
    :cond_8
    iget v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTouchSlop:I

    add-int v0, v8, v2

    move/from16 v16, v0

    goto :goto_0

    .line 1311
    .end local v1    # "var7":Landroid/view/ViewParent;
    :cond_9
    move/from16 v16, v0

    goto :goto_0

    .line 1309
    :cond_a
    move/from16 v16, v0

    .line 1326
    .end local v0    # "var3":I
    .local v16, "var3":I
    :goto_0
    iget-boolean v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_14

    .line 1327
    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    sub-int v0, v6, v0

    iput v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v17

    .line 1329
    .local v17, "var8":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v7

    .line 1330
    .end local v6    # "var5":I
    .local v7, "var5":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v8

    .line 1332
    if-eqz v8, :cond_c

    if-ne v8, v15, :cond_b

    if-lez v7, :cond_b

    goto :goto_1

    .line 1335
    :cond_b
    const/4 v0, 0x0

    move/from16 v18, v0

    .local v0, "var15":Z
    goto :goto_2

    .line 1333
    .end local v0    # "var15":Z
    :cond_c
    :goto_1
    const/4 v0, 0x1

    move/from16 v18, v0

    .line 1338
    .local v18, "var15":Z
    :goto_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move v6, v7

    move/from16 v22, v7

    .end local v7    # "var5":I
    .local v22, "var5":I
    move/from16 v7, v19

    move/from16 v19, v8

    .end local v8    # "var6":I
    .local v19, "var6":I
    move/from16 v8, v20

    move/from16 v23, v9

    .end local v9    # "var4":I
    .local v23, "var4":I
    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v10, v13}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1339
    iget-object v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1342
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    sub-int v8, v0, v17

    .line 1343
    .local v8, "var9":I
    iget-object v9, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    .line 1344
    .local v9, "var16":[I
    aput v13, v9, v15

    .line 1345
    const/4 v1, 0x0

    const/4 v3, 0x0

    sub-int v4, v16, v8

    iget-object v5, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v2, v8

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 1346
    iget v0, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 1347
    .end local v8    # "var9":I
    .local v0, "var9":I
    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    .line 1348
    .end local v9    # "var16":[I
    .local v1, "var16":[I
    aget v2, v1, v15

    sub-int v2, v0, v2

    iput v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 1349
    aget v2, v1, v15

    int-to-float v2, v2

    invoke-virtual {v12, v14, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1350
    iget v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mNestedYOffset:I

    iget-object v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollOffset:[I

    aget v3, v3, v15

    add-int/2addr v2, v3

    iput v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mNestedYOffset:I

    .line 1351
    if-eqz v18, :cond_13

    .line 1352
    iget-object v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScrollConsumed:[I

    aget v2, v2, v15

    sub-int v2, v16, v2

    .line 1353
    .end local v16    # "var3":I
    .local v2, "var3":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->ensureGlows()V

    .line 1354
    add-int v3, v17, v2

    .line 1355
    .end local v19    # "var6":I
    .local v3, "var6":I
    if-gez v3, :cond_f

    .line 1356
    iget-object v4, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move/from16 v7, v23

    .end local v23    # "var4":I
    .local v7, "var4":I
    invoke-virtual {v11, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v4, v5, v6}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 1357
    iget-object v4, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1358
    iget-object v4, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    move/from16 v4, v22

    goto :goto_3

    .line 1357
    :cond_e
    move/from16 v4, v22

    goto :goto_3

    .line 1360
    .end local v7    # "var4":I
    .restart local v23    # "var4":I
    :cond_f
    move/from16 v7, v23

    .end local v23    # "var4":I
    .restart local v7    # "var4":I
    move/from16 v4, v22

    .end local v22    # "var5":I
    .local v4, "var5":I
    if-le v3, v4, :cond_10

    .line 1361
    iget-object v5, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    int-to-float v6, v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v11, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v9, v13

    sub-float/2addr v8, v9

    invoke-static {v5, v6, v8}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 1362
    iget-object v5, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1363
    iget-object v5, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 1367
    :cond_10
    :goto_3
    iget-object v5, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    .line 1368
    .local v5, "var13":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-virtual {v6}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_12

    .line 1369
    :cond_11
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1374
    .end local v0    # "var9":I
    .end local v1    # "var16":[I
    .end local v3    # "var6":I
    .end local v4    # "var5":I
    .end local v5    # "var13":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    .end local v7    # "var4":I
    .end local v17    # "var8":I
    .end local v18    # "var15":Z
    :cond_12
    move v0, v2

    goto :goto_5

    .line 1351
    .end local v2    # "var3":I
    .restart local v0    # "var9":I
    .restart local v1    # "var16":[I
    .restart local v16    # "var3":I
    .restart local v17    # "var8":I
    .restart local v18    # "var15":Z
    .restart local v19    # "var6":I
    .restart local v22    # "var5":I
    .restart local v23    # "var4":I
    :cond_13
    move/from16 v4, v22

    move/from16 v7, v23

    .end local v22    # "var5":I
    .end local v23    # "var4":I
    .restart local v4    # "var5":I
    .restart local v7    # "var4":I
    goto :goto_4

    .line 1326
    .end local v0    # "var9":I
    .end local v1    # "var16":[I
    .end local v4    # "var5":I
    .end local v7    # "var4":I
    .end local v17    # "var8":I
    .end local v18    # "var15":Z
    .end local v19    # "var6":I
    .restart local v6    # "var5":I
    .local v8, "var6":I
    .local v9, "var4":I
    :cond_14
    move v7, v9

    .line 1374
    .end local v6    # "var5":I
    .end local v8    # "var6":I
    .end local v9    # "var4":I
    :goto_4
    move/from16 v0, v16

    .end local v16    # "var3":I
    .local v0, "var3":I
    :goto_5
    goto/16 :goto_7

    .line 1376
    :cond_15
    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1377
    .local v1, "var14":Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    iget v4, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1378
    iget v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    .line 1379
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_17

    .line 1380
    neg-int v0, v0

    .line 1381
    int-to-float v3, v0

    .line 1382
    .local v3, "var10":F
    invoke-virtual {v10, v14, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1383
    invoke-virtual {v10, v14, v3, v15}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1384
    invoke-virtual {v10, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->fling(I)V

    .line 1386
    .end local v3    # "var10":F
    :cond_16
    goto :goto_6

    :cond_17
    iget-object v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v22

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1387
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1390
    :goto_6
    iput v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 1391
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->endDrag()V

    goto :goto_7

    .line 1394
    .end local v1    # "var14":Landroid/view/VelocityTracker;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_19

    .line 1395
    return v13

    .line 1398
    :cond_19
    iget-object v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    xor-int/2addr v2, v15

    .line 1399
    .local v2, "var11":Z
    iput-boolean v2, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    .line 1400
    if-eqz v2, :cond_1a

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1402
    .local v3, "var7":Landroid/view/ViewParent;
    if-eqz v3, :cond_1a

    .line 1403
    invoke-interface {v3, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1407
    .end local v3    # "var7":Landroid/view/ViewParent;
    :cond_1a
    iget-object v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->abortAnimatedScroll()V

    .line 1411
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastMotionY:I

    .line 1412
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mActivePointerId:I

    .line 1413
    invoke-virtual {v10, v1, v13}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    .line 1416
    .end local v2    # "var11":Z
    :cond_1c
    :goto_7
    iget-object v1, v10, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1417
    .restart local v1    # "var14":Landroid/view/VelocityTracker;
    if-eqz v1, :cond_1d

    .line 1418
    invoke-virtual {v1, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1421
    :cond_1d
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 1422
    return v15
.end method

.method public overScrollByCompat(IIIIIIIIZ)Z
    .locals 21
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # I
    .param p8, "var8"    # I
    .param p9, "var9"    # Z

    .line 1427
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v1

    .line 1428
    .local v1, "var10":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    .line 1429
    .local v2, "var11":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    .line 1430
    .local v3, "var12":I
    const/4 v4, 0x0

    .line 1432
    .local v4, "var13":Z
    if-le v2, v3, :cond_0

    .line 1433
    const/4 v5, 0x1

    .local v5, "var16":Z
    goto :goto_0

    .line 1435
    .end local v5    # "var16":Z
    :cond_0
    const/4 v5, 0x0

    .line 1439
    .restart local v5    # "var16":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->computeVerticalScrollRange()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->computeVerticalScrollExtent()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 1440
    const/4 v6, 0x1

    .local v6, "var15":Z
    goto :goto_1

    .line 1442
    .end local v6    # "var15":Z
    :cond_1
    const/4 v6, 0x0

    .line 1445
    .restart local v6    # "var15":Z
    :goto_1
    const/4 v7, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v7, :cond_2

    if-eqz v5, :cond_2

    goto :goto_2

    .line 1448
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 1446
    :cond_3
    :goto_2
    const/4 v5, 0x1

    .line 1451
    :goto_3
    if-eqz v1, :cond_5

    if-ne v1, v7, :cond_4

    if-eqz v6, :cond_4

    goto :goto_4

    .line 1454
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 1452
    :cond_5
    :goto_4
    const/4 v6, 0x1

    .line 1457
    :goto_5
    add-int v8, p3, p1

    .line 1458
    .end local p3    # "var3":I
    .local v8, "var3":I
    if-nez v5, :cond_6

    .line 1459
    const/4 v9, 0x0

    .end local p1    # "var1":I
    .local v9, "var1":I
    goto :goto_6

    .line 1461
    .end local v9    # "var1":I
    .restart local p1    # "var1":I
    :cond_6
    move/from16 v9, p7

    .line 1464
    .end local p1    # "var1":I
    .restart local v9    # "var1":I
    :goto_6
    add-int v10, p4, p2

    .line 1465
    .end local p4    # "var4":I
    .local v10, "var4":I
    if-nez v6, :cond_7

    .line 1466
    const/4 v11, 0x0

    .end local p2    # "var2":I
    .local v11, "var2":I
    goto :goto_7

    .line 1468
    .end local v11    # "var2":I
    .restart local p2    # "var2":I
    :cond_7
    move/from16 v11, p8

    .line 1473
    .end local p2    # "var2":I
    .restart local v11    # "var2":I
    :goto_7
    neg-int v12, v9

    .line 1474
    .end local p7    # "var7":I
    .local v12, "var7":I
    add-int v9, v9, p5

    .line 1475
    neg-int v13, v11

    .line 1476
    .end local p5    # "var5":I
    .local v13, "var5":I
    add-int v14, p6, v11

    .line 1477
    .end local p6    # "var6":I
    .local v14, "var6":I
    if-gt v8, v9, :cond_9

    .line 1478
    if-lt v8, v12, :cond_8

    .line 1479
    move v11, v8

    .line 1480
    const/4 v15, 0x0

    .line 1481
    .local v15, "var14":Z
    goto :goto_8

    .line 1484
    .end local v15    # "var14":Z
    :cond_8
    move v9, v12

    .line 1487
    :cond_9
    const/4 v15, 0x1

    .line 1488
    .restart local v15    # "var14":Z
    move v11, v9

    .line 1491
    :goto_8
    if-le v10, v14, :cond_a

    .line 1492
    move v9, v14

    .line 1493
    const/16 v16, 0x1

    move/from16 v7, v16

    .end local p9    # "var9":Z
    .local v16, "var9":Z
    goto :goto_9

    .line 1494
    .end local v16    # "var9":Z
    .restart local p9    # "var9":Z
    :cond_a
    if-ge v10, v13, :cond_b

    .line 1495
    const/16 v16, 0x1

    .line 1496
    .end local p9    # "var9":Z
    .restart local v16    # "var9":Z
    move v9, v13

    move/from16 v7, v16

    goto :goto_9

    .line 1498
    .end local v16    # "var9":Z
    .restart local p9    # "var9":Z
    :cond_b
    const/16 v16, 0x0

    .line 1499
    .end local p9    # "var9":Z
    .restart local v16    # "var9":Z
    move v9, v10

    move/from16 v7, v16

    .line 1502
    .end local v16    # "var9":Z
    .local v7, "var9":Z
    :goto_9
    if-eqz v7, :cond_c

    move/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "var10":I
    .local v17, "var10":I
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1503
    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v20

    move-object/from16 p1, v1

    move/from16 p2, v11

    move/from16 p3, v9

    move/from16 p4, v16

    move/from16 p5, v18

    move/from16 p6, v19

    move/from16 p7, v20

    invoke-virtual/range {p1 .. p7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto :goto_a

    .line 1502
    .end local v17    # "var10":I
    .restart local v1    # "var10":I
    :cond_c
    move/from16 v17, v1

    .line 1506
    .end local v1    # "var10":I
    .restart local v17    # "var10":I
    :cond_d
    :goto_a
    invoke-virtual {v0, v11, v9, v15, v7}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->onOverScrolled(IIZZ)V

    .line 1507
    if-nez v15, :cond_e

    .line 1508
    move v15, v4

    .line 1509
    if-nez v7, :cond_e

    .line 1510
    return v15

    .line 1514
    :cond_e
    const/4 v1, 0x1

    .line 1515
    .end local v15    # "var14":Z
    .local v1, "var14":Z
    return v1
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "var1"    # I

    .line 1520
    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    .line 1521
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 1523
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 1526
    .restart local v0    # "var2":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v1

    .line 1529
    .local v1, "var3":I
    if-eqz v0, :cond_2

    .line 1530
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1531
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    .line 1532
    .local v2, "var6":I
    if-lez v2, :cond_3

    .line 1533
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1534
    .local v3, "var4":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1535
    .local v4, "var5":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 1536
    .end local v2    # "var6":I
    .local v5, "var6":I
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 1537
    .local v2, "var7":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    if-le v6, v5, :cond_1

    .line 1538
    sub-int v6, v5, v1

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 1540
    .end local v3    # "var4":Landroid/view/View;
    .end local v4    # "var5":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    goto :goto_1

    .line 1542
    .end local v2    # "var7":Landroid/graphics/Rect;
    .end local v5    # "var6":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1543
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 1544
    .restart local v2    # "var7":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    .line 1545
    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1549
    .end local v2    # "var7":Landroid/graphics/Rect;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 1550
    .restart local v2    # "var7":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 1551
    .local v3, "var6":I
    add-int v4, v1, v3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 1552
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4
.end method

.method public final recycleVelocityTracker()V
    .locals 2

    .line 1556
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1557
    .local v0, "var1":Landroid/view/VelocityTracker;
    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1562
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 1565
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1566
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 1568
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1571
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1572
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Rect;
    .param p3, "var3"    # Z

    .line 1575
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1576
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 1580
    if-eqz p1, :cond_0

    .line 1581
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    .line 1584
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1585
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    .line 1589
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1590
    return-void
.end method

.method public final runAnimatedScroll(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 1594
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1595
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    goto :goto_0

    .line 1597
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    .line 1600
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastScrollerY:I

    .line 1601
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1602
    return-void
.end method

.method public final scrollAndFocus(III)Z
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 1605
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v0

    .line 1606
    .local v0, "var4":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    .line 1607
    .local v1, "var5":I
    add-int/2addr v0, v1

    .line 1608
    const/4 v2, 0x0

    .line 1610
    .local v2, "var6":Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_0

    .line 1611
    const/4 v3, 0x1

    .local v3, "var7":Z
    goto :goto_0

    .line 1613
    .end local v3    # "var7":Z
    :cond_0
    const/4 v3, 0x0

    .line 1616
    .restart local v3    # "var7":Z
    :goto_0
    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v4

    .line 1617
    .local v4, "var8":Landroid/view/View;
    move-object v5, v4

    .line 1618
    .local v5, "var9":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 1619
    move-object v5, p0

    .line 1622
    :cond_1
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    .line 1623
    move v3, v2

    goto :goto_2

    .line 1625
    :cond_2
    if-eqz v3, :cond_3

    .line 1626
    sub-int/2addr p2, v1

    goto :goto_1

    .line 1628
    :cond_3
    sub-int p2, p3, v0

    .line 1631
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->doScrollY(I)V

    .line 1632
    const/4 v3, 0x1

    .line 1635
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 1636
    move-object v6, v5

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1639
    :cond_4
    return v3
.end method

.method public scrollTo(II)V
    .locals 19
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1643
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1644
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1645
    .local v1, "var3":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1646
    .local v2, "var4":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getWidth()I

    move-result v3

    .line 1647
    .local v3, "var5":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v4

    .line 1648
    .local v4, "var6":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v5

    .line 1649
    .local v5, "var7":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1650
    .local v6, "var8":I
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1651
    .local v7, "var9":I
    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1652
    .local v8, "var10":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v9

    .line 1653
    .local v9, "var11":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v10

    .line 1654
    .local v10, "var12":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v11

    .line 1655
    .local v11, "var13":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 1656
    .local v12, "var14":I
    iget v13, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1657
    .local v13, "var15":I
    iget v14, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1658
    .local v14, "var16":I
    sub-int v15, v3, v4

    sub-int/2addr v15, v5

    add-int v16, v6, v7

    move-object/from16 v17, v1

    .end local v1    # "var3":Landroid/view/View;
    .local v17, "var3":Landroid/view/View;
    add-int v1, v16, v8

    move-object/from16 v16, v2

    move/from16 v2, p1

    .end local v2    # "var4":Landroid/widget/FrameLayout$LayoutParams;
    .local v16, "var4":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v2, v15, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->clamp(III)I

    move-result v1

    .line 1659
    .end local p1    # "var1":I
    .local v1, "var1":I
    sub-int v2, v9, v10

    sub-int/2addr v2, v11

    add-int v15, v12, v13

    add-int/2addr v15, v14

    move/from16 v18, v3

    move/from16 v3, p2

    .end local v3    # "var5":I
    .local v18, "var5":I
    invoke-static {v3, v2, v15}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->clamp(III)I

    move-result v2

    .line 1660
    .end local p2    # "var2":I
    .local v2, "var2":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1661
    :cond_0
    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0

    .line 1643
    .end local v1    # "var1":I
    .end local v2    # "var2":I
    .end local v4    # "var6":I
    .end local v5    # "var7":I
    .end local v6    # "var8":I
    .end local v7    # "var9":I
    .end local v8    # "var10":I
    .end local v9    # "var11":I
    .end local v10    # "var12":I
    .end local v11    # "var13":I
    .end local v12    # "var14":I
    .end local v13    # "var15":I
    .end local v14    # "var16":I
    .end local v16    # "var4":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "var3":Landroid/view/View;
    .end local v18    # "var5":I
    .restart local p1    # "var1":I
    .restart local p2    # "var2":I
    :cond_1
    move/from16 v2, p1

    move/from16 v3, p2

    move v1, v2

    move v2, v3

    .line 1665
    .end local p1    # "var1":I
    .end local p2    # "var2":I
    .restart local v1    # "var1":I
    .restart local v2    # "var2":I
    :cond_2
    :goto_0
    return-void
.end method

.method public final scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 1668
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1669
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1670
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1671
    .local v0, "var2":I
    if-eqz v0, :cond_0

    .line 1672
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollBy(II)V

    .line 1675
    :cond_0
    return-void
.end method

.method public final scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "var1"    # Landroid/graphics/Rect;
    .param p2, "var2"    # Z

    .line 1678
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1680
    .local v0, "var3":I
    if-eqz v0, :cond_0

    .line 1681
    const/4 v1, 0x1

    .local v1, "var4":Z
    goto :goto_0

    .line 1683
    .end local v1    # "var4":Z
    :cond_0
    const/4 v1, 0x0

    .line 1686
    .restart local v1    # "var4":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1687
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1688
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1690
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->smoothScrollBy(II)V

    .line 1694
    :cond_2
    :goto_1
    return v1
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 1698
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 1699
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mFillViewport:Z

    .line 1700
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->requestLayout()V

    .line 1703
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 1706
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 1707
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;

    .line 1710
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mOnScrollChangeListener:Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;

    .line 1711
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 1714
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    .line 1715
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1718
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 12
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1722
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1723
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1724
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1725
    .local v1, "var3":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1726
    .local v2, "var4":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1727
    .local v3, "var5":I
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1728
    .local v4, "var6":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1729
    .local v5, "var7":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getHeight()I

    move-result v6

    .line 1730
    .local v6, "var8":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v7

    .line 1731
    .local v7, "var9":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v8

    .line 1732
    .local v8, "var10":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollY()I

    move-result p1

    .line 1733
    add-int v9, p2, p1

    add-int v10, v3, v4

    add-int/2addr v10, v5

    sub-int v11, v6, v7

    sub-int/2addr v11, v8

    sub-int/2addr v10, v11

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1734
    iget-object v9, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getScrollX()I

    move-result v10

    sub-int v11, p2, p1

    invoke-virtual {v9, v10, p1, v0, v11}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1735
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->runAnimatedScroll(Z)V

    .line 1736
    .end local v1    # "var3":Landroid/view/View;
    .end local v2    # "var4":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "var5":I
    .end local v4    # "var6":I
    .end local v5    # "var7":I
    .end local v6    # "var8":I
    .end local v7    # "var9":I
    .end local v8    # "var10":I
    goto :goto_0

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1738
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->abortAnimatedScroll()V

    .line 1741
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->scrollBy(II)V

    .line 1744
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mLastScroll:J

    .line 1746
    :cond_2
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "var1"    # I

    .line 1750
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1754
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1759
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    .line 1760
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1763
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 1764
    return-void
.end method
