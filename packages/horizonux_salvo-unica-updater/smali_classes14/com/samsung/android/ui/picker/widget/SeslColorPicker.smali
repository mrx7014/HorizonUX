.class public Lcom/samsung/android/ui/picker/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "SeslColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;,
        Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;
    }
.end annotation


# static fields
.field private static final CURRENT_COLOR_VIEW:I = 0x0

.field private static final NEW_COLOR_VIEW:I = 0x1

.field static final RECENT_COLOR_SLOT_COUNT:I = 0x6

.field private static final RIPPLE_EFFECT_OPACITY:I = 0x3d

.field private static final SCALE_LARGE:F = 1.2f


# instance fields
.field private mColorDescription:[Ljava/lang/String;

.field private mColorSwatchView:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mCurrentColorContainer:Landroid/view/View;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mCurrentFontScale:F

.field private final mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsInputFromUser:Z

.field private mIsLightTheme:Z

.field private mIsOpacityBarEnabled:Z

.field private mOnColorChangedListener:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

.field private mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

.field private mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field private mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

.field private mPickedColorContainer:Landroid/view/View;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private final mRecentColorInfo:Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private final mRecentColorValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentlyDivider:Landroid/view/View;

.field private mRecentlyText:Landroid/widget/TextView;

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field private final mSmallestWidthDp:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSmallestWidthDp:[I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "var3":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 81
    new-instance v1, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;-><init>(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 105
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 106
    .local v2, "var4":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0401ce

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 107
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 111
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 112
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c0091

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    new-instance v1, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    invoke-direct {v1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->getRecentColorInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 116
    new-instance v1, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    invoke-direct {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->initDialogPadding()V

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->initCurrentColorView()V

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->initColorSwatchView()V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->initOpacitySeekBar()V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->initRecentColorLayout()V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->updateCurrentColor()V

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setInitialColors()V

    .line 124
    return-void

    :array_0
    .array-data 4
        0x140
        0x168
        0x19b
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsInputFromUser:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->updateCurrentColor()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private initColorSwatchView()V
    .locals 2

    .line 127
    const v0, 0x7f0901bb

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mColorSwatchView:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 128
    new-instance v1, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$2;-><init>(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->setOnColorSwatchChangedListener(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;)V

    .line 139
    return-void
.end method

.method private initCurrentColorView()V
    .locals 11

    .line 142
    const v0, 0x7f0901c0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f0901c6

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 146
    .local v0, "var1":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_0

    .line 147
    const v1, 0x7f0600f4

    .local v1, "var2":I
    goto :goto_0

    .line 149
    .end local v1    # "var2":I
    :cond_0
    const v1, 0x7f0600f3

    .line 152
    .restart local v1    # "var2":I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 153
    const v2, 0x7f0901bf

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, "var5":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    const v3, 0x7f0901c5

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 156
    .local v3, "var3":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    const v5, 0x3f99999a    # 1.2f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0701d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    .line 159
    .local v4, "var4":F
    iget v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float v5, v4, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    const-wide v7, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    iget v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float v5, v4, v5

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v5, v7

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    .end local v4    # "var4":F
    :cond_1
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentColorContainer:Landroid/view/View;

    .line 164
    const v4, 0x7f0901c4

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColorContainer:Landroid/view/View;

    .line 165
    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    iput-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 166
    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v4}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v4

    .line 167
    .local v4, "var6":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 168
    iget-object v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 171
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    iput-object v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 172
    return-void
.end method

.method private initDialogPadding()V
    .locals 8

    .line 175
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 177
    .local v0, "var1":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 178
    .local v1, "var2":F
    const/high16 v2, 0x3f800000    # 1.0f

    rem-float v2, v1, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 179
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    .line 180
    .local v2, "var3":F
    div-float v3, v2, v1

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->isContains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0701ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 182
    .local v3, "var4":I
    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0701be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    .line 183
    int-to-float v4, v3

    sub-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 184
    .local v4, "var5":I
    iget-object v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0701c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 185
    .local v5, "var6":I
    iget-object v6, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0701bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 186
    const v6, 0x7f0901c1

    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v5, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 192
    .end local v0    # "var1":Landroid/util/DisplayMetrics;
    .end local v1    # "var2":F
    .end local v2    # "var3":F
    .end local v3    # "var4":I
    .end local v4    # "var5":I
    .end local v5    # "var6":I
    :cond_0
    return-void
.end method

.method private initOpacitySeekBar()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    const v0, 0x7f0901c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    .line 196
    const v0, 0x7f0901c3

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 197
    iget-boolean v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->init(Ljava/lang/Integer;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    new-instance v1, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$3;-><init>(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setOnSeekBarChangeListener(Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    new-instance v1, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$4;-><init>(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 243
    .local v0, "var1":Landroid/widget/FrameLayout;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, "var2":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f0119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f011e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f0108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method private initRecentColorLayout()V
    .locals 9

    .line 253
    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 254
    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0901c7

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentlyDivider:Landroid/view/View;

    .line 256
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f00f9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f00f8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f00f5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f00f4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f00f7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 259
    .local v1, "var1":Landroid/content/Context;
    iget-boolean v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v2, :cond_0

    .line 260
    const v2, 0x7f0600f8

    .local v2, "var2":I
    goto :goto_0

    .line 262
    .end local v2    # "var2":I
    :cond_0
    const v2, 0x7f0600f7

    .line 265
    .restart local v2    # "var2":I
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 267
    .local v4, "var3":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 268
    iget-object v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 269
    .local v5, "var4":Landroid/view/View;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 270
    invoke-virtual {v5, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 271
    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 267
    .end local v5    # "var4":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 274
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    const v5, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0701d9

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 276
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    int-to-float v5, v2

    iget v6, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    const-wide v7, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 280
    .end local v1    # "var1":Landroid/content/Context;
    .local v0, "var1":Landroid/content/Context;
    iget-boolean v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_3

    .line 281
    const v1, 0x7f0600fa

    .end local v2    # "var2":I
    .local v1, "var2":I
    goto :goto_2

    .line 283
    .end local v1    # "var2":I
    .restart local v2    # "var2":I
    :cond_3
    const v1, 0x7f0600f9

    .line 286
    .end local v2    # "var2":I
    .restart local v1    # "var2":I
    :goto_2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentlyDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 289
    return-void
.end method

.method private isContains(I)Z
    .locals 4
    .param p1, "var1"    # I

    .line 292
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSmallestWidthDp:[I

    .line 293
    .local v0, "var2":[I
    array-length v1, v0

    .line 295
    .local v1, "var3":I
    const/4 v2, 0x0

    .local v2, "var4":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 296
    aget v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 297
    const/4 v3, 0x1

    return v3

    .line 295
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "var4":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private mapColorOnColorWheel(I)V
    .locals 4
    .param p1, "var1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mColorSwatchView:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 307
    .local v0, "var2":Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->updateCursorPosition(I)V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    .line 312
    .local v1, "var3":Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;
    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->restoreColor(I)V

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 317
    .local v2, "var4":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v2, :cond_2

    .line 318
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 319
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 322
    :cond_2
    return-void
.end method

.method private setCurrentColorViewDescription(II)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v0, "var3":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mColorSwatchView:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    .local v1, "var4":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_0

    .line 328
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 332
    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 333
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 334
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f0118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColorContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f00fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentColorContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 342
    :cond_2
    :goto_0
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Ljava/lang/Integer;

    .line 345
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 347
    .local v0, "var3":Landroid/content/Context;
    iget-boolean v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_0

    .line 348
    const v1, 0x7f0800ef

    .local v1, "var4":I
    goto :goto_0

    .line 350
    .end local v1    # "var4":I
    :cond_0
    const v1, 0x7f0800ee

    .line 353
    .restart local v1    # "var4":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 354
    .local v2, "var5":Landroid/graphics/drawable/GradientDrawable;
    if-eqz p2, :cond_1

    .line 355
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 358
    :cond_1
    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 359
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    new-array v7, v6, [[I

    new-array v8, v4, [I

    aput-object v8, v7, v4

    new-array v6, v6, [I

    aput v1, v6, v4

    invoke-direct {v5, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v5, v2, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    return-void
.end method

.method private setInitialColors()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    .line 365
    .local v0, "var1":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 369
    :cond_0
    return-void
.end method

.method private updateCurrentColor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    .line 373
    .local v0, "var1":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 374
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    .line 375
    .local v1, "var2":Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;
    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->changeColorBase(I)V

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 380
    .local v2, "var3":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    .line 386
    .local v3, "var4":Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;
    if-eqz v3, :cond_2

    .line 387
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 391
    .end local v1    # "var2":Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;
    .end local v2    # "var3":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "var4":Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;
    :cond_2
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    return-object v0
.end method

.method public isUserInputValid()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsInputFromUser:Z

    return v0
.end method

.method public saveSelectedColor()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mPickedColor:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    .line 406
    .local v0, "var1":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->saveSelectedColor(I)V

    .line 410
    :cond_0
    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    .line 413
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    .line 414
    return-void
.end method

.method public setOpacityBarEnabled(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .line 418
    iput-boolean p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBar:Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 424
    :cond_0
    return-void
.end method

.method public updateRecentColorLayout()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 430
    .local v0, "var1":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "var2":I
    goto :goto_0

    .line 433
    .end local v1    # "var2":I
    :cond_0
    const/4 v1, 0x0

    .line 436
    .restart local v1    # "var2":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v2, "var8":Ljava/lang/StringBuilder;
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0f011a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "var3":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "var4":I
    :goto_1
    const/4 v6, 0x6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_2

    .line 442
    iget-object v6, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 443
    .local v6, "var5":Landroid/view/View;
    if-ge v5, v1, :cond_1

    .line 444
    iget-object v8, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 445
    .local v8, "var6":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v6, v9}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 446
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v9, "var7":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mColorSwatchView:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-virtual {v10, v8}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 448
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v10

    .line 449
    iget-object v10, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 454
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 455
    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 441
    .end local v6    # "var5":Landroid/view/View;
    .end local v8    # "var6":I
    .end local v9    # "var7":Ljava/lang/StringBuilder;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 459
    .end local v5    # "var4":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 460
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 461
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 462
    invoke-direct {p0, v1, v7}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 463
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 464
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    goto :goto_2

    .line 465
    :cond_3
    if-eqz v1, :cond_4

    .line 466
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 467
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 468
    invoke-direct {p0, v1, v7}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 469
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 470
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 473
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 474
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mRecentColorInfo:Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    invoke-virtual {v3}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 475
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 476
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 479
    :cond_5
    return-void
.end method
