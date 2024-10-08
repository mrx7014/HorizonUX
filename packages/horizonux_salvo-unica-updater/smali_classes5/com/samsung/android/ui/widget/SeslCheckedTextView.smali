.class public Lcom/samsung/android/ui/widget/SeslCheckedTextView;
.super Landroid/widget/TextView;
.source "SeslCheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;
    }
.end annotation


# static fields
.field public static final CHECKED_STATE_SET:[I


# instance fields
.field public mBasePadding:I

.field public mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field public mCheckMarkGravity:I

.field public mCheckMarkResource:I

.field public mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field public mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mCheckMarkWidth:I

.field public mChecked:Z

.field public mDrawablePadding:I

.field public mHasCheckMarkTint:Z

.field public mHasCheckMarkTintMode:Z

.field public mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 65
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    .line 79
    const v1, 0x800003

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    .line 80
    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslCheckedTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 81
    .local v2, "var6":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 82
    .local v4, "var5":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v6}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 88
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    .line 91
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 93
    iput-boolean v3, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 96
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    .line 97
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mDrawablePadding:I

    .line 99
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 101
    return-void
.end method

.method private applyCheckMarkTint()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v1, :cond_3

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 110
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 119
    :cond_3
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .locals 2

    .line 123
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 126
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 129
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method private setBasePadding(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mBasePadding:I

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mBasePadding:I

    .line 139
    :goto_0
    return-void
.end method

.method private setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "var2"    # I

    .line 142
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 144
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    const/4 v1, 0x1

    .line 151
    .local v1, "var4":Z
    if-eq p1, v0, :cond_1

    .line 152
    const/4 v2, 0x1

    .local v2, "var5":Z
    goto :goto_0

    .line 154
    .end local v2    # "var5":Z
    :cond_1
    const/4 v2, 0x0

    .line 157
    .restart local v2    # "var5":Z
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 158
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 161
    move v2, v1

    goto :goto_1

    .line 163
    :cond_2
    const/4 v2, 0x0

    .line 166
    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 167
    sget-object v4, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 168
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setMinHeight(I)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 172
    :cond_3
    iput v3, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    .line 175
    :goto_2
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkResource:I

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 178
    const-class v4, Landroid/view/View;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "resolvePadding"

    invoke-static {v4, p0, v5, v3}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setBasePadding(Z)V

    .line 180
    return-void
.end method

.method private updatePadding()V
    .locals 8

    .line 183
    const-class v0, Landroid/view/View;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "resetPaddingToInitialValues"

    invoke-static {v0, p0, v3, v2}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 186
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mBasePadding:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mDrawablePadding:I

    add-int/2addr v0, v2

    .local v0, "var1":I
    goto :goto_0

    .line 188
    .end local v0    # "var1":I
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mBasePadding:I

    .line 191
    .restart local v0    # "var1":I
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v2

    .line 192
    .local v2, "var2":Z
    const/4 v3, 0x1

    .line 193
    .local v3, "var3":Z
    const/4 v4, 0x1

    .line 194
    .local v4, "var4":Z
    if-eqz v2, :cond_2

    .line 195
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 196
    const-class v5, Landroid/view/View;

    const-string v6, "mPaddingLeft"

    invoke-static {v5, p0, v6}, Lcom/mesalabs/cerberus/utils/Utils;->genericGetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 197
    const/4 v4, 0x0

    .line 200
    :cond_1
    or-int v5, v2, v4

    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 201
    const-class v5, Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, p0, v6, v7}, Lcom/mesalabs/cerberus/utils/Utils;->genericSetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 203
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 204
    const-class v5, Landroid/view/View;

    const-string v6, "mPaddingRight"

    invoke-static {v5, p0, v6}, Lcom/mesalabs/cerberus/utils/Utils;->genericGetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v0, :cond_3

    .line 205
    move v4, v3

    goto :goto_1

    .line 207
    :cond_3
    const/4 v4, 0x0

    .line 210
    :goto_1
    or-int v5, v2, v4

    iput-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 211
    const-class v5, Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, p0, v6, v7}, Lcom/mesalabs/cerberus/utils/Utils;->genericSetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    if-eqz v5, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->requestLayout()V

    .line 216
    iput-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 219
    :cond_4
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 222
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    .local v0, "var3":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 228
    :cond_0
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 231
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 233
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 240
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 257
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 260
    .local v0, "var2":Landroid/graphics/Rect;
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/widget/TextView;

    const-string v2, "mSingleLine"

    invoke-static {v1, p0, v2}, Lcom/mesalabs/cerberus/utils/Utils;->genericGetField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->invalidate(IIII)V

    .line 265
    .end local v0    # "var2":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 269
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 273
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    .local v0, "var1":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 279
    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "var1"    # I

    .line 282
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 283
    .local v0, "var2":[I
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    sget-object v1, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    .line 287
    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 292
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 294
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 296
    .local v1, "var3":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 297
    .local v2, "var4":I
    const/4 v3, 0x0

    .line 298
    .local v3, "var5":I
    const/16 v4, 0x10

    if-eq v1, v4, :cond_0

    .line 299
    const/16 v4, 0x50

    if-ne v1, v4, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getHeight()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v3, v4, 0x2

    .line 306
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v4

    .line 307
    .local v4, "var6":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getWidth()I

    move-result v1

    .line 308
    add-int v5, v2, v3

    .line 309
    .local v5, "var7":I
    if-eqz v4, :cond_2

    .line 310
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mBasePadding:I

    .line 311
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v6, v2

    .end local v1    # "var3":I
    .local v6, "var3":I
    goto :goto_1

    .line 313
    .end local v6    # "var3":I
    .restart local v1    # "var3":I
    :cond_2
    iget v6, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mBasePadding:I

    sub-int v6, v1, v6

    .line 314
    .end local v1    # "var3":I
    .restart local v6    # "var3":I
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    sub-int v2, v6, v1

    .line 317
    :goto_1
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getScrollX()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getScrollX()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v1, v3, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 320
    :cond_3
    invoke-virtual {v0, v2, v3, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 325
    .local v1, "var8":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getScrollX()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getScrollX()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v1, v7, v3, v8, v5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 330
    .end local v1    # "var8":Landroid/graphics/drawable/Drawable;
    .end local v2    # "var4":I
    .end local v3    # "var5":I
    .end local v4    # "var6":Z
    .end local v5    # "var7":I
    .end local v6    # "var3":I
    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 333
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 334
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 335
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 338
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 341
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 344
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;

    .line 345
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 346
    iget-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->requestLayout()V

    .line 348
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 351
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->updatePadding()V

    .line 353
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 356
    new-instance v0, Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 357
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/ui/widget/SeslCheckedTextView$SavedState;->checked:Z

    .line 358
    return-object v0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 362
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkResource:I

    if-eq p1, v0, :cond_2

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 367
    .end local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .line 370
    .restart local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 372
    .end local v0    # "var2":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 376
    return-void
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 379
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 382
    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/PorterDuff$Mode;

    .line 385
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 388
    return-void
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "var1"    # Z

    .line 391
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 392
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mChecked:Z

    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->refreshDrawableState()V

    .line 394
    const-class v0, Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "notifyViewAccessibilityStateChangedIfNeeded"

    invoke-static {v0, p0, v2, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 400
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 402
    .local v0, "var2":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 404
    if-nez p1, :cond_0

    .line 405
    const/4 v1, 0x1

    .local v1, "var3":Z
    goto :goto_0

    .line 407
    .end local v1    # "var3":Z
    :cond_0
    const/4 v1, 0x0

    .line 410
    .restart local v1    # "var3":Z
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 413
    .end local v1    # "var3":Z
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 417
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 421
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .local v0, "var2":Z
    goto :goto_0

    .line 424
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x1

    .line 427
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method
