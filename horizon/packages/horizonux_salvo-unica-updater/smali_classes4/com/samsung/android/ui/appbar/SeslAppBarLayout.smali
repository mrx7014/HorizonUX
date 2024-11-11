.class public Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SeslAppBarLayout.java"

# interfaces
.implements Lcom/samsung/android/ui/coordinatorlayout/widget/ABLBehavior;


# annotations
.annotation runtime Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$DefaultBehavior;
    value = Lcom/samsung/android/ui/appbar/SeslAppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;,
        Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;,
        Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;,
        Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;,
        Lcom/samsung/android/ui/appbar/SeslAppBarLayout$Behavior;,
        Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;
    }
.end annotation


# static fields
.field public static final SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static mAppBarHeight:F


# instance fields
.field public liftOnScroll:Z

.field public liftOnScrollTargetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public liftOnScrollTargetViewId:I

.field public mBackground:Landroid/graphics/drawable/Drawable;

.field public mBottomPadding:I

.field public mCurrentOrientation:I

.field public mDownPreScrollRange:I

.field public mDownScrollRange:I

.field public mHaveChildWithInterpolator:Z

.field public mHeightCustom:F

.field public mHeightPercent:F

.field public mIsSetCollapsedHeight:Z

.field public mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field public mLiftable:Z

.field public mLiftableOverride:Z

.field public mLifted:Z

.field public mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingAction:I

