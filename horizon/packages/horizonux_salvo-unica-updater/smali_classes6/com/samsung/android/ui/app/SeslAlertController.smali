.class public Lcom/samsung/android/ui/app/SeslAlertController;
.super Ljava/lang/Object;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/app/SeslAlertController$ButtonHandler;,
        Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;,
        Lcom/samsung/android/ui/app/SeslAlertController$CheckedItemAdapter;,
        Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;,
        Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAlertDialogLayout:I

.field public final mButtonHandler:Landroid/view/View$OnClickListener;

.field public final mButtonIconDimen:I

.field public mButtonNegative:Landroid/widget/Button;

.field public mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field public mButtonNegativeMessage:Landroid/os/Message;

.field public mButtonNegativeText:Ljava/lang/CharSequence;

.field public mButtonNeutral:Landroid/widget/Button;

.field public mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field public mButtonNeutralMessage:Landroid/os/Message;

.field public mButtonNeutralText:Ljava/lang/CharSequence;

.field public mButtonPanelLayoutHint:I

.field public mButtonPanelSideLayout:I

.field public mButtonPositive:Landroid/widget/Button;

.field public mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field public mButtonPositiveMessage:Landroid/os/Message;

.field public mButtonPositiveText:Ljava/lang/CharSequence;

.field public mCheckedItem:I

.field public final mContext:Landroid/content/Context;

.field public mCustomTitleView:Landroid/view/View;

.field public final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field public mHandler:Landroid/os/Handler;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public mIconView:Landroid/widget/ImageView;

.field public mLastOrientation:I

.field public mListItemLayout:I

.field public mListLayout:I

.field public mListView:Landroid/widget/ListView;

.field public mMessage:Ljava/lang/CharSequence;

.field public mMessageView:Landroid/widget/TextView;

.field public mMultiChoiceItemLayout:I

.field public mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

.field public mShowTitle:Z

.field public mSingleChoiceItemLayout:I

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleView:Landroid/widget/TextView;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I

