.class public Lcom/samsung/android/ui/tabs/SeslTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SeslTabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/SeslViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;,
        Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;,
        Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;,
        Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;,
        Lcom/samsung/android/ui/tabs/SeslTabLayout$PagerAdapterObserver;,
        Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;,
        Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;,
        Lcom/samsung/android/ui/tabs/SeslTabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/samsung/android/ui/tabs/SeslTabLayout$OnTabSelectedListener;
    }
.end annotation


# static fields
.field public static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adapterChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;

.field public contentInsetStart:I

.field public currentVpSelectedListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

.field public inlineLabel:Z

.field public mBadgeColor:I

.field public mBadgeTextColor:I

.field public mBoldTypeface:Landroid/graphics/Typeface;

.field public mDepthStyle:I

.field public mIconTextGap:I

.field public mIsScaledTextSizeType:Z

.field public mNormalTypeface:Landroid/graphics/Typeface;

.field public mRequestedTabWidth:I

.field public mSubTabIndicatorHeight:I

.field public mSubTabSelectedIndicatorColor:I

.field public mTabSelectedIndicatorColor:I

.field public mode:I

.field public pageChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;

.field public pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field public pagerAdapterObserver:Landroid/database/DataSetObserver;

.field public final requestedTabMaxWidth:I

.field public final requestedTabMinWidth:I

.field public scrollAnimator:Landroid/animation/ValueAnimator;

.field public final scrollableTabMinWidth:I

.field public selectedListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

.field public final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field public selectedTab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

.field public setupViewPagerImplicitly:Z

.field public final slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

.field public final tabBackgroundResId:I

.field public tabGravity:I

.field public tabIconTint:Landroid/content/res/ColorStateList;

.field public tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public tabIndicatorAnimationDuration:I

.field public tabIndicatorFullWidth:Z

.field public tabIndicatorGravity:I

.field public tabMaxWidth:I

.field public tabPaddingBottom:I

.field public tabPaddingEnd:I

.field public tabPaddingStart:I

.field public tabPaddingTop:I

.field public tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field public tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field public tabTextAppearance:I

.field public tabTextColors:Landroid/content/res/ColorStateList;

.field public tabTextMultiLineSize:F

.field public tabTextSize:F

.field public final tabViewContentBounds:Landroid/graphics/RectF;

.field public final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field public final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field public unboundedRipple:Z

