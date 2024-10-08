.class public Landroidx/appcompat/widget/SeslAppCompatSpinner;
.super Landroid/widget/Spinner;
.source "SeslAppCompatSpinner.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;,
        Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;,
        Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;,
        Landroidx/appcompat/widget/SeslAppCompatSpinner$DropDownAdapter;,
        Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

.field mDropDownWidth:I

.field private mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

.field private mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 81
    const/4 v0, 0x0

    const v1, 0x7f040324

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    const v0, 0x7f040324

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 89
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .line 93
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SeslAppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 100
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    new-instance v2, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    .line 104
    if-eqz p5, :cond_0

    .line 105
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 107
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 108
    .local v2, "popupThemeResId":I
    if-eqz v2, :cond_1

    .line 109
    new-instance v3, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 111
    :cond_1
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupContext:Landroid/content/Context;

    .line 115
    .end local v2    # "popupThemeResId":I
    :goto_0
    const/4 v2, -0x1

    if-ne p4, v2, :cond_4

    .line 116
    const/4 v2, 0x0

    .line 118
    .local v2, "aa":Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v3, Landroidx/appcompat/widget/SeslAppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 119
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p4, v3

    .line 125
    :cond_2
    if-eqz v2, :cond_4

    .line 126
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 125
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "AppCompatSpinner"

    const-string v5, "Could not read android:spinnerMode"

    invoke-static {v4, v5, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_4

    .line 126
    goto :goto_1

    .line 125
    :goto_2
    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    :cond_3
    throw v1

    .line 131
    .end local v2    # "aa":Landroid/content/res/TypedArray;
    :cond_4
    :goto_3
    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch p4, :pswitch_data_0

    goto :goto_4

    .line 138
    :pswitch_0
    new-instance v4, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    iget-object v5, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p2, p3}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;-><init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    .local v4, "popup":Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;
    iget-object v5, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupContext:Landroid/content/Context;

    sget-object v6, Lcom/mesalabs/ten/update/R$styleable;->Spinner:[I

    invoke-static {v5, p2, v6, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    .line 140
    .local v5, "pa":Landroidx/appcompat/widget/TintTypedArray;
    const/4 v6, 0x3

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mDropDownWidth:I

    .line 141
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 145
    iput-object v4, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    .line 146
    new-instance v3, Landroidx/appcompat/widget/SeslAppCompatSpinner$1;

    invoke-direct {v3, p0, p0, v4}, Landroidx/appcompat/widget/SeslAppCompatSpinner$1;-><init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;)V

    iput-object v3, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    goto :goto_4

    .line 133
    .end local v4    # "popup":Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;
    .end local v5    # "pa":Landroidx/appcompat/widget/TintTypedArray;
    :pswitch_1
    new-instance v4, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;

    invoke-direct {v4, p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;-><init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;)V

    iput-object v4, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    .line 134
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 135
    nop

    .line 164
    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 165
    .local v1, "entries":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    .line 166
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, p1, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 167
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x7f0c00a9

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 168
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 171
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_5
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 173
    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupSet:Z

    .line 175
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_6

    .line 176
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 177
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 180
    :cond_6
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    invoke-virtual {v2, p2, p3}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 181
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 12
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .line 390
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 391
    return v0

    .line 394
    :cond_0
    const/4 v1, 0x0

    .line 395
    .local v1, "width":I
    const/4 v2, 0x0

    .line 396
    .local v2, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 397
    .local v3, "itemType":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 398
    .local v4, "widthMeasureSpec":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 400
    .local v5, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getSelectedItemPosition()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 401
    .local v6, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v6, 0xf

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 402
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 403
    .local v8, "count":I
    rsub-int/lit8 v9, v8, 0xf

    sub-int v9, v6, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 404
    .end local v6    # "start":I
    .local v0, "start":I
    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 405
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v9

    .line 406
    .local v9, "positionType":I
    if-eq v9, v3, :cond_1

    .line 407
    move v3, v9

    .line 408
    const/4 v2, 0x0

    .line 410
    :cond_1
    invoke-interface {p1, v6, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 412
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    :cond_2
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 417
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 404
    .end local v9    # "positionType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 420
    .end local v6    # "i":I
    :cond_3
    if-eqz p2, :cond_4

    .line 421
    iget-object v6, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 422
    iget-object v6, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    add-int/2addr v1, v6

    .line 425
    :cond_4
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 383
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 384
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 387
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    .line 243
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0

    .line 245
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 246
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0

    .line 248
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .line 223
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0

    .line 225
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 226
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0

    .line 228
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 2

    .line 262
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 263
    iget v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mDropDownWidth:I

    return v0

    .line 264
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 265
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0

    .line 267
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final getInternalPopup()Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 204
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 207
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 209
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 336
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 378
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 287
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 289
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->dismiss()V

    .line 292
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 305
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 307
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getMeasuredWidth()I

    move-result v0

    .line 309
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setMeasuredDimension(II)V

    .line 311
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 450
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;

    .line 452
    .local v0, "ss":Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 454
    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;->mShowDropdown:Z

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 456
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 457
    new-instance v2, Landroidx/appcompat/widget/SeslAppCompatSpinner$2;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$2;-><init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;)V

    .line 473
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 476
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 443
    new-instance v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 444
    .local v0, "ss":Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$SavedState;->mShowDropdown:Z

    .line 445
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 297
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 315
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_1

    .line 316
    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->showPopup()V

    .line 319
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 322
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 59
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 272
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupSet:Z

    if-nez v0, :cond_0

    .line 273
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 274
    return-void

    .line 277
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 279
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, "popupContext":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    new-instance v2, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 349
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 341
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 342
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 233
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->setHorizontalOriginalOffset(I)V

    .line 235
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->setHorizontalOffset(I)V

    goto :goto_0

    .line 236
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 237
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    .line 239
    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 214
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->setVerticalOffset(I)V

    goto :goto_0

    .line 216
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 217
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 219
    :cond_1
    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 253
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 254
    iput p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mDropDownWidth:I

    goto :goto_0

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 256
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 258
    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 192
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 193
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 199
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 327
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 332
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 357
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 360
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 370
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 373
    :cond_0
    return-void
.end method

.method showPopup()V
    .locals 3

    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->show(II)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner;->mPopup:Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->show(II)V

    .line 438
    :goto_0
    return-void
.end method