.field public final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroidx/appcompat/app/AppCompatDialog;
    .param p3, "var3"    # Landroid/view/Window;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/samsung/android/ui/app/SeslAlertController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/app/SeslAlertController$1;-><init>(Lcom/samsung/android/ui/app/SeslAlertController;)V

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPanelLayoutHint:I

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mCheckedItem:I

    .line 132
    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconId:I

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingSpecified:Z

    .line 156
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 158
    iput-object p3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    .line 159
    new-instance v1, Lcom/samsung/android/ui/app/SeslAlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mHandler:Landroid/os/Handler;

    .line 160
    const/4 v1, 0x0

    check-cast v1, Landroid/util/AttributeSet;

    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslAlertDialog:[I

    const v3, 0x7f04002b

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 161
    .local v1, "var4":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mAlertDialogLayout:I

    .line 162
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPanelSideLayout:I

    .line 163
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mListLayout:I

    .line 164
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mMultiChoiceItemLayout:I

    .line 165
    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mSingleChoiceItemLayout:I

    .line 166
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mListItemLayout:I

    .line 167
    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mShowTitle:Z

    .line 168
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonIconDimen:I

    .line 169
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    invoke-virtual {p2, v3}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/app/SeslAlertController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/app/SeslAlertController;

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/ui/app/SeslAlertController;->setupPaddings()V

    return-void
.end method

.method private adjustButtonsPadding()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 176
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    .line 177
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 178
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 182
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 183
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 187
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 188
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/ui/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 191
    :cond_2
    return-void
.end method

.method private adjustParentPanelPadding(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 195
    return-void
.end method

.method private adjustTopPanelPadding(Landroid/view/View;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/View;

    .line 198
    const v0, 0x7f09020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "var2":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, "var3":Landroid/content/res/Resources;
    const v2, 0x7f070202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    return-void
.end method

.method public static canTextInput(Landroid/view/View;)Z
    .locals 6
    .param p0, "var0"    # Landroid/view/View;

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 205
    return v1

    .line 206
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 207
    return v2

    .line 209
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 210
    .local v0, "var3":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 214
    .local v3, "var1":I
    :goto_0
    if-gtz v3, :cond_2

    .line 215
    return v2

    .line 218
    :cond_2
    add-int/lit8 v4, v3, -0x1

    .line 219
    .local v4, "var2":I
    move v3, v4

    .line 220
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/ui/app/SeslAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 222
    return v1

    .line 220
    :cond_3
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "var1"    # Landroid/widget/Button;

    .line 227
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 228
    .local v0, "var2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 229
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-void
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "var1"    # Landroid/widget/TextView;
    .param p2, "var2"    # I

    .line 234
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 235
    .local v0, "var3":F
    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    int-to-float v3, p2

    div-float/2addr v3, v0

    mul-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 239
    :cond_0
    return-void
.end method

.method public static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p0, "var0"    # Landroid/view/View;
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "var3":B
    if-eqz p1, :cond_1

    .line 245
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x0

    .local v1, "var4":B
    goto :goto_0

    .line 248
    .end local v1    # "var4":B
    :cond_0
    const/4 v1, 0x4

    .line 251
    .restart local v1    # "var4":B
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .end local v1    # "var4":B
    :cond_1
    if-eqz p2, :cond_3

    .line 255
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    move v1, v0

    .restart local v1    # "var4":B
    goto :goto_1

    .line 258
    .end local v1    # "var4":B
    :cond_2
    const/4 v1, 0x4

    .line 261
    .restart local v1    # "var4":B
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .end local v1    # "var4":B
    :cond_3
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 267
    if-nez p1, :cond_1

    .line 268
    move-object p1, p2

    .line 269
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 270
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 273
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 275
    :cond_1
    if-eqz p2, :cond_2

    .line 276
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 277
    .local v0, "var3":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 278
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 282
    .end local v0    # "var3":Landroid/view/ViewParent;
    :cond_2
    move-object p2, p1

    .line 283
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 284
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 287
    :cond_3
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private selectContentView()I
    .locals 3

    .line 292
    iget v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPanelSideLayout:I

    .line 293
    .local v0, "var1":I
    if-nez v0, :cond_0

    .line 294
    iget v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mAlertDialogLayout:I

    return v1

    .line 296
    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mAlertDialogLayout:I

    :goto_0
    return v1
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 9
    .param p1, "var1"    # Landroid/view/ViewGroup;
    .param p2, "var2"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 301
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, "var5":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f0901a5

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 303
    .local v1, "var6":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 304
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 309
    :cond_0
    if-eqz v1, :cond_8

    .line 310
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 313
    :cond_1
    const/4 v2, 0x0

    .line 314
    .local v2, "var7":Landroid/widget/ListView;
    move-object p2, v0

    .line 315
    if-eqz v0, :cond_2

    .line 316
    move-object p2, v0

    .line 317
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_2

    .line 318
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 319
    const/4 p2, 0x0

    .line 323
    :cond_2
    if-eqz v1, :cond_3

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_3

    .line 324
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 325
    move-object v1, v2

    .line 328
    :cond_3
    if-nez p2, :cond_4

    if-eqz v1, :cond_8

    .line 329
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 330
    move-object v3, p2

    .line 331
    .local v3, "finalVar":Landroid/view/View;
    move-object v4, v1

    .line 332
    .local v4, "finalVar1":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    new-instance v6, Lcom/samsung/android/ui/app/SeslAlertController$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/samsung/android/ui/app/SeslAlertController$2;-><init>(Lcom/samsung/android/ui/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setOnScrollChangeListener(Lcom/samsung/android/ui/widget/SeslNestedScrollView$OnScrollChangeListener;)V

    .line 337
    move-object v5, p2

    .line 338
    .local v5, "finalVar2":Landroid/view/View;
    move-object v6, v1

    .line 339
    .local v6, "finalVar3":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    new-instance v8, Lcom/samsung/android/ui/app/SeslAlertController$3;

    invoke-direct {v8, p0, v5, v6}, Lcom/samsung/android/ui/app/SeslAlertController$3;-><init>(Lcom/samsung/android/ui/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->post(Ljava/lang/Runnable;)Z

    .line 344
    .end local v3    # "finalVar":Landroid/view/View;
    .end local v4    # "finalVar1":Landroid/view/View;
    .end local v5    # "finalVar2":Landroid/view/View;
    .end local v6    # "finalVar3":Landroid/view/View;
    goto :goto_0

    .line 345
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    .line 346
    if-eqz v2, :cond_6

    .line 347
    move-object v3, p2

    .line 348
    .local v3, "finalVar4":Landroid/view/View;
    move-object v4, v1

    .line 349
    .local v4, "finalVar5":Landroid/view/View;
    new-instance v5, Lcom/samsung/android/ui/app/SeslAlertController$4;

    invoke-direct {v5, p0, v3, v4}, Lcom/samsung/android/ui/app/SeslAlertController$4;-><init>(Lcom/samsung/android/ui/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 357
    move-object v5, p2

    .line 358
    .local v5, "finalVar6":Landroid/view/View;
    move-object v6, v1

    .line 359
    .local v6, "finalVar7":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/samsung/android/ui/app/SeslAlertController$5;

    invoke-direct {v8, p0, v5, v6}, Lcom/samsung/android/ui/app/SeslAlertController$5;-><init>(Lcom/samsung/android/ui/app/SeslAlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 364
    .end local v3    # "finalVar4":Landroid/view/View;
    .end local v4    # "finalVar5":Landroid/view/View;
    .end local v5    # "finalVar6":Landroid/view/View;
    .end local v6    # "finalVar7":Landroid/view/View;
    goto :goto_0

    .line 365
    :cond_6
    if-eqz p2, :cond_7

    .line 366
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 369
    :cond_7
    if-eqz v1, :cond_8

    .line 370
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 377
    .end local v2    # "var7":Landroid/widget/ListView;
    :cond_8
    :goto_0
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 19
    .param p1, "var1"    # Landroid/view/ViewGroup;

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 382
    .local v2, "var2":Landroid/content/ContentResolver;
    const/4 v3, 0x1

    .line 384
    .local v3, "var3":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const-string v6, "show_button_background"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 385
    const/4 v6, 0x1

    .local v6, "var4":Z
    goto :goto_0

    .line 387
    .end local v6    # "var4":Z
    :cond_0
    const/4 v6, 0x0

    .line 390
    .restart local v6    # "var4":Z
    :goto_0
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 391
    .local v7, "var10":Landroid/util/TypedValue;
    iget-object v8, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010031

    invoke-virtual {v8, v9, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 392
    const/4 v8, -0x1

    .line 393
    .local v8, "var5":I
    iget v9, v7, Landroid/util/TypedValue;->resourceId:I

    const/4 v10, 0x0

    if-lez v9, :cond_1

    .line 394
    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v11, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 397
    :cond_1
    const v9, 0x7f09005e

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 398
    iget-object v11, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    const/4 v13, 0x2

    const-string v14, "hidden_semSetButtonShapeEnabled"

    const-string v15, "semSetButtonShapeEnabled"

    const/16 v10, 0x1d

    if-le v9, v12, :cond_5

    .line 400
    iget v9, v7, Landroid/util/TypedValue;->resourceId:I

    if-lez v9, :cond_3

    .line 401
    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v10, :cond_2

    move-object v12, v14

    goto :goto_1

    :cond_2
    move-object v12, v15

    :goto_1
    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v11, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v11, v4

    invoke-static {v9, v12, v11}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 403
    :cond_3
    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v10, :cond_4

    move-object v11, v14

    goto :goto_2

    :cond_4
    move-object v11, v15

    :goto_2
    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v12, v5

    invoke-static {v9, v11, v12}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 405
    :cond_5
    if-eqz v6, :cond_6

    .line 406
    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    const v11, 0x7f0800f5

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 411
    :cond_6
    :goto_3
    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/16 v11, 0x8

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_7

    .line 412
    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 413
    const/4 v9, 0x0

    .local v9, "var6":I
    goto :goto_4

    .line 415
    .end local v9    # "var6":I
    :cond_7
    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v12, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v9, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 417
    .local v9, "var7":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_8

    .line 418
    iget v12, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonIconDimen:I

    .line 419
    .local v12, "var6":I
    invoke-virtual {v9, v5, v5, v12, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    iget-object v11, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x0

    move-object/from16 v13, v16

    check-cast v13, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v4, v13, v13, v13}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 423
    .end local v12    # "var6":I
    :cond_8
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 424
    const/4 v4, 0x1

    move v9, v4

    .line 427
    .local v9, "var6":I
    :goto_4
    const v4, 0x7f09005f

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 428
    iget-object v11, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-le v4, v11, :cond_c

    .line 430
    iget v4, v7, Landroid/util/TypedValue;->resourceId:I

    if-lez v4, :cond_a

    .line 431
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v10, :cond_9

    move-object v11, v14

    goto :goto_5

    :cond_9
    move-object v11, v15

    :goto_5
    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v13, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v18, 0x1

    aput-object v12, v13, v18

    invoke-static {v4, v11, v13}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 433
    :cond_a
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v10, :cond_b

    move-object v11, v14

    goto :goto_6

    :cond_b
    move-object v11, v15

    :goto_6
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v13, v5

    invoke-static {v4, v11, v13}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 435
    :cond_c
    if-eqz v6, :cond_d

    .line 436
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    const v11, 0x7f0800f5

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 439
    :cond_d
    :goto_7
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_e

    .line 440
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    .line 442
    :cond_e
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v11, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 444
    .local v4, "var7":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_f

    .line 445
    iget v11, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonIconDimen:I

    .line 446
    .local v11, "var8":I
    invoke-virtual {v4, v5, v5, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 447
    iget-object v12, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v13, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x0

    move-object/from16 v10, v16

    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v13, v10, v10, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 450
    .end local v11    # "var8":I
    :cond_f
    iget-object v10, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    or-int/lit8 v9, v9, 0x2

    .line 454
    .end local v4    # "var7":Landroid/graphics/drawable/Drawable;
    :goto_8
    const v4, 0x7f090060

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 455
    iget-object v10, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-le v4, v10, :cond_13

    .line 457
    iget v4, v7, Landroid/util/TypedValue;->resourceId:I

    if-lez v4, :cond_11

    .line 458
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v10, v11, :cond_10

    goto :goto_9

    :cond_10
    move-object v14, v15

    :goto_9
    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v11, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {v4, v14, v11}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 460
    :cond_11
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v10, v11, :cond_12

    goto :goto_a

    :cond_12
    move-object v14, v15

    :goto_a
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v11, v5

    invoke-static {v4, v14, v11}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 462
    :cond_13
    if-eqz v6, :cond_14

    .line 463
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v10, 0x7f0800f5

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 466
    :cond_14
    :goto_b
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_15

    .line 467
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_c

    .line 469
    :cond_15
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v10, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 471
    .local v4, "var11":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_16

    .line 472
    iget v8, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonIconDimen:I

    .line 473
    invoke-virtual {v4, v5, v5, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 474
    iget-object v10, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v11, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    check-cast v12, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11, v12, v12, v12}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 477
    :cond_16
    iget-object v10, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 478
    or-int/lit8 v9, v9, 0x4

    .line 481
    .end local v4    # "var11":Landroid/graphics/drawable/Drawable;
    :goto_c
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/ui/app/SeslAlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 482
    const/4 v4, 0x1

    if-ne v9, v4, :cond_17

    .line 483
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {v0, v4}, Lcom/samsung/android/ui/app/SeslAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_d

    .line 484
    :cond_17
    const/4 v4, 0x2

    if-ne v9, v4, :cond_18

    .line 485
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {v0, v4}, Lcom/samsung/android/ui/app/SeslAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_d

    .line 486
    :cond_18
    const/4 v4, 0x4

    if-ne v9, v4, :cond_19

    .line 487
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {v0, v4}, Lcom/samsung/android/ui/app/SeslAlertController;->centerButton(Landroid/widget/Button;)V

    .line 492
    :cond_19
    :goto_d
    if-eqz v9, :cond_1a

    .line 493
    const/4 v4, 0x1

    .local v4, "var13":Z
    goto :goto_e

    .line 495
    .end local v4    # "var13":Z
    :cond_1a
    const/4 v4, 0x0

    .line 498
    .restart local v4    # "var13":Z
    :goto_e
    if-nez v4, :cond_1b

    .line 499
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 502
    :cond_1b
    iget-object v10, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1c

    .line 503
    const/4 v4, 0x1

    goto :goto_f

    .line 505
    :cond_1c
    const/4 v4, 0x0

    .line 509
    :goto_f
    iget-object v10, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1d

    .line 510
    const/4 v10, 0x1

    .local v10, "var12":Z
    goto :goto_10

    .line 512
    .end local v10    # "var12":Z
    :cond_1d
    const/4 v10, 0x0

    .line 515
    .restart local v10    # "var12":Z
    :goto_10
    iget-object v11, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_1e

    .line 516
    const/4 v3, 0x0

    .line 519
    :cond_1e
    iget-object v11, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x7f0901ba

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 520
    .local v11, "var9":Landroid/view/View;
    if-eqz v11, :cond_21

    if-eqz v4, :cond_1f

    if-nez v10, :cond_20

    :cond_1f
    if-eqz v4, :cond_21

    if-eqz v3, :cond_21

    .line 521
    :cond_20
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :cond_21
    iget-object v12, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v13, 0x7f0901b9

    invoke-virtual {v12, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 525
    if-eqz v11, :cond_22

    if-eqz v10, :cond_22

    if-eqz v3, :cond_22

    .line 526
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_22
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "var1"    # Landroid/view/ViewGroup;

    .line 533
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setFocusable(Z)V

    .line 535
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 536
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    .line 537
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    .line 538
    .local v0, "var2":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 539
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 540
    .local v1, "var3":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 543
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    iget-object v4, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->removeView(Landroid/view/View;)V

    .line 545
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 546
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Landroid/view/ViewGroup;

    .line 547
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 548
    .local v2, "var4":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 549
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 550
    .end local v2    # "var4":I
    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 556
    .end local v1    # "var3":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "var1"    # Landroid/view/ViewGroup;

    .line 560
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mView:Landroid/view/View;

    .line 561
    .local v0, "var2":Landroid/view/View;
    const/4 v1, 0x0

    .line 562
    .local v1, "var3":Z
    if-nez v0, :cond_1

    .line 563
    iget v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewLayoutResId:I

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_0
    const/4 v0, 0x0

    .line 570
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 571
    const/4 v1, 0x1

    .line 574
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/ui/app/SeslAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 575
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 578
    :cond_4
    if-eqz v1, :cond_8

    .line 579
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 580
    .local v2, "var4":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-boolean v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    .line 582
    iget v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 585
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_7

    .line 586
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 587
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 589
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iput v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 592
    .end local v2    # "var4":Landroid/widget/FrameLayout;
    :cond_7
    :goto_1
    goto :goto_2

    .line 593
    :cond_8
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 596
    :goto_2
    return-void
.end method

.method private setupPaddings()V
    .locals 16

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 601
    .local v1, "var1":Landroid/view/View;
    const v2, 0x7f09020d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 602
    .local v2, "var2":Landroid/view/View;
    const v3, 0x7f0901a7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 603
    .local v3, "var3":Landroid/view/View;
    const v4, 0x7f090061

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 604
    .local v4, "var4":Landroid/view/View;
    iget-object v5, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 605
    .local v5, "var5":Landroid/content/res/Resources;
    const v6, 0x7f09007e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 606
    .local v6, "var6":Landroid/view/ViewGroup;
    const v7, 0x7f090210

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 607
    .local v7, "var7":Landroid/view/View;
    const v8, 0x7f09007a

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 608
    .local v8, "var8":Landroid/view/View;
    const/4 v9, 0x1

    .line 610
    .local v9, "var9":Z
    const/16 v10, 0x8

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v11

    if-eq v11, v10, :cond_0

    .line 611
    const/4 v11, 0x1

    .local v11, "var10":Z
    goto :goto_0

    .line 613
    .end local v11    # "var10":Z
    :cond_0
    const/4 v11, 0x0

    .line 617
    .restart local v11    # "var10":Z
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_1

    .line 618
    const/4 v12, 0x1

    .local v12, "var11":Z
    goto :goto_1

    .line 620
    .end local v12    # "var11":Z
    :cond_1
    const/4 v12, 0x0

    .line 624
    .restart local v12    # "var11":Z
    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_2

    .line 625
    const/4 v13, 0x1

    .local v13, "var12":Z
    goto :goto_2

    .line 627
    .end local v13    # "var12":Z
    :cond_2
    const/4 v13, 0x0

    .line 630
    .restart local v13    # "var12":Z
    :goto_2
    iget-object v7, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mCustomTitleView:Landroid/view/View;

    .line 631
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v10, :cond_4

    .line 632
    :cond_3
    const/4 v9, 0x0

    .line 635
    :cond_4
    const/4 v10, 0x0

    if-eqz v11, :cond_5

    if-nez v12, :cond_5

    if-eqz v13, :cond_6

    :cond_5
    if-nez v9, :cond_6

    .line 636
    const v14, 0x7f070206

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v1, v10, v14, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 638
    :cond_6
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 641
    :goto_3
    if-eqz v2, :cond_8

    .line 642
    const v14, 0x7f070202

    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    if-nez v13, :cond_7

    .line 643
    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v15, v10, v14, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 645
    :cond_7
    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v0, 0x7f070205

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v15, v10, v14, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 649
    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    .line 650
    const v0, 0x7f0701ec

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v14, 0x7f0701eb

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v15, 0x7f0701e7

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v3, v0, v10, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 653
    :cond_9
    if-eqz v4, :cond_a

    .line 654
    const v0, 0x7f0701ef

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v15, 0x7f0701ee

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v4, v14, v10, v0, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 657
    :cond_a
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "var1"    # Landroid/view/ViewGroup;

    .line 661
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mCustomTitleView:Landroid/view/View;

    const v1, 0x7f09020d

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 663
    .local v0, "var2":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 664
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 665
    .end local v0    # "var2":Landroid/view/ViewGroup$LayoutParams;
    goto/16 :goto_1

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    .line 667
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mShowTitle:Z

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    .line 669
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070207

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/ui/app/SeslAlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 671
    iget v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconId:I

    .line 672
    .local v0, "var3":I
    if-eqz v0, :cond_1

    .line 673
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 676
    .local v1, "var4":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 677
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 679
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 680
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    .end local v0    # "var3":I
    .end local v1    # "var4":Landroid/graphics/drawable/Drawable;
    :goto_0
    goto :goto_1

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 690
    :goto_1
    return-void
.end method

.method private setupView()V
    .locals 25

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 695
    .local v1, "var1":Landroid/view/View;
    new-instance v2, Lcom/samsung/android/ui/app/SeslAlertController$6;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/ui/app/SeslAlertController$6;-><init>(Lcom/samsung/android/ui/app/SeslAlertController;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 712
    const v2, 0x7f090210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 713
    .local v3, "var2":Landroid/view/View;
    const v4, 0x7f09007a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 714
    .local v5, "var3":Landroid/view/View;
    const v6, 0x7f090061

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 715
    .local v7, "var4":Landroid/view/View;
    const v8, 0x7f09007e

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 716
    .local v8, "var5":Landroid/view/ViewGroup;
    invoke-direct {v0, v8}, Lcom/samsung/android/ui/app/SeslAlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 717
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 718
    .local v2, "var6":Landroid/view/View;
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 719
    .local v4, "var7":Landroid/view/View;
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 720
    .local v6, "var8":Landroid/view/View;
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/ui/app/SeslAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 721
    .local v9, "var19":Landroid/view/ViewGroup;
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/ui/app/SeslAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v10

    .line 722
    .local v10, "var20":Landroid/view/ViewGroup;
    invoke-direct {v0, v6, v7}, Lcom/samsung/android/ui/app/SeslAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v11

    .line 723
    .local v11, "var18":Landroid/view/ViewGroup;
    invoke-direct {v0, v10}, Lcom/samsung/android/ui/app/SeslAlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 724
    invoke-direct {v0, v11}, Lcom/samsung/android/ui/app/SeslAlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 725
    invoke-direct {v0, v9}, Lcom/samsung/android/ui/app/SeslAlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 727
    const/16 v12, 0x8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v13

    if-eq v13, v12, :cond_0

    .line 728
    const/4 v13, 0x1

    .local v13, "var9":Z
    goto :goto_0

    .line 730
    .end local v13    # "var9":Z
    :cond_0
    const/4 v13, 0x0

    .line 734
    .restart local v13    # "var9":Z
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_1

    .line 735
    const/4 v14, 0x1

    .local v14, "var10":B
    goto :goto_1

    .line 737
    .end local v14    # "var10":B
    :cond_1
    const/4 v14, 0x0

    .line 741
    .restart local v14    # "var10":B
    :goto_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v15

    if-eq v15, v12, :cond_2

    .line 742
    const/4 v15, 0x1

    .local v15, "var11":Z
    goto :goto_2

    .line 744
    .end local v15    # "var11":Z
    :cond_2
    const/4 v15, 0x0

    .line 748
    .restart local v15    # "var11":Z
    :goto_2
    if-eqz v3, :cond_3

    move-object/from16 v16, v2

    .end local v2    # "var6":Landroid/view/View;
    .local v16, "var6":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v12, :cond_4

    .line 749
    const/4 v2, 0x1

    .local v2, "var12":Z
    goto :goto_3

    .line 748
    .end local v16    # "var6":Landroid/view/View;
    .local v2, "var6":Landroid/view/View;
    :cond_3
    move-object/from16 v16, v2

    .line 751
    .end local v2    # "var6":Landroid/view/View;
    .restart local v16    # "var6":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    .line 755
    .local v2, "var12":Z
    :goto_3
    if-eqz v5, :cond_5

    move-object/from16 v17, v3

    .end local v3    # "var2":Landroid/view/View;
    .local v17, "var2":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v12, :cond_6

    .line 756
    const/4 v3, 0x1

    .local v3, "var13":Z
    goto :goto_4

    .line 755
    .end local v17    # "var2":Landroid/view/View;
    .local v3, "var2":Landroid/view/View;
    :cond_5
    move-object/from16 v17, v3

    .line 758
    .end local v3    # "var2":Landroid/view/View;
    .restart local v17    # "var2":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .line 761
    .local v3, "var13":Z
    :goto_4
    iget-object v12, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mCustomTitleView:Landroid/view/View;

    .line 763
    .end local v17    # "var2":Landroid/view/View;
    .local v12, "var2":Landroid/view/View;
    if-eqz v12, :cond_7

    move-object/from16 v17, v4

    .end local v4    # "var7":Landroid/view/View;
    .local v17, "var7":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v4

    move-object/from16 v18, v5

    const/16 v5, 0x8

    .end local v5    # "var3":Landroid/view/View;
    .local v18, "var3":Landroid/view/View;
    if-eq v4, v5, :cond_8

    .line 764
    const/4 v4, 0x1

    .local v4, "var14":Z
    goto :goto_5

    .line 763
    .end local v17    # "var7":Landroid/view/View;
    .end local v18    # "var3":Landroid/view/View;
    .local v4, "var7":Landroid/view/View;
    .restart local v5    # "var3":Landroid/view/View;
    :cond_7
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 766
    .end local v4    # "var7":Landroid/view/View;
    .end local v5    # "var3":Landroid/view/View;
    .restart local v17    # "var7":Landroid/view/View;
    .restart local v18    # "var3":Landroid/view/View;
    :cond_8
    const/4 v4, 0x0

    .line 769
    .local v4, "var14":Z
    :goto_5
    if-eqz v13, :cond_9

    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    if-eqz v4, :cond_b

    .line 770
    :cond_a
    invoke-direct {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertController;->adjustParentPanelPadding(Landroid/view/View;)V

    .line 773
    :cond_b
    if-eqz v13, :cond_c

    if-eqz v2, :cond_c

    if-nez v3, :cond_c

    .line 774
    invoke-direct {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertController;->adjustTopPanelPadding(Landroid/view/View;)V

    .line 777
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController;->adjustButtonsPadding()V

    .line 778
    if-eqz v14, :cond_e

    .line 779
    iget-object v5, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    .line 780
    .local v5, "var15":Lcom/samsung/android/ui/widget/SeslNestedScrollView;
    if-eqz v5, :cond_d

    .line 781
    move-object/from16 v19, v1

    const/4 v1, 0x1

    .end local v1    # "var1":Landroid/view/View;
    .local v19, "var1":Landroid/view/View;
    invoke-virtual {v5, v1}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->setClipToPadding(Z)V

    goto :goto_6

    .line 780
    .end local v19    # "var1":Landroid/view/View;
    .restart local v1    # "var1":Landroid/view/View;
    :cond_d
    move-object/from16 v19, v1

    .end local v1    # "var1":Landroid/view/View;
    .restart local v19    # "var1":Landroid/view/View;
    goto :goto_6

    .line 778
    .end local v5    # "var15":Lcom/samsung/android/ui/widget/SeslNestedScrollView;
    .end local v19    # "var1":Landroid/view/View;
    .restart local v1    # "var1":Landroid/view/View;
    :cond_e
    move-object/from16 v19, v1

    .line 785
    .end local v1    # "var1":Landroid/view/View;
    .restart local v19    # "var1":Landroid/view/View;
    :goto_6
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    .line 786
    .local v1, "var16":Landroid/widget/ListView;
    instance-of v5, v1, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    const/16 v20, 0x0

    if-eqz v5, :cond_10

    .line 787
    move-object v5, v1

    check-cast v5, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    move-object/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "var16":Landroid/widget/ListView;
    .local v21, "var16":Landroid/widget/ListView;
    if-ne v14, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_7

    :cond_f
    move/from16 v1, v20

    :goto_7
    invoke-virtual {v5, v1, v15}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setHasDecor(ZZ)V

    goto :goto_8

    .line 786
    .end local v21    # "var16":Landroid/widget/ListView;
    .restart local v1    # "var16":Landroid/widget/ListView;
    :cond_10
    move-object/from16 v21, v1

    .line 790
    .end local v1    # "var16":Landroid/widget/ListView;
    .restart local v21    # "var16":Landroid/widget/ListView;
    :goto_8
    if-nez v13, :cond_14

    .line 791
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    .line 792
    .local v1, "var17":Ljava/lang/Object;
    if-nez v1, :cond_11

    .line 793
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    .line 796
    :cond_11
    if-eqz v1, :cond_13

    .line 798
    if-eqz v15, :cond_12

    .line 799
    const/4 v5, 0x2

    .local v5, "var22":B
    goto :goto_9

    .line 801
    .end local v5    # "var22":B
    :cond_12
    const/4 v5, 0x0

    .line 804
    .restart local v5    # "var22":B
    :goto_9
    move/from16 v22, v2

    .end local v2    # "var12":Z
    .local v22, "var12":Z
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    move-object/from16 v23, v1

    .end local v1    # "var17":Ljava/lang/Object;
    .local v23, "var17":Ljava/lang/Object;
    or-int v1, v5, v14

    move/from16 v24, v3

    .end local v3    # "var13":Z
    .local v24, "var13":Z
    const/4 v3, 0x3

    invoke-direct {v0, v10, v2, v1, v3}, Lcom/samsung/android/ui/app/SeslAlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    goto :goto_a

    .line 796
    .end local v5    # "var22":B
    .end local v22    # "var12":Z
    .end local v23    # "var17":Ljava/lang/Object;
    .end local v24    # "var13":Z
    .restart local v1    # "var17":Ljava/lang/Object;
    .restart local v2    # "var12":Z
    .restart local v3    # "var13":Z
    :cond_13
    move-object/from16 v23, v1

    move/from16 v22, v2

    move/from16 v24, v3

    .end local v1    # "var17":Ljava/lang/Object;
    .end local v2    # "var12":Z
    .end local v3    # "var13":Z
    .restart local v22    # "var12":Z
    .restart local v23    # "var17":Ljava/lang/Object;
    .restart local v24    # "var13":Z
    goto :goto_a

    .line 790
    .end local v22    # "var12":Z
    .end local v23    # "var17":Ljava/lang/Object;
    .end local v24    # "var13":Z
    .restart local v2    # "var12":Z
    .restart local v3    # "var13":Z
    :cond_14
    move/from16 v22, v2

    move/from16 v24, v3

    .line 808
    .end local v2    # "var12":Z
    .end local v3    # "var13":Z
    .restart local v22    # "var12":Z
    .restart local v24    # "var13":Z
    :goto_a
    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    .line 809
    .end local v21    # "var16":Landroid/widget/ListView;
    .local v1, "var16":Landroid/widget/ListView;
    if-eqz v1, :cond_18

    .line 810
    iget-object v2, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 811
    .local v2, "var21":Landroid/widget/ListAdapter;
    if-eqz v2, :cond_17

    .line 812
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 814
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_16

    .line 815
    const-class v3, Landroid/widget/AdapterView;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v21, v4

    .end local v4    # "var14":Z
    .local v21, "var14":Z
    const/16 v4, 0x1d

    if-lt v5, v4, :cond_15

    const-string v4, "hidden_semSetBottomColor"

    goto :goto_b

    :cond_15
    const-string v4, "semSetBottomColor"

    :goto_b
    move-object/from16 v23, v6

    const/4 v5, 0x1

    .end local v6    # "var8":Landroid/view/View;
    .local v23, "var8":Landroid/view/View;
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v20

    invoke-static {v3, v2, v4, v6}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 814
    .end local v21    # "var14":Z
    .end local v23    # "var8":Landroid/view/View;
    .restart local v4    # "var14":Z
    .restart local v6    # "var8":Landroid/view/View;
    :cond_16
    move/from16 v21, v4

    move-object/from16 v23, v6

    .line 817
    .end local v4    # "var14":Z
    .end local v6    # "var8":Landroid/view/View;
    .restart local v21    # "var14":Z
    .restart local v23    # "var8":Landroid/view/View;
    :goto_c
    iget v3, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mCheckedItem:I

    .line 818
    .local v3, "var23":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_19

    .line 819
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 820
    iget-object v4, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070272

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_d

    .line 811
    .end local v3    # "var23":I
    .end local v21    # "var14":Z
    .end local v23    # "var8":Landroid/view/View;
    .restart local v4    # "var14":Z
    .restart local v6    # "var8":Landroid/view/View;
    :cond_17
    move/from16 v21, v4

    move-object/from16 v23, v6

    .end local v4    # "var14":Z
    .end local v6    # "var8":Landroid/view/View;
    .restart local v21    # "var14":Z
    .restart local v23    # "var8":Landroid/view/View;
    goto :goto_d

    .line 809
    .end local v2    # "var21":Landroid/widget/ListAdapter;
    .end local v21    # "var14":Z
    .end local v23    # "var8":Landroid/view/View;
    .restart local v4    # "var14":Z
    .restart local v6    # "var8":Landroid/view/View;
    :cond_18
    move/from16 v21, v4

    move-object/from16 v23, v6

    .line 825
    .end local v4    # "var14":Z
    .end local v6    # "var8":Landroid/view/View;
    .restart local v21    # "var14":Z
    .restart local v23    # "var8":Landroid/view/View;
    :cond_19
    :goto_d
    return-void
.end method

.method public static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 5
    .param p0, "var0"    # Landroid/content/Context;

    .line 828
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 829
    .local v0, "var1":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 830
    .local v1, "var4":Landroid/content/res/Resources$Theme;
    const v2, 0x7f04002a

    .line 831
    .local v2, "var2":I
    const/4 v3, 0x1

    .line 832
    .local v3, "var3":Z
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 833
    iget v4, v0, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_0

    .line 834
    const/4 v3, 0x0

    .line 837
    :cond_0
    return v3
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "var1"    # I

    .line 841
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    .line 842
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    .line 843
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositive:Landroid/widget/Button;

    :goto_0
    return-object v0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "var1"    # I

    .line 853
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 854
    .local v0, "var2":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 855
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 863
    invoke-direct {p0}, Lcom/samsung/android/ui/app/SeslAlertController;->selectContentView()I

    move-result v0

    .line 864
    .local v0, "var1":I
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 865
    invoke-direct {p0}, Lcom/samsung/android/ui/app/SeslAlertController;->setupView()V

    .line 866
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/KeyEvent;

    .line 869
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    .line 871
    .local v0, "var3":Lcom/samsung/android/ui/widget/SeslNestedScrollView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    const/4 v1, 0x1

    .local v1, "var4":Z
    goto :goto_0

    .line 874
    .end local v1    # "var4":Z
    :cond_0
    const/4 v1, 0x0

    .line 877
    .restart local v1    # "var4":Z
    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/KeyEvent;

    .line 881
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mScrollView:Lcom/samsung/android/ui/widget/SeslNestedScrollView;

    .line 883
    .local v0, "var3":Lcom/samsung/android/ui/widget/SeslNestedScrollView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/widget/SeslNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    const/4 v1, 0x1

    .local v1, "var4":Z
    goto :goto_0

    .line 886
    .end local v1    # "var4":Z
    :cond_0
    const/4 v1, 0x0

    .line 889
    .restart local v1    # "var4":Z
    :goto_0
    return v1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/CharSequence;
    .param p3, "var3"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "var4"    # Landroid/os/Message;
    .param p5, "var5"    # Landroid/graphics/drawable/Drawable;

    .line 893
    move-object v0, p4

    .line 894
    .local v0, "var6":Landroid/os/Message;
    if-nez p4, :cond_0

    .line 895
    move-object v0, p4

    .line 896
    if-eqz p3, :cond_0

    .line 897
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 901
    :cond_0
    const/4 v1, -0x3

    if-eq p1, v1, :cond_3

    .line 902
    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    .line 903
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 907
    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 908
    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 909
    iput-object p5, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 904
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Button does not exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :cond_2
    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 912
    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 913
    iput-object p5, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 916
    :cond_3
    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 917
    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 918
    iput-object p5, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 921
    :goto_0
    return-void
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 924
    iput p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mButtonPanelLayoutHint:I

    .line 925
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .line 928
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mCustomTitleView:Landroid/view/View;

    .line 929
    return-void
.end method

.method public setIcon(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 934
    iput p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconId:I

    .line 935
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    .line 936
    .local v0, "var2":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 937
    if-eqz p1, :cond_0

    .line 938
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 941
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 945
    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 949
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 950
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconId:I

    .line 951
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    .line 952
    .local v1, "var2":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 953
    if-eqz p1, :cond_0

    .line 954
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 957
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 961
    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .line 964
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 965
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mMessageView:Landroid/widget/TextView;

    .line 966
    .local v0, "var2":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .line 973
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 974
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mTitleView:Landroid/widget/TextView;

    .line 975
    .local v0, "var2":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mView:Landroid/view/View;

    .line 983
    iput p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewLayoutResId:I

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingSpecified:Z

    .line 985
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 988
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mView:Landroid/view/View;

    .line 989
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewLayoutResId:I

    .line 990
    iput-boolean v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingSpecified:Z

    .line 991
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .line 994
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mView:Landroid/view/View;

    .line 995
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewLayoutResId:I

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingSpecified:Z

    .line 997
    iput p2, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingLeft:I

    .line 998
    iput p3, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingTop:I

    .line 999
    iput p4, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingRight:I

    .line 1000
    iput p5, p0, Lcom/samsung/android/ui/app/SeslAlertController;->mViewSpacingBottom:I

    .line 1001
    return-void
.end method
