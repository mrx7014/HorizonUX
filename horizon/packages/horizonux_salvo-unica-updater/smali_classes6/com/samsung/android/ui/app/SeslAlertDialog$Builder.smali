.class public Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
.super Ljava/lang/Object;
.source "SeslAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/app/SeslAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lcom/samsung/android/ui/app/SeslAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    .line 167
    iput p2, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->mTheme:I

    .line 168
    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/ui/app/SeslAlertDialog;
    .locals 3

    .line 418
    new-instance v0, Lcom/samsung/android/ui/app/SeslAlertDialog;

    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 419
    .local v0, "dialog":Lcom/samsung/android/ui/app/SeslAlertDialog;
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v2, v0, Lcom/samsung/android/ui/app/SeslAlertDialog;->mAlert:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->apply(Lcom/samsung/android/ui/app/SeslAlertController;)V

    .line 420
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setCancelable(Z)V

    .line 421
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 422
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 425
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 426
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 429
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 302
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 303
    return-object p0
.end method

.method public setCancelable(Z)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 269
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCancelable:Z

    .line 270
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 308
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 310
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 187
    return-object p0
.end method

.method public setIcon(I)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIconId:I

    .line 202
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 207
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .line 211
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 212
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 213
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIconId:I

    .line 214
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mForceInverseBackground:Z

    .line 405
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 289
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 290
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 291
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 295
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 297
    return-object p0
.end method

.method public setMessage(I)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 192
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 196
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 197
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 314
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 315
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 316
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItems:[Z

    .line 317
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    .line 318
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 330
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 331
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p4, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 332
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    .line 335
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 322
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 323
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 324
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItems:[Z

    .line 325
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    .line 326
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 235
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 237
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 243
    return-object p0
.end method

.method public setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 248
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 252
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 253
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 254
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 258
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 259
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 260
    return-object p0
.end method

.method public setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 265
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 274
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 275
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 280
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 372
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 373
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 284
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 285
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 220
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 226
    return-object p0
.end method

.method public setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 231
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .line 409
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 410
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 339
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 340
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 341
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 342
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    .line 343
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 347
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 348
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p4, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 349
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 350
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    .line 352
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 364
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 365
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 366
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 367
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    .line 368
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 358
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 359
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    .line 360
    return-object p0
.end method

.method public setTitle(I)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .line 176
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 177
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 182
    return-object p0
.end method

.method public setView(I)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .line 377
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    .line 378
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    .line 379
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 380
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    .line 385
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    .line 386
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 387
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    .line 393
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    .line 394
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 395
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p2, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingLeft:I

    .line 396
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p3, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingTop:I

    .line 397
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p4, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingRight:I

    .line 398
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->P:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput p5, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingBottom:I

    .line 399
    return-object p0
.end method

.method public show()Lcom/samsung/android/ui/app/SeslAlertDialog;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->create()Lcom/samsung/android/ui/app/SeslAlertDialog;

    move-result-object v0

    .line 434
    .local v0, "dialog":Lcom/samsung/android/ui/app/SeslAlertDialog;
    invoke-virtual {v0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->show()V

    .line 435
    return-object v0
.end method
