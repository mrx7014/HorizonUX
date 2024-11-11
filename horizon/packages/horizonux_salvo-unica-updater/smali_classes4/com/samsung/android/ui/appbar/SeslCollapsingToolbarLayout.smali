.class public Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "SeslCollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;,
        Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258

.field static final SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

.field private mCollapsingTitleEnabled:Z

.field private mCollapsingTitleLayout:Landroid/widget/LinearLayout;

.field private mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

.field private mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

.field private mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

.field private mCollapsingToolbarLayoutSubTitleEnabled:Z

.field private mCollapsingToolbarLayoutTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field mCurrentOffset:I

.field private mDefaultHeightDp:F

.field private mDrawCollapsingTitle:Z

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginEnd:I

.field private mExpandedMarginStart:I

.field private mExpandedMarginTop:I

.field private mExtendSubTitleAppearance:I

.field private mExtendTitleAppearance:I

.field private mHeightPercent:F

.field private mIsCollapsingToolbarTitleCustom:Z

.field mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mOnOffsetChangedListener:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimationDuration:J

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimVisibleHeightTrigger:I

.field private mScrimsAreShown:Z

.field private mStatsusBarHeight:I

.field mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mToolbarDirectChild:Landroid/view/View;

.field private mToolbarId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mHeightPercent:F

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 99
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatsusBarHeight:I

    .line 101
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 117
    sget-object v3, Lcom/mesalabs/ten/update/R$styleable;->SeslCollapsingToolbarLayout:[I

    const v4, 0x7f100340

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 119
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 122
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    .line 124
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 126
    const/16 v4, 0x13

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 127
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 128
    iget-boolean v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-ne v5, v4, :cond_0

    if-eqz v5, :cond_0

    .line 129
    xor-int/2addr v4, v0

    iput-boolean v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 131
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v4, :cond_1

    .line 132
    new-instance v4, Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-direct {v4, p0}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 133
    sget-object v5, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    iget-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const/4 v5, 0x4

    const v6, 0x800053

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 135
    iget-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const v5, 0x800013

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    goto :goto_0

    .line 137
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 140
    :goto_0
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExtendTitleAppearance:I

    .line 141
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExtendSubTitleAppearance:I

    .line 142
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExtendTitleAppearance:I

    .line 145
    :cond_2
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 146
    .local v6, "subtitle":Ljava/lang/CharSequence;
    iget-boolean v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 149
    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    goto :goto_2

    .line 147
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 152
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5

    .line 153
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v1, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x10

    if-eqz v7, :cond_7

    .line 156
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x41800000    # 16.0f

    invoke-direct {v7, v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 157
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 158
    iget-object v9, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    invoke-static {p1}, Lcom/mesalabs/cerberus/utils/ViewUtils;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatsusBarHeight:I

    .line 160
    if-lez v9, :cond_6

    .line 161
    iget-object v10, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v10, v2, v2, v2, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 163
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-boolean v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v7, :cond_9

    .line 166
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    .line 168
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v7, v9, :cond_8

    .line 169
    iget-object v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 171
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExtendTitleAppearance:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070232

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 176
    .local v0, "extendedTitlePadding":I
    iget-object v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    .end local v0    # "extendedTitlePadding":I
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    if-eqz v0, :cond_a

    .line 179
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 181
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateDefaultHeightDP()V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateTitleLayout()V

    .line 184
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 185
    .local v0, "dimensionPixelSize":I
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginStart:I

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginTop:I

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginEnd:I

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 186
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 187
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 189
    :cond_b
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 190
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 192
    :cond_c
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 193
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 195
    :cond_d
    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 196
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 199
    :cond_e
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    iget-boolean v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v5, :cond_f

    .line 202
    iget-object v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const v7, 0x7f10033e

    invoke-virtual {v5, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 203
    iget-object v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const v7, 0x7f100305

    invoke-virtual {v5, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 204
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 205
    iget-object v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 209
    :cond_f
    const/16 v4, 0xf

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 210
    const/16 v4, 0xe

    const/16 v5, 0x258

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 212
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 213
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const/16 v4, 0x14

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbarId:I

    .line 217
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 223
    new-instance v1, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$1;-><init>(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    .line 67
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDefaultHeightDp:F

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;
    .param p1, "x1"    # F

    .line 67
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDefaultHeightDp:F

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    return v0
.end method

.method private animateScrim(I)V
    .locals 4
    .param p1, "targetAlpha"    # I

    .line 637
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->ensureToolbar()V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 639
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 640
    iget-wide v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 641
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$3;-><init>(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 648
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 652
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 653
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 654
    return-void
.end method

.method private ensureToolbar()V
    .locals 5

    .line 386
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mRefreshToolbar:Z

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 391
    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 393
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbarId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 394
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 395
    if-eqz v0, :cond_1

    .line 396
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_4

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 403
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroidx/appcompat/widget/Toolbar;

    if-eqz v4, :cond_2

    .line 405
    move-object v0, v3

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 406
    goto :goto_1

    .line 402
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 413
    .end local v0    # "toolbar":Landroidx/appcompat/widget/Toolbar;
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateDummyView()V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 415
    return-void
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;

    .line 422
    move-object v0, p1

    .line 423
    .local v0, "directChild":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 424
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 425
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 423
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 428
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_1
    return-object v0
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 521
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 522
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 523
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    return v2

    .line 525
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/samsung/android/ui/appbar/ViewOffsetHelper;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 529
    const v0, 0x7f090223

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    .line 530
    .local v1, "offsetHelper":Lcom/samsung/android/ui/appbar/ViewOffsetHelper;
    if-nez v1, :cond_0

    .line 531
    new-instance v2, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 532
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 534
    :cond_0
    return-object v1
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 418
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne p1, v0, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private updateDefaultHeightDP()V
    .locals 3

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    const v1, 0x7f07019d

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    .line 290
    .local v0, "abl":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getPaddingBottom()I

    move-result v2

    if-lez v2, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDefaultHeightDp:F

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDefaultHeightDp:F

    .line 295
    .end local v0    # "abl":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    :goto_0
    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDefaultHeightDp:F

    .line 298
    :goto_1
    return-void
.end method

.method private updateDummyView()V
    .locals 3

    .line 432
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 434
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 435
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 438
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 446
    :cond_2
    return-void
.end method

.method private updateTitleLayout()V
    .locals 9

    .line 256
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 257
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 258
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mHeightPercent:F

    .line 259
    iget-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v1, :cond_4

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExtendTitleAppearance:I

    sget-object v4, Lcom/mesalabs/ten/update/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 261
    .local v1, "appearance":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    .line 262
    .local v4, "textSize":F
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 263
    .local v5, "fontScale":F
    const v6, 0x3f8ccccd    # 1.1f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    .line 264
    const v5, 0x3f8ccccd    # 1.1f

    .line 266
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTitleLayout: context:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", orientation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " density:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,testSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "fontScale : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCollapsingToolbarLayoutSubTitleEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Sesl_CTL"

    invoke-static {v7, v6}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-boolean v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    if-nez v6, :cond_1

    .line 268
    iget-object v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    mul-float v7, v4, v5

    invoke-virtual {v6, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0701a5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 271
    iget-object v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0701a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    :goto_0
    iget v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mHeightPercent:F

    const v7, 0x3e99999a    # 0.3f

    cmpl-float v6, v6, v7

    const/4 v7, 0x2

    if-eqz v6, :cond_2

    .line 274
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 275
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 276
    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    if-eqz v6, :cond_3

    .line 277
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 278
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 280
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 281
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 283
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    .end local v1    # "appearance":Landroid/content/res/TypedArray;
    .end local v4    # "textSize":F
    .end local v5    # "fontScale":F
    :cond_4
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 233
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    .line 237
    .local v0, "layoutParams":Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;
    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->getTitleIsCustom()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mIsCollapsingToolbarTitleCustom:Z

    .line 239
    if-eqz v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_0

    .line 241
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_1

    .line 244
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .end local v0    # "layoutParams":Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 942
    instance-of v0, p1, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 344
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->ensureToolbar()V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v1, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 358
    .local v0, "topInset":I
    :goto_0
    if-lez v0, :cond_3

    .line 359
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCurrentOffset:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 361
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 364
    .end local v0    # "topInset":I
    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "invalidated":Z
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->isToolbarChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 371
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    const/4 v0, 0x1

    .line 374
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 721
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v0

    .line 724
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 726
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 727
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 730
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 731
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 732
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 734
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v3, :cond_2

    .line 735
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 738
    :cond_2
    if-eqz v1, :cond_3

    .line 739
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->invalidate()V

    .line 741
    :cond_3
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;
    .locals 2

    .line 947
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 952
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 957
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .line 797
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v0

    return v0

    .line 800
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 849
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 852
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .line 833
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    return v0

    .line 836
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v0

    return v0

    .line 839
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .line 902
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .line 893
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .line 875
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .line 884
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 865
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 868
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 871
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1014
    invoke-static {p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    move-result-object v0

    .line 1015
    .local v0, "offsetHelper":Lcom/samsung/android/ui/appbar/ViewOffsetHelper;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    .line 1016
    .local v1, "lp":Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->getLayoutTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method getScrimAlpha()I
    .locals 1

    .line 668
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .line 937
    iget-wide v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 4

    .line 918
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    .line 919
    return v0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 924
    .local v0, "insetTop":I
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 925
    .local v1, "minHeight":I
    if-lez v1, :cond_2

    .line 926
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 929
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    return v2
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 617
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 302
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 305
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    if-eqz v1, :cond_1

    .line 306
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setFitsSystemWindows(Z)V

    .line 308
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 309
    new-instance v1, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;-><init>(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)V

    iput-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;

    .line 311
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->addOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;)V

    .line 313
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 315
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 962
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 963
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 964
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 965
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mHeightPercent:F

    .line 966
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateDefaultHeightDP()V

    .line 967
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateTitleLayout()V

    .line 968
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 320
    .local v0, "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    if-eqz v2, :cond_0

    .line 321
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->removeOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;)V

    .line 324
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 325
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 463
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 467
    .local v0, "insetTop":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 468
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 469
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 470
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 471
    invoke-static {v3, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 467
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "insetTop":I
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 478
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    .line 480
    if-eqz v0, :cond_9

    .line 481
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    move v0, v1

    .line 483
    .local v0, "isRtl":Z
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v1

    .line 484
    .local v1, "maxOffset":I
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v2, v3}, Landroidx/coordinatorlayout/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 485
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v4

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v4

    :goto_3
    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v6

    :goto_4
    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 487
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v0, :cond_7

    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginEnd:I

    goto :goto_5

    :cond_7
    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginStart:I

    :goto_5
    iget-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginTop:I

    add-int/2addr v4, v5

    sub-int v5, p4, p2

    if-eqz v0, :cond_8

    iget v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginStart:I

    goto :goto_6

    :cond_8
    iget v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginEnd:I

    :goto_6
    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 488
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 492
    .end local v0    # "isRtl":Z
    .end local v1    # "maxOffset":I
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_7
    if-ge v0, v1, :cond_a

    .line 493
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->onViewLayout()V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 496
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_e

    .line 499
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 500
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz v0, :cond_d

    if-ne v0, p0, :cond_c

    goto :goto_8

    .line 505
    :cond_c
    invoke-static {v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v0

    .local v0, "toolbar_height":I
    goto :goto_9

    .line 503
    .end local v0    # "toolbar_height":I
    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v0

    .line 507
    .restart local v0    # "toolbar_height":I
    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getMinimumHeight()I

    move-result v1

    if-eq v1, v0, :cond_e

    .line 508
    new-instance v1, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$2;-><init>(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->post(Ljava/lang/Runnable;)Z

    .line 516
    .end local v0    # "toolbar_height":I
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateScrimVisibility()V

    .line 517
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 450
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->ensureToolbar()V

    .line 451
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 453
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 454
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 455
    .local v1, "topInset":I
    :goto_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 457
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 459
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 379
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 381
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "newInsets":Landroidx/core/view/WindowInsetsCompat;
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    move-object v0, p1

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->requestLayout()V

    .line 339
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 791
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 794
    :cond_0
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 775
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 778
    :cond_0
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 781
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 782
    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 785
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 788
    :cond_0
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 843
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    .line 846
    :cond_0
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 672
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 673
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 676
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 677
    if-eqz v1, :cond_2

    .line 678
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 679
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 680
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 682
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 684
    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 687
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 688
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 691
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 693
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 813
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 814
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 825
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 827
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 830
    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 906
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 907
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->requestLayout()V

    .line 908
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 897
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 898
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->requestLayout()V

    .line 899
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 879
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 880
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->requestLayout()V

    .line 881
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 888
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 889
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->requestLayout()V

    .line 890
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 805
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 807
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 810
    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 817
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 819
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 822
    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 857
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 859
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    .line 862
    :cond_1
    :goto_0
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .line 657
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 659
    .local v0, "contentScrim":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 660
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 662
    :cond_0
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    .line 663
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 665
    .end local v0    # "contentScrim":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 933
    iput-wide p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 934
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1, "height"    # I

    .line 911
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 912
    iput p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 913
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateScrimVisibility()V

    .line 915
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 622
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 623
    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .line 626
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimsAreShown:Z

    if-eq v0, p1, :cond_3

    .line 627
    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 628
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->animateScrim(I)V

    goto :goto_2

    .line 630
    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 632
    :goto_2
    iput-boolean p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimsAreShown:Z

    .line 634
    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 701
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 702
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 705
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 706
    if-eqz v1, :cond_4

    .line 707
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 710
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 711
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 712
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 713
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 715
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 717
    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 762
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 763
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 766
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 767
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 580
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 583
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 590
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 591
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 592
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 594
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 595
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 597
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 599
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 600
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 601
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mExtendSubTitleAppearance:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 602
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 584
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 585
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 586
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 609
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->requestLayout()V

    .line 610
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateTitleLayout()V

    .line 611
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 538
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateTitleLayout()V

    .line 544
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 552
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 553
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 554
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    goto :goto_0

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 556
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 557
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    goto :goto_0

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v1, :cond_2

    .line 559
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 560
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    goto :goto_0

    .line 562
    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 563
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 565
    :goto_0
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 566
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_4

    .line 569
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateDummyView()V

    .line 570
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->requestLayout()V

    .line 572
    :cond_4
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 750
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 752
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 753
    .local v1, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 754
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 756
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 757
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 759
    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCurrentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1011
    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 745
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