.field public mTmpStatesArray:[I

.field public mTotalScrollRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mTotalScrollRange:I

    .line 101
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mDownPreScrollRange:I

    .line 102
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mDownScrollRange:I

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mPendingAction:I

    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    .line 105
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightCustom:F

    .line 106
    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightPercent:F

    .line 107
    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBottomPadding:I

    .line 108
    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mIsSetCollapsedHeight:Z

    .line 109
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setOrientation(I)V

    .line 110
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 111
    const v3, 0x7f1002f2

    invoke-static {p0, p2, p3, v3}, Lcom/samsung/android/ui/appbar/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 114
    :cond_0
    sget-object v7, Lcom/mesalabs/ten/update/R$styleable;->SeslAppBarLayout:[I

    const v9, 0x7f1002f2

    new-array v10, v1, [I

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 115
    .local v3, "var4":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-static {p0, v5}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 119
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->isLightTheme()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600da

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d9

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setBackgroundColor(I)V

    .line 127
    :goto_0
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5, v1, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZZ)V

    .line 131
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p0, v4}, Lcom/samsung/android/ui/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 135
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const v6, 0x3ecb1c43    # 0.3967f

    if-eqz v5, :cond_5

    .line 136
    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightCustom:F

    goto :goto_1

    .line 138
    :cond_5
    iput v6, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightCustom:F

    .line 141
    :goto_1
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 142
    .local v4, "var5":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b0

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 143
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightPercent:F

    .line 144
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 145
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBottomPadding:I

    .line 146
    invoke-virtual {p0, v1, v1, v1, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setPadding(IIII)V

    goto :goto_2

    .line 148
    :cond_6
    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBottomPadding:I

    .line 151
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_8

    .line 152
    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 153
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 156
    :cond_7
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 157
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 161
    :cond_8
    const/4 v2, 0x6

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScroll:Z

    .line 162
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetViewId:I

    .line 163
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBottomPadding:I

    if-lez v0, :cond_9

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    goto :goto_3

    .line 167
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    .line 170
    :goto_3
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$1;-><init>(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mCurrentOrientation:I

    .line 176
    return-void
.end method

.method private getWindowHeight()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method


# virtual methods
.method public addOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mListeners:Ljava/util/List;

    .line 187
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_1
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;

    .line 194
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->addOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;)V

    .line 195
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 198
    instance-of v0, p1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    return v0
.end method

.method public final clearLiftOnScrollTargetView()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 203
    .local v0, "var1":Ljava/lang/ref/WeakReference;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 207
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 208
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 214
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(Z)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(Z)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 219
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(Z)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 221
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(Z)V

    .line 225
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchOffsetUpdates(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 229
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mListeners:Ljava/util/List;

    .line 230
    .local v0, "var2":Ljava/util/List;
    if-eqz v0, :cond_1

    .line 231
    const/4 v1, 0x0

    .line 233
    .local v1, "var3":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "var4":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 234
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;

    .line 235
    .local v3, "var5":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;
    if-eqz v3, :cond_0

    .line 236
    invoke-interface {v3, p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)V

    .line 233
    .end local v3    # "var5":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "var3":I
    .end local v2    # "var4":I
    :cond_1
    return-void
.end method

.method public final findActivityOfContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "var2":Landroid/app/Activity;
    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 247
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 248
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 249
    :cond_0
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 250
    move-object v1, p1

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 252
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 256
    :cond_2
    return-object v0
.end method

.method public final findLiftOnScrollTargetView()Landroid/view/View;
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 261
    .local v0, "var1":Ljava/lang/ref/WeakReference;
    const/4 v1, 0x0

    .line 263
    .local v1, "var2":Ljava/lang/Object;
    if-nez v0, :cond_2

    iget v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetViewId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 265
    .local v2, "var4":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 266
    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetViewId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, "var5":Landroid/view/View;
    goto :goto_0

    .line 267
    .end local v3    # "var5":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget v4, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetViewId:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "var5":Landroid/view/View;
    goto :goto_0

    .line 270
    .end local v3    # "var5":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    .line 273
    .restart local v3    # "var5":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_2

    .line 274
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 278
    .end local v2    # "var4":Landroid/app/Activity;
    .end local v3    # "var5":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 279
    .local v2, "var3":Ljava/lang/ref/WeakReference;
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 280
    .restart local v3    # "var5":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 281
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/view/View;

    .line 284
    :cond_3
    return-object v3
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->generateDefaultLayoutParams()Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->generateDefaultLayoutParams()Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .locals 3

    .line 288
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .locals 2
    .param p1, "var1"    # Landroid/util/AttributeSet;

    .line 292
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .locals 2
    .param p1, "var1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 299
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getCollapsedHeight()F
    .locals 1

    .line 304
    sget v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    return v0
.end method

.method public getDownNestedPreScrollRange()I
    .locals 8

    .line 308
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mDownPreScrollRange:I

    .line 309
    .local v0, "var1":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 310
    return v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 315
    .local v1, "var2":I
    const/4 v2, 0x0

    .local v2, "var3":I
    :goto_0
    if-ltz v1, :cond_5

    .line 316
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 317
    .local v3, "var4":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    .line 318
    .local v4, "var5":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 319
    .local v5, "var6":I
    iget v0, v4, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 320
    and-int/lit8 v6, v0, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 321
    iget v6, v4, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->topMargin:I

    iget v7, v4, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 322
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_1

    .line 323
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v2

    move v0, v6

    .end local v0    # "var1":I
    .local v6, "var1":I
    goto :goto_2

    .line 325
    .end local v6    # "var1":I
    .restart local v0    # "var1":I
    :cond_1
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2

    .line 326
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v0

    .line 331
    :goto_1
    sub-int v6, v5, v0

    add-int/2addr v6, v2

    move v0, v6

    .end local v0    # "var1":I
    .restart local v6    # "var1":I
    goto :goto_2

    .line 334
    .end local v6    # "var1":I
    .restart local v0    # "var1":I
    :cond_3
    move v0, v2

    .line 335
    if-lez v2, :cond_4

    .line 336
    goto :goto_3

    .line 340
    :cond_4
    :goto_2
    nop

    .end local v3    # "var4":Landroid/view/View;
    .end local v4    # "var5":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .end local v5    # "var6":I
    add-int/lit8 v1, v1, -0x1

    .line 315
    move v2, v0

    goto :goto_0

    .line 343
    :cond_5
    :goto_3
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 344
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mDownPreScrollRange:I

    .line 345
    return v0
.end method

.method public getDownNestedScrollRange()I
    .locals 12

    .line 350
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mDownScrollRange:I

    .line 351
    .local v0, "var1":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 352
    return v0

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v1

    .line 355
    .local v1, "var2":I
    const/4 v2, 0x0

    .line 356
    .local v2, "var3":I
    move v0, v2

    .line 360
    :goto_0
    move v3, v0

    .line 361
    .local v3, "var4":I
    if-lt v2, v1, :cond_1

    .line 362
    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 366
    .local v4, "var5":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    .line 367
    .local v5, "var6":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 368
    .local v6, "var7":I
    iget v7, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->topMargin:I

    .line 369
    .local v7, "var8":I
    iget v8, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->bottomMargin:I

    .line 370
    .local v8, "var9":I
    iget v9, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 371
    .local v9, "var10":I
    move v3, v0

    .line 372
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_2

    .line 373
    goto :goto_1

    .line 376
    :cond_2
    add-int v10, v6, v7

    add-int/2addr v10, v8

    add-int/2addr v0, v10

    .line 377
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_3

    .line 378
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v3, v0, v10

    .line 379
    nop

    .line 385
    .end local v4    # "var5":Landroid/view/View;
    .end local v5    # "var6":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .end local v6    # "var7":I
    .end local v7    # "var8":I
    .end local v8    # "var9":I
    .end local v9    # "var10":I
    :goto_1
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 386
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mDownScrollRange:I

    .line 387
    return v0

    .line 382
    .restart local v4    # "var5":Landroid/view/View;
    .restart local v5    # "var6":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .restart local v6    # "var7":I
    .restart local v7    # "var8":I
    .restart local v8    # "var9":I
    .restart local v9    # "var10":I
    :cond_3
    nop

    .end local v4    # "var5":Landroid/view/View;
    .end local v5    # "var6":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .end local v6    # "var7":I
    .end local v7    # "var8":I
    .end local v8    # "var9":I
    .end local v9    # "var10":I
    add-int/lit8 v2, v2, 0x1

    .line 383
    goto :goto_0
.end method

.method public getLiftOnScrollTargetViewId()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetViewId:I

    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v0

    .line 397
    .local v0, "var1":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 398
    .local v1, "var2":I
    if-nez v1, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v1

    .line 400
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 401
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    .line 403
    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    if-nez v1, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    return v2

    .line 411
    :cond_1
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    return v2
.end method

.method public getPendingAction()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mPendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public final getTopInset()I
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 426
    .local v0, "var1":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .local v1, "var2":I
    goto :goto_0

    .line 429
    .end local v1    # "var2":I
    :cond_0
    const/4 v1, 0x0

    .line 432
    .restart local v1    # "var2":I
    :goto_0
    return v1
.end method

.method public final getTotalScrollRange()I
    .locals 10

    .line 436
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mTotalScrollRange:I

    .line 437
    .local v0, "var1":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 438
    return v0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v1

    .line 441
    .local v1, "var2":I
    const/4 v2, 0x0

    .line 442
    .local v2, "var3":I
    move v0, v2

    .line 446
    :goto_0
    move v3, v0

    .line 447
    .local v3, "var4":I
    if-lt v2, v1, :cond_1

    .line 448
    goto :goto_1

    .line 451
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 452
    .local v4, "var5":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    .line 453
    .local v5, "var6":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 454
    .local v6, "var7":I
    iget v7, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->scrollFlags:I

    .line 455
    .local v7, "var8":I
    move v3, v0

    .line 456
    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_2

    .line 457
    goto :goto_1

    .line 460
    :cond_2
    iget v8, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v6

    iget v9, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 461
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_3

    .line 462
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int v3, v0, v8

    .line 463
    nop

    .line 469
    .end local v4    # "var5":Landroid/view/View;
    .end local v5    # "var6":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .end local v6    # "var7":I
    .end local v7    # "var8":I
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v5

    sub-int v5, v3, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 470
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mTotalScrollRange:I

    .line 471
    return v0

    .line 466
    .restart local v4    # "var5":Landroid/view/View;
    .restart local v5    # "var6":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .restart local v6    # "var7":I
    .restart local v7    # "var8":I
    :cond_3
    nop

    .end local v4    # "var5":Landroid/view/View;
    .end local v5    # "var6":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .end local v6    # "var7":I
    .end local v7    # "var8":I
    add-int/lit8 v2, v2, 0x1

    .line 467
    goto :goto_0
.end method

.method public getUpNestedPreScrollRange()I
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public hasChildWithInterpolator()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHaveChildWithInterpolator:Z

    return v0
.end method

.method public final hasCollapsibleChild()Z
    .locals 3

    .line 484
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v0

    .line 486
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 487
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const/4 v2, 0x1

    return v2

    .line 486
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "var2":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hasScrollableChildren()Z
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 500
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 503
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public final invalidateScrollRanges()V
    .locals 1

    .line 507
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mTotalScrollRange:I

    .line 508
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mDownPreScrollRange:I

    .line 509
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mDownScrollRange:I

    .line 510
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    return v0
.end method

.method public isLiftOnScroll()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScroll:Z

    return v0
.end method

.method public final isLightTheme()Z
    .locals 5

    .line 521
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 522
    .local v0, "var1":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 523
    .local v1, "var2":Landroid/content/res/Resources$Theme;
    const v2, 0x7f0401ce

    .line 524
    .local v2, "var3":I
    const/4 v3, 0x1

    .line 525
    .local v3, "var4":Z
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 526
    iget v4, v0, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_0

    .line 527
    const/4 v3, 0x0

    .line 530
    :cond_0
    return v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "var1"    # Landroid/content/res/Configuration;

    .line 534
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 535
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 536
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 544
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 546
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 547
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 548
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600da

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 550
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600d9

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setBackgroundColor(I)V

    .line 554
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBottomPadding:I

    .line 555
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v2, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setPadding(IIII)V

    .line 556
    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBottomPadding:I

    if-lez v1, :cond_4

    .line 557
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070231

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    goto :goto_1

    .line 559
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070230

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    .line 562
    :goto_1
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 563
    .local v1, "var3":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701b0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 564
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightPercent:F

    .line 565
    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightCustom:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 566
    const-string v3, "Sesl_AppBarLayout"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->updateInternalHeight()V

    .line 570
    :cond_5
    iget-boolean v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mCurrentOrientation:I

    if-ne v3, v5, :cond_6

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    goto :goto_2

    .line 573
    :cond_6
    invoke-virtual {p0, v5, v2, v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZZ)V

    goto :goto_3

    .line 571
    :cond_7
    :goto_2
    invoke-virtual {p0, v2, v2, v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZZ)V

    .line 576
    :goto_3
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mCurrentOrientation:I

    .line 577
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4
    .param p1, "var1"    # I

    .line 580
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mTmpStatesArray:[I

    if-nez v0, :cond_0

    .line 581
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mTmpStatesArray:[I

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mTmpStatesArray:[I

    .line 585
    .local v0, "var2":[I
    array-length v1, v0

    add-int/2addr v1, p1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 586
    .local v1, "var3":[I
    iget-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLiftable:Z

    if-eqz v2, :cond_1

    .line 587
    const p1, 0x7f040332

    goto :goto_0

    .line 589
    :cond_1
    const p1, -0x7f040332

    .line 592
    :goto_0
    const/4 v3, 0x0

    aput p1, v0, v3

    .line 593
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    if-eqz v3, :cond_2

    .line 594
    const p1, 0x7f040333

    goto :goto_1

    .line 596
    :cond_2
    const p1, -0x7f040333

    .line 599
    :goto_1
    const/4 v3, 0x1

    aput p1, v0, v3

    .line 600
    if-eqz v2, :cond_3

    .line 601
    const p1, 0x7f040330

    goto :goto_2

    .line 603
    :cond_3
    const p1, -0x7f040330

    .line 606
    :goto_2
    const/4 v3, 0x2

    aput p1, v0, v3

    .line 607
    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    if-eqz v2, :cond_4

    .line 608
    const p1, 0x7f04032f

    goto :goto_3

    .line 610
    :cond_4
    const p1, -0x7f04032f

    .line 613
    :goto_3
    const/4 v2, 0x3

    aput p1, v0, v2

    .line 614
    invoke-static {v1, v0}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 618
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->clearLiftOnScrollTargetView()V

    .line 620
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 623
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->invalidateScrollRanges()V

    .line 625
    const/4 p1, 0x0

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 627
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result p3

    .line 629
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 630
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 632
    goto :goto_1

    .line 629
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 636
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLiftableOverride:Z

    if-nez v0, :cond_4

    .line 637
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScroll:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->hasCollapsibleChild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    :cond_2
    const/4 p1, 0x1

    .line 641
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLiftableState(Z)Z

    .line 644
    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 647
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mIsSetCollapsedHeight:Z

    if-nez v0, :cond_1

    .line 648
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mBottomPadding:I

    if-lez v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    .line 655
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightCustom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 656
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->updateInternalHeight()V

    .line 659
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 660
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->invalidateScrollRanges()V

    .line 661
    return-void
.end method

.method public onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1, "var1"    # Landroidx/core/view/WindowInsetsCompat;

    .line 665
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    move-object v0, p1

    .local v0, "var2":Landroidx/core/view/WindowInsetsCompat;
    goto :goto_0

    .line 668
    .end local v0    # "var2":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const/4 v0, 0x0

    .line 671
    .restart local v0    # "var2":Landroidx/core/view/WindowInsetsCompat;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 672
    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 673
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->invalidateScrollRanges()V

    .line 676
    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;

    .line 680
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mListeners:Ljava/util/List;

    .line 681
    .local v0, "var2":Ljava/util/List;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 682
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 685
    :cond_0
    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;

    .line 688
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->removeOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseOnOffsetChangedListener;)V

    .line 689
    return-void
.end method

.method public resetPendingAction()V
    .locals 1

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mPendingAction:I

    .line 693
    return-void
.end method

.method public seslIsCollapsed()Z
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    return v0
.end method

.method public seslSetExpanded(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 700
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(Z)V

    .line 701
    return-void
.end method

.method public setCollapsedHeight(F)V
    .locals 3
    .param p1, "var1"    # F

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    .local v0, "var2":Ljava/lang/StringBuilder;
    const-string v1, "setCollapsedHeight: height :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sesl_AppBarLayout"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mIsSetCollapsedHeight:Z

    .line 709
    sput p1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    .line 710
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 713
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZ)V

    .line 714
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1
    .param p1, "var1"    # Z
    .param p2, "var2"    # Z

    .line 717
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZZ)V

    .line 718
    return-void
.end method

.method public final setExpanded(ZZZ)V
    .locals 4
    .param p1, "var1"    # Z
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 721
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLifted(Z)Z

    .line 723
    if-eqz p1, :cond_0

    .line 724
    const/4 v0, 0x1

    .local v0, "var4":B
    goto :goto_0

    .line 726
    .end local v0    # "var4":B
    :cond_0
    const/4 v0, 0x2

    .line 729
    .restart local v0    # "var4":B
    :goto_0
    const/4 v1, 0x0

    .line 731
    .local v1, "var5":B
    if-eqz p2, :cond_1

    .line 732
    const/4 v2, 0x4

    .local v2, "var6":B
    goto :goto_1

    .line 734
    .end local v2    # "var6":B
    :cond_1
    const/4 v2, 0x0

    .line 737
    .restart local v2    # "var6":B
    :goto_1
    if-eqz p3, :cond_2

    .line 738
    const/16 v1, 0x8

    .line 741
    :cond_2
    or-int v3, v0, v2

    or-int/2addr v3, v1

    iput v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mPendingAction:I

    .line 742
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->requestLayout()V

    .line 743
    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 746
    iput-boolean p1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScroll:Z

    .line 747
    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 750
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->liftOnScrollTargetViewId:I

    .line 751
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->clearLiftOnScrollTargetView()V

    .line 752
    return-void
.end method

.method public final setLiftableState(Z)Z
    .locals 1
    .param p1, "var1"    # Z

    .line 755
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLiftable:Z

    if-eq v0, p1, :cond_0

    .line 756
    iput-boolean p1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLiftable:Z

    .line 757
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->refreshDrawableState()V

    .line 758
    const/4 v0, 0x1

    return v0

    .line 760
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLifted(Z)Z
    .locals 1
    .param p1, "var1"    # Z

    .line 765
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLiftedState(Z)Z

    move-result v0

    return v0
.end method

.method public setLiftedState(Z)Z
    .locals 1
    .param p1, "var1"    # Z

    .line 769
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    if-eq v0, p1, :cond_0

    .line 770
    iput-boolean p1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    .line 771
    iput-boolean p1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    .line 772
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->refreshDrawableState()V

    .line 773
    const/4 v0, 0x1

    return v0

    .line 775
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 780
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 781
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 785
    return-void

    .line 783
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetElevation(F)V
    .locals 2
    .param p1, "var1"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 789
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 790
    invoke-static {p0, p1}, Lcom/samsung/android/ui/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 793
    :cond_0
    return-void
.end method

.method public shouldLift(Landroid/view/View;)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 796
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->findLiftOnScrollTargetView()Landroid/view/View;

    move-result-object v0

    .line 797
    .local v0, "var2":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 798
    move-object p1, v0

    .line 802
    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 805
    :cond_1
    const/4 v1, 0x1

    .local v1, "var3":Z
    goto :goto_1

    .line 803
    .end local v1    # "var3":Z
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 808
    .restart local v1    # "var3":Z
    :goto_1
    return v1
.end method

.method public final updateInternalHeight()V
    .locals 8

    .line 812
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getWindowHeight()I

    move-result v0

    .line 813
    .local v0, "var1":I
    int-to-float v1, v0

    iget v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightPercent:F

    mul-float/2addr v1, v2

    .line 814
    .local v1, "var2":F
    move v2, v1

    .line 815
    .local v2, "var3":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    .line 816
    sget v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->findActivityOfContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 820
    .local v3, "var4":Landroid/app/Activity;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .local v4, "var5":Ljava/lang/StringBuilder;
    const-string v5, "updateInternalHeight: context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 823
    const-string v5, ", orientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 825
    const-string v5, " density:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 827
    const-string v5, " ,mHeightPercent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mHeightPercent:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 829
    const-string v5, " windowHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    const-string v5, " activity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Sesl_AppBarLayout"

    invoke-static {v6, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .local v5, "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    goto :goto_0

    .line 838
    .end local v5    # "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    :catch_0
    move-exception v5

    .line 839
    .local v5, "var6":Ljava/lang/ClassCastException;
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const/4 v7, 0x0

    move-object v5, v7

    .line 843
    .local v5, "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;
    :goto_0
    if-eqz v5, :cond_1

    .line 844
    float-to-int v7, v2

    iput v7, v5, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->height:I

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    .line 846
    const-string v7, "updateInternalHeight: LayoutParams :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 848
    const-string v7, " ,lp.height :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget v7, v5, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    :cond_1
    return-void
.end method