.field public viewPager:Landroidx/viewpager/widget/SeslViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 142
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 146
    const v0, 0x7f040368

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 151
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    .line 154
    const v0, 0x7fffffff

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabMaxWidth:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v3, 0xc

    invoke-direct {v0, v3}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 157
    const/4 v0, -0x1

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mIconTextGap:I

    .line 158
    const/4 v4, 0x1

    iput v4, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mDepthStyle:I

    .line 159
    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mBadgeColor:I

    .line 160
    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mBadgeTextColor:I

    .line 161
    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mRequestedTabWidth:I

    .line 162
    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mSubTabSelectedIndicatorColor:I

    .line 163
    iput v4, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mSubTabIndicatorHeight:I

    .line 164
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mIsScaledTextSizeType:Z

    .line 165
    invoke-virtual {v1, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 166
    new-instance v6, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-direct {v6, v1, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;Landroid/content/Context;)V

    iput-object v6, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    .line 167
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {v1, v6, v5, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 168
    sget-object v7, Lcom/mesalabs/ten/update/R$styleable;->SeslTabLayout:[I

    .line 170
    .local v7, "var4":[I
    invoke-static/range {p1 .. p1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 171
    const v8, 0x7f10035f

    .local v8, "var5":I
    goto :goto_0

    .line 173
    .end local v8    # "var5":I
    :cond_0
    const v8, 0x7f100360

    .line 176
    .restart local v8    # "var5":I
    :goto_0
    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual {v2, v9, v7, v10, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 177
    .local v11, "var9":Landroid/content/res/TypedArray;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    instance-of v12, v12, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v12, :cond_1

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/ColorDrawable;

    .line 179
    .local v12, "var6":Landroid/graphics/drawable/ColorDrawable;
    new-instance v13, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v13}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 180
    .local v13, "var10":Lcom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v14

    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 181
    invoke-virtual {v13, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 182
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v14

    invoke-virtual {v13, v14}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 183
    invoke-static {v1, v13}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 186
    .end local v12    # "var6":Landroid/graphics/drawable/ColorDrawable;
    .end local v13    # "var10":Lcom/google/android/material/shape/MaterialShapeDrawable;
    :cond_1
    const/16 v12, 0xa

    invoke-virtual {v11, v12, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 187
    const/4 v12, 0x7

    invoke-virtual {v11, v12, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    iput v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mTabSelectedIndicatorColor:I

    .line 188
    invoke-virtual {v6, v12}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 189
    iget v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mTabSelectedIndicatorColor:I

    invoke-virtual {v6, v12}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 190
    const/4 v6, 0x5

    invoke-static {v2, v11, v6}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 191
    const/16 v6, 0x9

    invoke-virtual {v11, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 192
    const/16 v6, 0x8

    invoke-virtual {v11, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setTabIndicatorFullWidth(Z)V

    .line 193
    const/16 v6, 0xf

    invoke-virtual {v11, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 194
    .end local p3    # "var3":I
    .local v6, "var3":I
    iput v6, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingBottom:I

    .line 195
    iput v6, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingEnd:I

    .line 196
    iput v6, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingTop:I

    .line 197
    iput v6, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingStart:I

    .line 198
    const/16 v10, 0x12

    invoke-virtual {v11, v10, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingStart:I

    .line 199
    const/16 v10, 0x13

    iget v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingTop:I

    invoke-virtual {v11, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingTop:I

    .line 200
    const/16 v10, 0x11

    iget v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingEnd:I

    invoke-virtual {v11, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingEnd:I

    .line 201
    const/16 v10, 0x10

    iget v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingBottom:I

    invoke-virtual {v11, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPaddingBottom:I

    .line 202
    const/16 v10, 0x16

    const v12, 0x7f100361

    invoke-virtual {v11, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextAppearance:I

    .line 203
    sget-object v12, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v2, v10, v12}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 206
    .local v10, "var11":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v10, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextSize:F

    .line 207
    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "sp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mIsScaledTextSizeType:Z

    .line 208
    const/4 v12, 0x3

    invoke-static {v2, v10, v12}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    nop

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 214
    .local v13, "var12":Landroid/content/res/Resources;
    const v14, 0x7f0f0124

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 215
    .local v14, "var13":Ljava/lang/String;
    invoke-static {v14, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v15

    iput-object v15, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 216
    invoke-static {v14, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v15

    iput-object v15, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 217
    const v15, 0x7f070286

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mSubTabIndicatorHeight:I

    .line 218
    const/16 v15, 0x17

    invoke-virtual {v11, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 219
    invoke-static {v2, v11, v15}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    iput-object v15, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 222
    :cond_2
    const/16 v15, 0x15

    invoke-virtual {v11, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 223
    invoke-virtual {v11, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 224
    iget-object v15, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    invoke-static {v15, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v15

    iput-object v15, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 227
    :cond_3
    invoke-static {v2, v11, v12}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    iput-object v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 228
    const/4 v12, 0x4

    invoke-virtual {v11, v12, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    const/4 v15, 0x0

    check-cast v15, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v12, v15}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    iput-object v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 229
    const/16 v12, 0x14

    invoke-static {v2, v11, v12}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    iput-object v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 230
    const/4 v12, 0x6

    const/16 v15, 0x12c

    invoke-virtual {v11, v12, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIndicatorAnimationDuration:I

    .line 231
    const/16 v12, 0xd

    invoke-virtual {v11, v12, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->requestedTabMinWidth:I

    .line 232
    invoke-virtual {v11, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->requestedTabMaxWidth:I

    .line 233
    invoke-virtual {v11, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabBackgroundResId:I

    .line 234
    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->contentInsetStart:I

    .line 235
    const/16 v0, 0xe

    invoke-virtual {v11, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    .line 236
    const/4 v0, 0x2

    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabGravity:I

    .line 237
    const/16 v0, 0xb

    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->inlineLabel:Z

    .line 238
    const/16 v0, 0x18

    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->unboundedRipple:Z

    .line 239
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    const v0, 0x7f070284

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextMultiLineSize:F

    .line 241
    const v0, 0x7f070282

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollableTabMinWidth:I

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->applyModeAndGravity()V

    .line 243
    return-void

    .line 210
    .end local v13    # "var12":Landroid/content/res/Resources;
    .end local v14    # "var13":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    throw v0
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/tabs/SeslTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabTextColor()I

    move-result v0

    return v0
.end method

.method public static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "var0"    # I
    .param p1, "var1"    # I

    .line 246
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    sget-object v3, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [I

    aput p1, v1, v4

    aput p0, v1, v5

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private getDefaultHeight()I
    .locals 6

    .line 250
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 251
    .local v0, "var1":I
    const/4 v1, 0x0

    .line 252
    .local v1, "var2":Z
    const/4 v2, 0x0

    .line 256
    .local v2, "var3":I
    :goto_0
    move v3, v1

    .line 257
    .local v3, "var4":Z
    if-lt v2, v0, :cond_0

    .line 258
    goto :goto_1

    .line 261
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 262
    .local v4, "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 263
    const/4 v3, 0x1

    .line 264
    nop

    .line 271
    .end local v4    # "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    :goto_1
    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->inlineLabel:Z

    if-nez v4, :cond_1

    .line 272
    const/16 v4, 0x48

    .local v4, "var6":B
    goto :goto_2

    .line 274
    .end local v4    # "var6":B
    :cond_1
    const/16 v4, 0x30

    .line 277
    .restart local v4    # "var6":B
    :goto_2
    return v4

    .line 267
    .local v4, "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    :cond_2
    nop

    .end local v4    # "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    add-int/lit8 v2, v2, 0x1

    .line 268
    goto :goto_0
.end method

.method private getSelectedTabTextColor()I
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 282
    .local v0, "var1":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 284
    .local v1, "var2":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    return v2

    .line 286
    .end local v1    # "var2":I
    :cond_0
    const/4 v1, -0x1

    return v1

    nop

    :array_0
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 291
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->requestedTabMinWidth:I

    .line 292
    .local v0, "var1":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    return-void
.end method

.method public addTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 308
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;Z)V

    .line 309
    return-void
.end method

.method public addTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;IZ)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .line 312
    iget-object v0, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->parent:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    if-ne v0, p0, :cond_1

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->configureTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;I)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addTabView(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 315
    if-eqz p3, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->select()V

    .line 322
    :cond_0
    return-void

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;Z)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .param p2, "var2"    # Z

    .line 325
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;IZ)V

    .line 326
    return-void
.end method

.method public final addTabFromItemView(Lcom/samsung/android/ui/tabs/SeslTabItem;)V
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabItem;

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->newTab()Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v0

    .line 330
    .local v0, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    iget-object v1, p1, Lcom/samsung/android/ui/tabs/SeslTabItem;->text:Ljava/lang/CharSequence;

    .line 331
    .local v1, "var3":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 335
    :cond_0
    iget-object v2, p1, Lcom/samsung/android/ui/tabs/SeslTabItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 336
    .local v2, "var5":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 340
    :cond_1
    iget v3, p1, Lcom/samsung/android/ui/tabs/SeslTabItem;->customLayout:I

    .line 341
    .local v3, "var4":I
    if-eqz v3, :cond_2

    .line 342
    invoke-virtual {v0, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->setCustomView(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 345
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/ui/tabs/SeslTabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 346
    invoke-virtual {p1}, Lcom/samsung/android/ui/tabs/SeslTabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 349
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 350
    return-void
.end method

.method public final addTabView(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 4
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 353
    iget-object v0, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 354
    .local v0, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setSelected(Z)V

    .line 355
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setActivated(Z)V

    .line 356
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 357
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .line 360
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addViewInternal(Landroid/view/View;)V

    .line 361
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 364
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addViewInternal(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/ViewGroup$LayoutParams;

    .line 368
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addViewInternal(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/ViewGroup$LayoutParams;

    .line 372
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addViewInternal(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method public final addViewInternal(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 376
    instance-of v0, p1, Lcom/samsung/android/ui/tabs/SeslTabItem;

    if-eqz v0, :cond_0

    .line 377
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/tabs/SeslTabItem;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addTabFromItemView(Lcom/samsung/android/ui/tabs/SeslTabItem;)V

    .line 381
    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final animateToTab(I)V
    .locals 6
    .param p1, "var1"    # I

    .line 384
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getScrollX()I

    move-result v0

    .line 387
    .local v0, "var2":I
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    .line 388
    .local v2, "var3":I
    if-eq v0, v2, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->ensureScrollAnimator()V

    .line 390
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 391
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    iget v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 395
    .end local v0    # "var2":I
    .end local v2    # "var3":I
    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setScrollPosition(IFZ)V

    .line 399
    :cond_2
    :goto_0
    return-void
.end method

.method public final applyModeAndGravity()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, v1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 403
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    .line 404
    .local v0, "var1":I
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 405
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->setGravity(I)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 412
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateTabViews(Z)V

    .line 413
    return-void
.end method

.method public final calculateScrollXForTab(IF)I
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # F

    .line 417
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    .line 418
    .local v0, "var3":I
    const/4 v1, 0x0

    .line 419
    .local v1, "var4":I
    const/4 v2, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 420
    const/4 v2, 0x0

    return v2

    .line 422
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v3, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 423
    .local v3, "var5":Landroid/view/View;
    add-int/lit8 p1, p1, 0x1

    .line 425
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 426
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v4, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "var6":Landroid/view/View;
    goto :goto_0

    .line 428
    .end local v4    # "var6":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    .line 431
    .restart local v4    # "var6":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_2

    .line 432
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_1

    .line 434
    :cond_2
    const/4 p1, 0x0

    .line 437
    :goto_1
    if-eqz v4, :cond_3

    .line 438
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 441
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, p1, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    sub-int/2addr v5, v6

    .line 442
    .end local v0    # "var3":I
    .local v5, "var3":I
    add-int v0, p1, v1

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    mul-float/2addr v0, p2

    float-to-int p1, v0

    .line 443
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4

    .line 444
    add-int/2addr p1, v5

    goto :goto_2

    .line 446
    :cond_4
    sub-int p1, v5, p1

    .line 449
    :goto_2
    return p1
.end method

.method public final checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "var1"    # Landroid/widget/TextView;
    .param p2, "var2"    # I

    .line 454
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 455
    .local v0, "var3":F
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mIsScaledTextSizeType:Z

    if-eqz v1, :cond_0

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 456
    const/4 v2, 0x0

    int-to-float v3, p2

    div-float/2addr v3, v0

    mul-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 459
    :cond_0
    return-void
.end method

.method public final configureTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;I)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .param p2, "var2"    # I

    .line 462
    invoke-virtual {p1, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->setPosition(I)V

    .line 463
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 467
    .local v0, "var3":I
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 468
    if-lt p2, v0, :cond_0

    .line 469
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    invoke-virtual {v1, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->setPosition(I)V

    goto :goto_0
.end method

.method public final createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 477
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 478
    .local v0, "var1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 479
    return-object v0
.end method

.method public createTabFromPool()Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 3

    .line 483
    sget-object v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 484
    .local v0, "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    move-object v1, v0

    .line 485
    .local v1, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-nez v0, :cond_0

    .line 486
    new-instance v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    invoke-direct {v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;-><init>()V

    move-object v1, v2

    .line 489
    :cond_0
    return-object v1
.end method

.method public final createTabView(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 493
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 495
    .local v0, "var2":Landroidx/core/util/Pools$Pool;
    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .local v1, "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    goto :goto_0

    .line 498
    .end local v1    # "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    :cond_0
    const/4 v1, 0x0

    .line 501
    .restart local v1    # "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    :goto_0
    move-object v2, v1

    .line 502
    .local v2, "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    if-nez v1, :cond_1

    .line 503
    new-instance v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;Landroid/content/Context;)V

    move-object v2, v3

    .line 506
    :cond_1
    iget-object v3, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 507
    iget-object v3, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 510
    :cond_2
    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 511
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setFocusable(Z)V

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabMinWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setMinimumWidth(I)V

    .line 513
    iget-object v3, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 514
    iget-object v3, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 516
    :cond_3
    iget-object v3, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 519
    :goto_1
    return-object v2
.end method

.method public final dispatchTabReselected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 523
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var2":I
    :goto_0
    if-ltz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 523
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 527
    .end local v0    # "var2":I
    :cond_0
    return-void
.end method

.method public final dispatchTabSelected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 530
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var2":I
    :goto_0
    if-ltz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 530
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 534
    .end local v0    # "var2":I
    :cond_0
    return-void
.end method

.method public final dispatchTabUnselected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 537
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var2":I
    :goto_0
    if-ltz v0, :cond_0

    .line 538
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 537
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 541
    .end local v0    # "var2":I
    :cond_0
    return-void
.end method

.method public final ensureScrollAnimator()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 546
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 548
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$1;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 555
    :cond_0
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "var1"    # Landroid/util/AttributeSet;

    .line 558
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedTab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 564
    .local v0, "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getPosition()I

    move-result v1

    .local v1, "var2":I
    goto :goto_0

    .line 567
    .end local v1    # "var2":I
    :cond_0
    const/4 v1, -0x1

    .line 570
    .restart local v1    # "var2":I
    :goto_0
    return v1
.end method

.method public getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 1
    .param p1, "var1"    # I

    .line 575
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .local v0, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    goto :goto_0

    .line 578
    .end local v0    # "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    :cond_0
    const/4 v0, 0x0

    .line 581
    .restart local v0    # "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    :goto_0
    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabGravity:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIndicatorGravity:I

    return v0
.end method

.method public getTabMaxWidth()I
    .locals 1

    .line 601
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .locals 2

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->createTabFromPool()Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v0

    .line 622
    .local v0, "var1":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    iput-object p0, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->parent:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 623
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->createTabView(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 624
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 629
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 631
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v1

    .line 632
    .local v1, "tabAt":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    move-object v3, v2

    .local v3, "tabView":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    if-eqz v2, :cond_2

    .line 633
    iget-object v2, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 636
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    if-eqz v2, :cond_2

    .line 637
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 638
    iget-object v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setShow()V

    goto :goto_1

    .line 640
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setHide()V

    .line 630
    .end local v1    # "tabAt":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .end local v3    # "tabView":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    .end local v0    # "i":I
    :cond_3
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 646
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    if-nez v0, :cond_4

    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 648
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroidx/viewpager/widget/SeslViewPager;

    if-eqz v1, :cond_4

    .line 649
    move-object v1, v0

    check-cast v1, Landroidx/viewpager/widget/SeslViewPager;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/SeslViewPager;ZZ)V

    .line 652
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "var1"    # Landroid/content/res/Configuration;

    .line 655
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 657
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 658
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v1

    .line 659
    .local v1, "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v1, :cond_0

    .line 660
    iget-object v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 661
    .local v2, "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 662
    iget-object v3, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v3, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 657
    .end local v1    # "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .end local v2    # "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v0    # "var2":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateBadgePosition()V

    .line 668
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 671
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 672
    iget-boolean v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x0

    check-cast v0, Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/SeslViewPager;)V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setupViewPagerImplicitly:Z

    .line 676
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 679
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 681
    .local v1, "var3":Landroid/view/View;
    instance-of v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    if-eqz v2, :cond_0

    .line 682
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 679
    .end local v1    # "var3":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    .end local v0    # "var2":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 687
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 690
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 691
    if-eqz p1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateBadgePosition()V

    .line 695
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 9
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 699
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getDefaultHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    .line 700
    .local v0, "var3":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 701
    .local v1, "var4":I
    const/4 v2, 0x0

    .line 702
    .local v2, "var5":Z
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    if-eq v1, v6, :cond_1

    .line 703
    if-eqz v1, :cond_0

    .line 704
    move v1, p2

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 709
    :cond_1
    move v1, p2

    .line 710
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getChildCount()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 711
    move v1, p2

    .line 712
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    if-lt v6, v0, :cond_2

    .line 713
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 714
    move v1, p2

    .line 719
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 720
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 721
    iget p2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->requestedTabMaxWidth:I

    .line 722
    if-gtz p2, :cond_3

    .line 723
    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x38

    invoke-static {v7, v8}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int p2, v6

    .line 726
    :cond_3
    iput p2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabMaxWidth:I

    .line 729
    :cond_4
    invoke-super {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 730
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getChildCount()I

    move-result v6

    if-ne v6, v5, :cond_8

    .line 735
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 736
    .local v3, "var6":Landroid/view/View;
    iget p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    .line 737
    if-eqz p1, :cond_6

    .line 738
    if-ne p1, v5, :cond_5

    .line 739
    move v5, v2

    .line 740
    .local v5, "var7":Z
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getMeasuredWidth()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 741
    goto :goto_1

    .line 746
    .end local v5    # "var7":Z
    :cond_5
    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    .line 747
    move v5, v2

    .line 748
    .restart local v5    # "var7":Z
    goto :goto_1

    .line 752
    .end local v5    # "var7":Z
    :cond_6
    move v5, v2

    .line 753
    .restart local v5    # "var7":Z
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getMeasuredWidth()I

    move-result v7

    if-lt v6, v7, :cond_7

    .line 754
    goto :goto_1

    .line 758
    :cond_7
    const/4 v5, 0x1

    .line 761
    :goto_1
    if-eqz v5, :cond_8

    .line 762
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p1

    .line 763
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/view/View;->measure(II)V

    .line 767
    .end local v3    # "var6":Landroid/view/View;
    .end local v5    # "var7":Z
    :cond_8
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I

    .line 770
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 772
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 773
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v0

    .line 774
    .local v0, "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eqz v0, :cond_0

    .line 775
    iget-object v1, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 776
    .local v1, "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v2, v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 772
    .end local v0    # "var4":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .end local v1    # "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 782
    :cond_1
    return-void
.end method

.method public populateFromPagerAdapter()V
    .locals 6

    .line 786
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->removeAllTabs()V

    .line 787
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 788
    .local v0, "pagerAdapter2":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 790
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->newTab()Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v3

    .line 792
    .local v3, "newTab":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    iget-object v4, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 793
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;Z)V

    .line 790
    .end local v3    # "newTab":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 795
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    .line 796
    .local v2, "viewPager2":Landroidx/viewpager/widget/SeslViewPager;
    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    invoke-virtual {v2}, Landroidx/viewpager/widget/SeslViewPager;->getCurrentItem()I

    move-result v3

    move v4, v3

    .local v4, "currentItem":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v5

    if-eq v3, v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabCount()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 797
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;ZZ)V

    .line 800
    .end local v1    # "count":I
    .end local v2    # "viewPager2":Landroidx/viewpager/widget/SeslViewPager;
    .end local v4    # "currentItem":I
    :cond_1
    return-void
.end method

.method public releaseFromTabPool(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 803
    sget-object v0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "var1":I
    :goto_0
    if-ltz v0, :cond_0

    .line 808
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->removeTabViewAt(I)V

    .line 807
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 811
    .end local v0    # "var1":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 813
    .local v0, "var2":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 815
    .local v1, "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 816
    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->reset()V

    .line 817
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->releaseFromTabPool(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)Z

    .line 818
    .end local v1    # "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    goto :goto_1

    .line 820
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedTab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 821
    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 826
    return-void
.end method

.method public final removeTabViewAt(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 829
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 830
    .local v0, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->removeViewAt(I)V

    .line 831
    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->reset()V

    .line 833
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->requestLayout()V

    .line 837
    return-void
.end method

.method public selectTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 840
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;Z)V

    .line 841
    return-void
.end method

.method public selectTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;Z)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .param p2, "var2"    # Z

    .line 844
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;ZZ)V

    .line 845
    return-void
.end method

.method public final selectTab(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;ZZ)V
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 849
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    move-object v1, v0

    .local v1, "viewPager2":Landroidx/viewpager/widget/SeslViewPager;
    if-nez v0, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/SeslViewPager;->setCurrentItem(I)V

    goto :goto_5

    .line 850
    .end local v1    # "viewPager2":Landroidx/viewpager/widget/SeslViewPager;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedTab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 851
    .local v0, "tab2":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    if-eq v0, p1, :cond_7

    .line 852
    const/4 v1, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    .line 853
    .local v2, "position":I
    :goto_1
    if-eqz p2, :cond_5

    .line 854
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getPosition()I

    move-result v3

    if-ne v3, v1, :cond_4

    :cond_3
    if-eq v2, v1, :cond_4

    .line 855
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setScrollPosition(IFZ)V

    goto :goto_2

    .line 857
    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->animateToTab(I)V

    .line 859
    :goto_2
    if-eq v2, v1, :cond_5

    .line 860
    invoke-virtual {p0, v2, p3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setSelectedTabView(IZ)V

    .line 863
    :cond_5
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedTab:Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 864
    if-eqz v0, :cond_6

    .line 865
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->dispatchTabUnselected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 867
    :cond_6
    if-eqz p1, :cond_8

    .line 868
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->dispatchTabSelected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    goto :goto_3

    .line 870
    .end local v2    # "position":I
    :cond_7
    if-eqz v0, :cond_8

    .line 871
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->dispatchTabReselected(Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;)V

    .line 872
    invoke-virtual {p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->animateToTab(I)V

    goto :goto_4

    .line 870
    :cond_8
    :goto_3
    nop

    .line 874
    .end local v0    # "tab2":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    :goto_4
    nop

    .line 877
    :goto_5
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "var1"    # F

    .line 880
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 881
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 882
    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 3
    .param p1, "var1"    # Z

    .line 885
    iget-boolean v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->inlineLabel:Z

    if-eq v0, p1, :cond_2

    .line 886
    iput-boolean p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->inlineLabel:Z

    .line 888
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 890
    .local v1, "var3":Landroid/view/View;
    instance-of v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    if-eqz v2, :cond_0

    .line 891
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->updateOrientation()V

    .line 888
    .end local v1    # "var3":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    .end local v0    # "var2":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->applyModeAndGravity()V

    .line 898
    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 901
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setInlineLabel(Z)V

    .line 902
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

    .line 907
    .local v0, "var2":Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;
    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->removeOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;)V

    .line 911
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->selectedListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

    .line 912
    if-eqz p1, :cond_1

    .line 913
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;)V

    .line 916
    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$OnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 920
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;)V

    .line 921
    return-void
.end method

.method public setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2
    .param p1, "var1"    # Landroidx/viewpager/widget/PagerAdapter;
    .param p2, "var2"    # Z

    .line 924
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 925
    .local v0, "var3":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v0, :cond_0

    .line 926
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 927
    .local v1, "var4":Landroid/database/DataSetObserver;
    if-eqz v1, :cond_0

    .line 928
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 932
    .end local v1    # "var4":Landroid/database/DataSetObserver;
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 933
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 934
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v1, :cond_1

    .line 935
    new-instance v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$PagerAdapterObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$PagerAdapterObserver;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;)V

    iput-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 941
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->populateFromPagerAdapter()V

    .line 942
    return-void
.end method

.method public setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "var1"    # Landroid/animation/Animator$AnimatorListener;

    .line 945
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->ensureScrollAnimator()V

    .line 946
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 947
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # F
    .param p3, "var3"    # Z

    .line 950
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setScrollPosition(IFZZ)V

    .line 951
    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # F
    .param p3, "var3"    # Z
    .param p4, "var4"    # Z

    .line 954
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 955
    .local v0, "var5":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 956
    if-eqz p4, :cond_0

    .line 957
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 961
    .local v1, "var6":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 962
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 965
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollTo(II)V

    .line 966
    if-eqz p3, :cond_2

    .line 967
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setSelectedTabView(IZ)V

    .line 971
    .end local v1    # "var6":Landroid/animation/ValueAnimator;
    :cond_2
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 974
    if-eqz p1, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 977
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 980
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 983
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 984
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 985
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 988
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 991
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mTabSelectedIndicatorColor:I

    .line 992
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 997
    .local v0, "var2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 998
    return-void

    .line 1001
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget-object v1, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v1, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    .line 1002
    .local v1, "var3":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    if-eqz v1, :cond_2

    .line 1005
    iget v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mDepthStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1006
    iget v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mSubTabSelectedIndicatorColor:I

    .line 1007
    .local v2, "var4":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1008
    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    .line 1009
    goto :goto_1

    .line 1013
    .end local v2    # "var4":I
    :cond_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    .line 1016
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->invalidate()V

    .line 1017
    .end local v1    # "var3":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    goto :goto_0

    .line 1002
    .restart local v1    # "var3":Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;
    :cond_2
    goto :goto_0
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1021
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_0

    .line 1022
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIndicatorGravity:I

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1026
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .param p1, "var1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 1031
    return-void
.end method

.method public final setSelectedTabView(IZ)V
    .locals 7
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    .line 1035
    .local v0, "var3":I
    if-ge p1, v0, :cond_8

    .line 1036
    const/4 v1, 0x0

    .line 1039
    .local v1, "var4":I
    :goto_0
    const/4 v2, 0x1

    .line 1040
    .local v2, "var5":Z
    if-lt v1, v0, :cond_5

    .line 1041
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget-object v3, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->setSelected(Z)V

    .line 1043
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 1044
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget-object v3, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 1045
    .local v3, "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    if-ne v1, p1, :cond_2

    .line 1046
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 1047
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getSelectedTabTextColor()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->startTextColorChangeAnimation(Landroid/widget/TextView;I)V

    .line 1048
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1049
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1052
    :cond_0
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    if-eqz v5, :cond_4

    .line 1053
    if-eqz p2, :cond_1

    .line 1054
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v5}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->getAlpha()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    .line 1055
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v5}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setShow()V

    goto :goto_2

    .line 1058
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget-object v5, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v5, v5, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v5}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setReleased()V

    goto :goto_2

    .line 1062
    :cond_2
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    if-eqz v5, :cond_3

    .line 1063
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mIndicatorView:Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;

    invoke-virtual {v5}, Lcom/samsung/android/ui/tabs/SeslAbsIndicatorView;->setHide()V

    .line 1066
    :cond_3
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 1067
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1068
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->startTextColorChangeAnimation(Landroid/widget/TextView;I)V

    .line 1069
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1043
    .end local v3    # "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1076
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v3, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1078
    .local v3, "var6":Landroid/view/View;
    if-ne v1, p1, :cond_6

    .line 1079
    const/4 v4, 0x1

    .local v4, "var7":Z
    goto :goto_3

    .line 1081
    .end local v4    # "var7":Z
    :cond_6
    const/4 v4, 0x0

    .line 1084
    .restart local v4    # "var7":Z
    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1085
    if-ne v1, p1, :cond_7

    .line 1086
    move v4, v2

    goto :goto_4

    .line 1088
    :cond_7
    const/4 v4, 0x0

    .line 1091
    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    .line 1092
    nop

    .end local v2    # "var5":Z
    .end local v3    # "var6":Landroid/view/View;
    .end local v4    # "var7":Z
    add-int/lit8 v1, v1, 0x1

    .line 1093
    goto/16 :goto_0

    .line 1096
    .end local v1    # "var4":I
    :cond_8
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1099
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabGravity:I

    if-eq v0, p1, :cond_0

    .line 1100
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabGravity:I

    .line 1101
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->applyModeAndGravity()V

    .line 1104
    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1108
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 1109
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateAllTabs()V

    .line 1112
    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1115
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 1116
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 1119
    iput-boolean p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabIndicatorFullWidth:Z

    .line 1120
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1121
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1124
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    if-eq p1, v0, :cond_0

    .line 1125
    iput p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    .line 1126
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->applyModeAndGravity()V

    .line 1129
    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1132
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1133
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1135
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1136
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1137
    .local v1, "var3":Landroid/view/View;
    instance-of v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1138
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 1135
    .end local v1    # "var3":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1143
    .end local v0    # "var2":I
    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1146
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1147
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1151
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 1152
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateAllTabs()V

    .line 1155
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1, "var1"    # Landroidx/viewpager/widget/PagerAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1160
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 4
    .param p1, "var1"    # Z

    .line 1163
    iget-boolean v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->unboundedRipple:Z

    if-eq v0, p1, :cond_1

    .line 1164
    iput-boolean p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->unboundedRipple:Z

    .line 1166
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1167
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1168
    .local v1, "var3":Landroid/view/View;
    instance-of v2, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1169
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 1166
    .end local v1    # "var3":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    .end local v0    # "var2":I
    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 1177
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setUnboundedRipple(Z)V

    .line 1178
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/SeslViewPager;)V
    .locals 1
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager;

    .line 1181
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/SeslViewPager;Z)V

    .line 1182
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/SeslViewPager;Z)V
    .locals 1
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager;
    .param p2, "var2"    # Z

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/SeslViewPager;ZZ)V

    .line 1186
    return-void
.end method

.method public final setupWithViewPager(Landroidx/viewpager/widget/SeslViewPager;ZZ)V
    .locals 6
    .param p1, "var1"    # Landroidx/viewpager/widget/SeslViewPager;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 1189
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    .line 1190
    .local v0, "var4":Landroidx/viewpager/widget/SeslViewPager;
    if-eqz v0, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pageChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;

    .line 1192
    .local v1, "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;
    if-eqz v1, :cond_0

    .line 1193
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/SeslViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;)V

    .line 1196
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->adapterChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;

    .line 1197
    .local v2, "var7":Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;
    if-eqz v2, :cond_1

    .line 1198
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/SeslViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;)V

    .line 1202
    .end local v1    # "var5":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;
    .end local v2    # "var7":Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->currentVpSelectedListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

    .line 1203
    .local v1, "var8":Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1204
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->removeOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;)V

    .line 1205
    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->currentVpSelectedListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

    .line 1208
    :cond_2
    if-eqz p1, :cond_6

    .line 1209
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    .line 1210
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pageChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;

    if-nez v2, :cond_3

    .line 1211
    new-instance v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;)V

    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pageChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;

    .line 1214
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pageChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1215
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->pageChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/SeslViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnPageChangeListener;)V

    .line 1216
    new-instance v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v2, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/SeslViewPager;)V

    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->currentVpSelectedListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;

    .line 1217
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->addOnTabSelectedListener(Lcom/samsung/android/ui/tabs/SeslTabLayout$BaseOnTabSelectedListener;)V

    .line 1218
    invoke-virtual {p1}, Landroidx/viewpager/widget/SeslViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    .line 1219
    .local v2, "var6":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v2, :cond_4

    .line 1220
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1223
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->adapterChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;

    if-nez v3, :cond_5

    .line 1224
    new-instance v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;

    invoke-direct {v3, p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;-><init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;)V

    iput-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->adapterChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;

    .line 1227
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->adapterChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;

    invoke-virtual {v3, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1228
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->adapterChangeListener:Lcom/samsung/android/ui/tabs/SeslTabLayout$AdapterChangeListener;

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/SeslViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/SeslViewPager$OnAdapterChangeListener;)V

    .line 1229
    invoke-virtual {p1}, Landroidx/viewpager/widget/SeslViewPager;->getCurrentItem()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setScrollPosition(IFZ)V

    .line 1230
    .end local v2    # "var6":Landroidx/viewpager/widget/PagerAdapter;
    goto :goto_0

    .line 1231
    :cond_6
    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->viewPager:Landroidx/viewpager/widget/SeslViewPager;

    .line 1232
    check-cast v2, Landroidx/viewpager/widget/PagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1235
    :goto_0
    iput-boolean p3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->setupViewPagerImplicitly:Z

    .line 1236
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1240
    invoke-direct {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    .line 1241
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 1243
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 1246
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public final startTextColorChangeAnimation(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "var1"    # Landroid/widget/TextView;
    .param p2, "var2"    # I

    .line 1250
    if-eqz p1, :cond_0

    .line 1251
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1254
    :cond_0
    return-void
.end method

.method public final updateAllTabs()V
    .locals 3

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1259
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    invoke-virtual {v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->updateView()V

    .line 1259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1263
    .end local v1    # "var2":I
    :cond_0
    return-void
.end method

.method public final updateBadgePosition()V
    .locals 13

    .line 1267
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    .line 1268
    .local v0, "var1":Ljava/util/ArrayList;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1269
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1270
    iget-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    .line 1271
    .local v2, "var10":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    iget-object v3, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    iget-object v3, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->view:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 1272
    .local v3, "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 1273
    iget-object v4, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 1274
    .local v4, "var4":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getWidth()I

    move-result v5

    if-lez v5, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    if-lez v5, :cond_5

    .line 1275
    const/4 v5, 0x0

    .line 1278
    .local v5, "var11":Landroid/widget/TextView;
    iget-object v6, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    const v7, 0x7f070289

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 1279
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    .line 1280
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v6

    .line 1281
    .local v6, "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .local v7, "var6":I
    goto :goto_1

    .line 1282
    .end local v6    # "var5":I
    .end local v7    # "var6":I
    :cond_0
    iget-object v6, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 1283
    iget-object v5, v3, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    .line 1284
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v6

    .line 1285
    .restart local v6    # "var5":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070285

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .restart local v7    # "var6":I
    goto :goto_1

    .line 1287
    .end local v6    # "var5":I
    .end local v7    # "var6":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1288
    .restart local v7    # "var6":I
    const/4 v6, 0x0

    .line 1291
    .restart local v6    # "var5":I
    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    .line 1296
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1297
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    .line 1298
    .local v9, "var7":I
    invoke-virtual {v3}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->getWidth()I

    move-result v10

    .line 1299
    .local v10, "var8":I
    if-eqz v6, :cond_2

    .line 1300
    move v11, v6

    .line 1301
    .local v11, "var9":I
    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v12

    if-lt v6, v12, :cond_2

    .line 1302
    goto :goto_2

    .line 1306
    .end local v11    # "var9":I
    :cond_2
    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v11

    add-int/2addr v11, v7

    .line 1309
    .restart local v11    # "var9":I
    :goto_2
    if-le v11, v10, :cond_3

    .line 1310
    sub-int v6, v10, v9

    goto :goto_3

    .line 1312
    :cond_3
    add-int v7, v11, v9

    .line 1313
    move v6, v11

    .line 1314
    if-le v7, v10, :cond_4

    .line 1315
    sub-int v12, v7, v10

    sub-int v6, v11, v12

    .line 1319
    :cond_4
    :goto_3
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1320
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1321
    .local v8, "var12":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 1322
    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1323
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    .end local v2    # "var10":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .end local v3    # "var3":Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    .end local v4    # "var4":Landroid/widget/TextView;
    .end local v5    # "var11":Landroid/widget/TextView;
    .end local v6    # "var5":I
    .end local v7    # "var6":I
    .end local v8    # "var12":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "var7":I
    .end local v10    # "var8":I
    .end local v11    # "var9":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1330
    .end local v1    # "var2":I
    :cond_6
    return-void
.end method

.method public final updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "var1"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 1333
    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->tabGravity:I

    if-nez v0, :cond_0

    .line 1334
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1335
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 1337
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1338
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1341
    :goto_0
    return-void
.end method

.method public updateTabViews(Z)V
    .locals 3
    .param p1, "var1"    # Z

    .line 1344
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1345
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout;->slidingTabIndicator:Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1346
    .local v1, "var3":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1347
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1348
    if-eqz p1, :cond_0

    .line 1349
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1344
    .end local v1    # "var3":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1353
    .end local v0    # "var2":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->updateBadgePosition()V

    .line 1354
    return-void
.end method
