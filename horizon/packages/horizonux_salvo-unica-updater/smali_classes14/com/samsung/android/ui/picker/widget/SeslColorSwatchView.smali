.class Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;
.super Landroid/view/View;
.source "SeslColorSwatchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;,
        Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;
    }
.end annotation


# static fields
.field private static final MAX_SWATCH_VIEW_ID:I = 0x6e

.field private static final SWATCH_ITEM_COLUMN:I = 0xb

.field private static final SWATCH_ITEM_ROW:I = 0xa

.field private static final SWATCH_ITEM_SIZE_ROUNDING_VALUE:F = 0.5f

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorBrightness:[[I

.field private mColorSwatch:[[I

.field private mColorSwatchDescription:[[Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mCursorIndex:Landroid/graphics/Point;

.field private mCursorRect:Landroid/graphics/Rect;

.field private mFromUser:Z

.field private mIsColorInSwatch:Z

.field private mListener:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectedVirtualViewId:I

.field private mSwatchItemHeight:F

.field private mSwatchItemWidth:F

.field private mTouchHelper:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 77
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 79
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mFromUser:Z

    .line 80
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 81
    const/16 v4, 0xa

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 82
    .local v5, "var12":[I
    new-array v6, v4, [I

    fill-array-data v6, :array_1

    .line 83
    .local v6, "var5":[I
    new-array v7, v4, [I

    fill-array-data v7, :array_2

    .line 84
    .local v7, "var6":[I
    new-array v8, v4, [I

    fill-array-data v8, :array_3

    .line 85
    .local v8, "var7":[I
    const/16 v9, 0xb

    new-array v10, v9, [[I

    new-array v11, v4, [I

    fill-array-data v11, :array_4

    aput-object v11, v10, v2

    aput-object v5, v10, v3

    new-array v11, v4, [I

    fill-array-data v11, :array_5

    const/4 v12, 0x2

    aput-object v11, v10, v12

    new-array v11, v4, [I

    fill-array-data v11, :array_6

    const/4 v13, 0x3

    aput-object v11, v10, v13

    new-array v11, v4, [I

    fill-array-data v11, :array_7

    const/4 v14, 0x4

    aput-object v11, v10, v14

    const/4 v11, 0x5

    aput-object v6, v10, v11

    new-array v15, v4, [I

    fill-array-data v15, :array_8

    const/16 v16, 0x6

    aput-object v15, v10, v16

    const/4 v15, 0x7

    aput-object v7, v10, v15

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    const/16 v17, 0x8

    aput-object v1, v10, v17

    const/16 v1, 0x9

    aput-object v8, v10, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    aput-object v1, v10, v4

    iput-object v10, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

    .line 86
    new-array v1, v4, [I

    fill-array-data v1, :array_b

    .line 87
    .end local v5    # "var12":[I
    .local v1, "var12":[I
    new-array v5, v4, [I

    fill-array-data v5, :array_c

    .line 88
    .end local v6    # "var5":[I
    .local v5, "var5":[I
    new-array v6, v4, [I

    fill-array-data v6, :array_d

    .line 89
    .end local v7    # "var6":[I
    .local v6, "var6":[I
    new-array v7, v4, [I

    fill-array-data v7, :array_e

    .line 90
    .end local v8    # "var7":[I
    .local v7, "var7":[I
    new-array v8, v4, [I

    fill-array-data v8, :array_f

    .line 91
    .local v8, "var8":[I
    new-array v10, v4, [I

    fill-array-data v10, :array_10

    .line 92
    .local v10, "var9":[I
    new-array v15, v4, [I

    fill-array-data v15, :array_11

    .line 93
    .local v15, "var10":[I
    new-array v11, v4, [I

    fill-array-data v11, :array_12

    .line 94
    .local v11, "var11":[I
    new-array v9, v9, [[I

    aput-object v1, v9, v2

    aput-object v5, v9, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v9, v12

    new-array v2, v4, [I

    fill-array-data v2, :array_14

    aput-object v2, v9, v13

    aput-object v6, v9, v14

    const/4 v2, 0x5

    aput-object v7, v9, v2

    aput-object v8, v9, v16

    const/4 v2, 0x7

    aput-object v10, v9, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_15

    aput-object v2, v9, v17

    const/16 v2, 0x9

    aput-object v15, v9, v2

    aput-object v11, v9, v4

    iput-object v9, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorBrightness:[[I

    .line 95
    new-array v2, v12, [I

    fill-array-data v2, :array_16

    const-class v3, Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/StringBuilder;

    iput-object v2, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 96
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 98
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->initCursorDrawable()V

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->initAccessibility()V

    .line 100
    iget-object v3, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0701bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 101
    iget-object v3, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0701bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x41300000    # 11.0f

    div-float/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 102
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 103
    return-void

    nop

    :array_0
    .array-data 4
        -0x5758
        -0x9495
        -0xc2c3
        -0xebec
        -0x10000
        -0x60000
        -0x250000
        -0x580000
        -0xa40000
        -0xcd0000
    .end array-data

    :array_1
    .array-data 4
        -0x570035
        -0x99005d
        -0xc70078
        -0xf00091
        -0xff009a
        -0xff0a9e
        -0xff24a8
        -0xff5cbf
        -0xffa3db
        -0xffccec
    .end array-data

    :array_2
    .array-data 4
        -0x572b01
        -0x944a01
        -0xc76301
        -0xeb7501
        -0xff7f01
        -0xff8206
        -0xff9125
        -0xffab58
        -0xffce9f
        -0xffe5cd
    .end array-data

    :array_3
    .array-data 4
        -0x345701
        -0x599401
        -0x77c701
        -0x90f001
        -0x99ff01
        -0x9bff06
        -0xa7ff25
        -0xbcff58
        -0xdaffa4
        -0xebffcd
    .end array-data

    :array_4
    .array-data 4
        -0x1
        -0x333334
        -0x4c4c4d
        -0x666667
        -0x7d7d7e
        -0x99999a
        -0xb2b2b3
        -0xcccccd
        -0xe5e5e6
        -0x1000000
    .end array-data

    :array_5
    .array-data 4
        -0x2b58
        -0x4a95
        -0x63c8
        -0x77f1
        -0x8000
        -0x58300
        -0x249200
        -0x57ac00
        -0xa3d200
        -0xcce600
    .end array-data

    :array_6
    .array-data 4
        -0x58
        -0x9a
        -0xc8
        -0x100
        -0x100
        -0x50600
        -0x242500
        -0x5c5d00
        -0xa3a400
        -0xcccd00
    .end array-data

    :array_7
    .array-data 4
        -0x570058
        -0x99009a
        -0xc700c8
        -0xf500f6
        -0xff0100
        -0xff0600
        -0xff2500
        -0xff5d00
        -0xffa400
        -0xffcd00
    .end array-data

    :array_8
    .array-data 4
        -0x570001
        -0x990001
        -0xc20001
        -0xf50001
        -0xff0001
        -0xff0a0b
        -0xff2425
        -0xff5c5d
        -0xffa3a4
        -0xffcccd
    .end array-data

    :array_9
    .array-data 4
        -0x575701
        -0x949401
        -0xc7c701
        -0xf5f501
        -0xffff01
        -0xffff06
        -0xffff25
        -0xffff58
        -0xffff9f
        -0xffffcd
    .end array-data

    :array_a
    .array-data 4
        -0x5701
        -0x9901
        -0xc701
        -0xf001
        -0xff01
        -0x5ff06
        -0x24ff25
        -0x57ff58
        -0x9eff9f
        -0xccffcd
    .end array-data

    :array_b
    .array-data 4
        0x64
        0x50
        0x46
        0x3c
        0x33
        0x28
        0x1e
        0x14
        0xa
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x53
        0x47
        0x3e
        0x36
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_d
    .array-data 4
        0x53
        0x46
        0x3d
        0x34
        0x32
        0x31
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_e
    .array-data 4
        0x53
        0x46
        0x3d
        0x35
        0x32
        0x30
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_f
    .array-data 4
        0x53
        0x46
        0x3e
        0x34
        0x32
        0x30
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_10
    .array-data 4
        0x53
        0x47
        0x3d
        0x36
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data

    :array_11
    .array-data 4
        0x53
        0x47
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_12
    .array-data 4
        0x53
        0x46
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data

    :array_13
    .array-data 4
        0x53
        0x47
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_14
    .array-data 4
        0x53
        0x46
        0x3d
        0x32
        0x32
        0x31
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_15
    .array-data 4
        0x53
        0x47
        0x3d
        0x34
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data

    :array_16
    .array-data 4
        0xb
        0xa
    .end array-data
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)[[Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorBrightness:[[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mListener:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mTouchHelper:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

    return-object v0
.end method

.method private initAccessibility()V
    .locals 1

    .line 106
    new-instance v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;-><init>(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mTouchHelper:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    .line 107
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->setImportantForAccessibility(I)V

    .line 109
    return-void
.end method

.method private initCursorDrawable()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0800f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 114
    return-void
.end method

.method private setCursorIndexAt(I)V
    .locals 4
    .param p1, "var1"    # I

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    move-result-object v0

    .line 118
    .local v0, "var2":Landroid/graphics/Point;
    iget-boolean v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 122
    :cond_0
    return-void
.end method

.method private setCursorIndexAt(FF)Z
    .locals 6
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 125
    iget v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    const/high16 v1, 0x41300000    # 11.0f

    mul-float/2addr v0, v1

    .line 126
    .local v0, "var3":F
    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    .line 127
    .local v1, "var4":F
    cmpl-float v2, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    .line 128
    sub-float/2addr v0, v3

    goto :goto_0

    .line 130
    :cond_0
    move v0, p1

    .line 131
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 136
    :cond_1
    :goto_0
    cmpl-float v2, p2, v1

    if-ltz v2, :cond_2

    .line 137
    sub-float p1, v1, v3

    goto :goto_1

    .line 139
    :cond_2
    move p1, p2

    .line 140
    cmpg-float v2, p2, v4

    if-gez v2, :cond_3

    .line 141
    const/4 p1, 0x0

    .line 145
    :cond_3
    :goto_1
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 146
    .local v2, "var5":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    div-float v4, v0, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    div-float v5, p1, v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 147
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private setCursorRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "var1"    # Landroid/graphics/Rect;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    return-void
.end method

.method private setSelectedVirtualViewId()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 156
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mTouchHelper:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 163
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 166
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "var1"    # I

    .line 170
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    move-result-object v0

    .line 171
    .local v0, "var2":Landroid/graphics/Point;
    iget-boolean v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Point;->x:I

    aget-object v1, v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mTouchHelper:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v3, v3, 0xb

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->access$000(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;I)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Point;->x:I

    aget-object v1, v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    .line 174
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getCursorIndexAt(I)Landroid/graphics/Point;
    .locals 7
    .param p1, "var1"    # I

    .line 179
    shr-int/lit8 v0, p1, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v2, v1

    and-int/lit16 v3, p1, 0xff

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 180
    .local v0, "var2":I
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 181
    .local v1, "var3":Landroid/graphics/Point;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mFromUser:Z

    .line 183
    const/4 p1, 0x0

    :goto_0
    const/16 v4, 0xb

    const/4 v5, 0x1

    if-ge p1, v4, :cond_2

    .line 184
    const/4 v4, 0x0

    .local v4, "var4":I
    :goto_1
    const/16 v6, 0xa

    if-ge v4, v6, :cond_1

    .line 185
    iget-object v6, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

    aget-object v6, v6, p1

    aget v6, v6, v4

    if-ne v6, v0, :cond_0

    .line 186
    invoke-virtual {v1, p1, v4}, Landroid/graphics/Point;->set(II)V

    .line 187
    iput-boolean v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mFromUser:Z

    .line 184
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 183
    .end local v4    # "var4":I
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 192
    :cond_2
    iput-boolean v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 193
    iget-boolean v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mFromUser:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 194
    iput-boolean v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->invalidate()V

    .line 198
    :cond_3
    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 202
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 204
    .local v0, "var2":Landroid/graphics/Paint;
    const/4 v1, 0x0

    move v7, v1

    .local v7, "var3":I
    :goto_0
    const/16 v1, 0xb

    if-ge v7, v1, :cond_1

    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, "var4":I
    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

    aget-object v2, v2, v7

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 210
    .local v2, "var5":F
    int-to-float v3, v7

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v8, v3

    .line 211
    .local v8, "var6":F
    iget v9, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 212
    .local v9, "var7":F
    int-to-float v3, v1

    mul-float/2addr v3, v9

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v10, v3

    .line 213
    .local v10, "var8":F
    add-int/lit8 v3, v7, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v11, v3

    .line 214
    .end local v2    # "var5":F
    .local v11, "var5":F
    add-int/lit8 v12, v1, 0x1

    .line 215
    .end local v1    # "var4":I
    .local v12, "var4":I
    int-to-float v1, v12

    mul-float/2addr v1, v9

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v5, v1

    move-object v1, p1

    move v2, v8

    move v3, v10

    move v4, v11

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 216
    .end local v8    # "var6":F
    .end local v9    # "var7":F
    .end local v10    # "var8":F
    .end local v11    # "var5":F
    move v1, v12

    goto :goto_1

    .line 204
    .end local v12    # "var4":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 219
    .end local v7    # "var3":I
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "var1"    # Landroid/view/MotionEvent;

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 228
    .local v0, "var2":I
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->setCursorIndexAt(FF)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    if-nez v2, :cond_2

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->setSelectedVirtualViewId()V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->invalidate()V

    .line 236
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mListener:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    .line 237
    .local v2, "var3":Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;
    if-eqz v2, :cond_2

    .line 238
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mColorSwatch:[[I

    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    aget v3, v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;->onColorSwatchChanged(I)V

    .line 242
    .end local v2    # "var3":Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;
    :cond_2
    return v1
.end method

.method setOnColorSwatchChangedListener(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    .line 246
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mListener:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    .line 247
    return-void
.end method

.method public updateCursorPosition(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 250
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->setCursorIndexAt(I)V

    .line 251
    iget-boolean v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->invalidate()V

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->setSelectedVirtualViewId()V

    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 259
    :goto_0
    return-void
.end method
